﻿CREATE TABLE [dbo].[SqliteEntityWorkFlow]
(
	[Id] BIGINT NOT NULL PRIMARY KEY IDENTITY, 
	[ActivityId] BIGINT NOT NULL REFERENCES dbo.Activity,
	[EntityId] BIGINT NOT NULL DEFAULT 0,
	[EntityType] NVARCHAR(50) NOT NULL, 
	[EntityName] NVARCHAR(50) NOT NULL, 
	[Phase] NVARCHAR(50) NOT NULL,
	[Date] DATE NOT NULL,
	[IsProcessed] BIT NOT NULL DEFAULT 0,
	[DateCreated] DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME(),
	[Timestamp] DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME(),
)