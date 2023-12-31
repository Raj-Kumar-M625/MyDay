﻿CREATE TABLE [dbo].[SqliteSurvey]
(
	[Id] BIGINT NOT NULL PRIMARY KEY IDENTITY,
	[BatchId] BIGINT NOT NULL REFERENCES dbo.SqliteActionBatch,
	[EmployeeId] BIGINT NOT NULL,

	[IsNewEntity] BIT NOT NULL,
	[EntityId] BIGINT NOT NULL,
	[EntityName] NVARCHAR(50) NOT NULL,

	[SeasonName] NVARCHAR(50) NOT NULL,
	[SowingType] NVARCHAR(50) NOT NULL,
	[Acreage] DECIMAL(19,2) NOT NULL,
	[SowingDate] DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME(),

	[MajorCrop] NVARCHAR(50) NOT NULL DEFAULT '',
	[LastCrop] NVARCHAR(50) NOT NULL DEFAULT '',
	[WaterSource] NVARCHAR(50) NOT NULL DEFAULT '',
	[SoilType] NVARCHAR(50) NOT NULL DEFAULT '',
	
	[SurveyDate] DATETIME2 NOT NULL,
	[ActivityId] NVARCHAR(50) NOT NULL DEFAULT '',
	[PhoneDbId] NVARCHAR(50) NOT NULL, 
	[ParentReferenceId]  NVARCHAR(50) NOT NULL DEFAULT '',

	[IsProcessed] BIT NOT NULL DEFAULT 0,  
	[EntitySurveyId] BIGINT NOT NULL DEFAULT 0,
	[DateCreated] DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME(),
	[DateUpdated] DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME()
)
