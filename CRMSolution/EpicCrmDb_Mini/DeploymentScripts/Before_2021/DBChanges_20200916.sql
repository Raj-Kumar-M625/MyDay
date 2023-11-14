﻿-- Sep 16 2020
update dbo.CodeTable
SET CodeValue='Rejected'
WHERE CodeType = 'BankDetailStatus'
and CodeValue = 'Not approved'
and IsActive = 1
GO

UPDATE dbo.IssueReturn
Set Status = 'Rejected'
WHERE Status = 'Not Approved'
GO

update dbo.IssueReturn
Set AppliedQuantity = 0
WHERE Status = 'Rejected'
GO

CREATE TABLE [dbo].[DWSAudit](
	[Id] BIGINT NOT NULL PRIMARY KEY Identity,
	[STRTagId] [bigint] NOT NULL,
	[STRId] [bigint] NOT NULL,
	[DWSId] [bigint] NOT NULL,
	[DWSNumber] [bigint] NOT NULL,
	[DWSDate] [datetime2](7) NOT NULL,
	[BagCount] [bigint] NOT NULL,
	[FilledBagsWeightKg] [decimal](19, 2) NOT NULL,
	[EmptyBagsWeightKg] [decimal](19, 2) NOT NULL,
	[EntityId] [bigint] NOT NULL,
	[AgreementId] [bigint] NOT NULL,
	[Agreement] [nvarchar](50) NOT NULL,
	[EntityWorkFlowDetailId] [bigint] NOT NULL,
	[TypeName] [nvarchar](50) NOT NULL,
	[TagName] [nvarchar](50) NOT NULL,

	[CreatedBy] [nvarchar](50) NOT NULL DEFAULT (''),
	[DateCreated] [datetime2](7) NOT NULL DEFAULT (sysutcdatetime())
)
GO

ALTER TABLE dbo.EntityAgreement
ADD ActivityId BIGINT NOT NULL DEFAULT 0
GO

UPDATE dbo.EntityBankDetail
SET [Status] = 'Rejected'
where [Status] = 'Not Approved'
GO

ALTER PROCEDURE [dbo].[ProcessSqliteAgreementData]
	@batchId BIGINT,
	@agreementDefaultStatus NVARCHAR(50)
AS
BEGIN

	-- if batch is already processed - return	
	IF NOT EXISTS(SELECT 1 FROM dbo.SqliteActionBatch 
			WHERE Id = @batchId AND AgreementsSaved > 0
			AND BatchProcessed = 0)
	BEGIN
		RETURN;
	END

	-- First create required records in Day Table
	INSERT INTO dbo.[Day]
	([DATE])
	SELECT DISTINCT CAST(e.[AgreementDate] AS [Date])
	FROM dbo.SqliteAgreement e
	LEFT JOIN dbo.[Day] d on CAST(e.[AgreementDate] AS [Date]) = d.[DATE]
	WHERE e.BatchId = @batchId
	AND d.[DATE] IS NULL

	-- Fill Entity Id in Agreements that belong to new entity created on phone.
	Update dbo.SqliteAgreement
	SET EntityId = en.EntityId,
	EntityName = en.EntityName,
	DateUpdated = SYSUTCDATETIME()
	FROM dbo.SqliteAgreement ag
	INNER JOIN dbo.SqliteEntity en on ag.ParentReferenceId = en.PhoneDbId
	AND ag.BatchId = @batchId
	AND ag.IsNewEntity = 1
	AND ag.IsProcessed = 0

	-- store SqliteAgreement Rows in in-memory table
	DECLARE @sqliteAgg TABLE (ID BIGINT Identity, RowId BIGINT)
	INSERT INTO @sqliteAgg
	(RowId)
	SELECT Id FROM dbo.SqliteAgreement
	WHERE BatchId = @batchId
	AND isProcessed = 0
	ORDER BY Id

	-- Count the number of Agreements
	DECLARE @aggCount BIGINT
	SELECT @aggCount = count(*)	FROM @sqliteAgg

	-- Select Agreement Ids
	DECLARE @aggNum TABLE (Id BIGINT Identity, AgreementNumber NVARCHAR(50))

	UPDATE dbo.AgreementNumber
	SET ISUsed = 1,
	UsedTimeStamp = SYSUTCDATETIME()
	OUTPUT deleted.AgreementNumber INTO @aggNum
	FROM dbo.AgreementNumber an
	INNER JOIN 
	(
		SELECT TOP(@aggCount) Id
		FROM dbo.AgreementNumber WITH (READPAST)
		WHERE ISUsed = 0
		ORDER BY [Sequence]
	) an2 on an.Id = an2.Id


	DECLARE @insertTable TABLE (EntityAgreementId BIGINT, AgreementNumber NVARCHAR(50))

	-- Insert rows in dbo.EntityAgreement
	INSERT into dbo.EntityAgreement
	(EntityId, WorkflowSeasonId, AgreementNumber, LandSizeInAcres, RatePerKg,
	[Status], CreatedBy, UpdatedBy, ActivityId)
	OUTPUT inserted.Id, inserted.AgreementNumber INTO @insertTable
	SELECT ag.EntityId, wfs.Id, agg.AgreementNumber, ag.Acreage, wfs.RatePerKg,
	@agreementDefaultStatus, 'ProcessSqliteAgreementData', 'ProcessSqliteAgreementData', 
	
	CASE WHEN sqa.ActivityId is NULL THEN 0 ELSE sqa.ActivityId END

	FROM dbo.SqliteAgreement ag
	INNER JOIN dbo.WorkflowSeason wfs on wfs.TypeName = ag.TypeName
	and wfs.IsOpen = 1
	INNER JOIN @sqliteAgg sagg ON ag.Id = sagg.RowId
	INNER JOIN @aggNum agg ON agg.Id = sagg.ID

	LEFT JOIN dbo.SqliteAction sqa on sqa.[At] = ag.AgreementDate
	AND sqa.EmployeeId = ag.EmployeeId
	AND sqa.PhoneDbId = ag.ActivityId

	-- Now update EntityAgreementId back in SqliteAgreement 
	Update dbo.SqliteAgreement
	SET EntityAgreementId = m3.EntityAgreementId,
	IsProcessed = 1,
	DateUpdated = SYSUTCDATETIME()
	FROM dbo.SqliteAgreement sagg
	INNER JOIN @sqliteAgg m1 ON sagg.Id = m1.RowId
	INNER JOIN @aggNum m2 on m1.Id = m2.Id
	INNER JOIN @insertTable m3 on m3.AgreementNumber = m2.AgreementNumber
END
GO

ALTER TABLE dbo.TenantEmployee
ADD TestFeatureEnabled BIT NOT NULL DEFAULT 0
GO