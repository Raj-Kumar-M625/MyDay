﻿CREATE TABLE [dbo].[SqliteIssueReturn]
(
	[Id] BIGINT NOT NULL PRIMARY KEY IDENTITY,
	[BatchId] BIGINT NOT NULL REFERENCES dbo.SqliteActionBatch,
	[EmployeeId] BIGINT NOT NULL,

	[IsNewEntity] BIT NOT NULL,
	[IsNewAgreement] BIT NOT NULL,

	[EntityId] BIGINT NOT NULL,
	[EntityName] NVARCHAR(50) NOT NULL,
	[AgreementId] BIGINT NOT NULL DEFAULT 0,
	[Agreement] NVARCHAR(50) NOT NULL,
	[TranType] NVARCHAR(50) NOT NULL,
	[ItemId] BIGINT NOT NULL,
	[ItemCode] NVARCHAR(100) NOT NULL,
	[SlipNumber] NVARCHAR(50) NOT NULL DEFAULT '',
	[Acreage] DECIMAL(19,2) NOT NULL DEFAULT 0,
	[Quantity] INT NOT NULL,
	[ItemRate] DECIMAL(19,2) NOT NULL DEFAULT 0,
	[IssueReturnDate] DATETIME2 NOT NULL,

	[ActivityId] NVARCHAR(50) NOT NULL DEFAULT '',
	[ParentReferenceId]  NVARCHAR(50) NOT NULL DEFAULT '',

	[IsProcessed] BIT NOT NULL DEFAULT 0,  
	[IssueReturnId] BIGINT NOT NULL DEFAULT 0,
	[DateCreated] DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME(),
	[DateUpdated] DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME()
)
