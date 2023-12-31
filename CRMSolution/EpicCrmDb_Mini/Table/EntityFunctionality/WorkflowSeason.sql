﻿CREATE TABLE [dbo].[WorkflowSeason]
(
	[Id] BIGINT NOT NULL PRIMARY KEY IDENTITY,
	[SeasonName] NVARCHAR(50) NOT NULL,
	[TypeName] NVARCHAR(50) NOT NULL, -- could be crop name
	[StartDate] DATE NOT NULL,
	[EndDate] DATE NOT NULL,
	[IsOpen] BIT NOT NULL DEFAULT 1,
	[MaxAgreementsPerEntity] INT NOT NULL DEFAULT 1,
	[RatePerKg] DECIMAL(19,2) NOT NULL DEFAULT 0,
	[ReferenceId] NVARCHAR(50) NULL, -- not used now
	[Description] NVARCHAR(128) NOT NULL DEFAULT '',
	[DateCreated] DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME(),
	[DateUpdated] DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME()
)
