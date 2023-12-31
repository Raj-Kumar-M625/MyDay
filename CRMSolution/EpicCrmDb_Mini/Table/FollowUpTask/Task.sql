﻿CREATE TABLE [dbo].[Task]
(
	[Id] BIGINT NOT NULL PRIMARY KEY IDENTITY,
	[XRefProjectId] BIGINT NOT NULL REFERENCES dbo.Project([Id]),
	[Description]  NVARCHAR(200),

	[ActivityType] NVARCHAR(50) NOT NULL,
	[ClientType] NVARCHAR(50) NOT NULL,
	[ClientName] NVARCHAR(50) NOT NULL,
	[ClientCode] NVARCHAR(50) NOT NULL DEFAULT '',

	[PlannedStartDate] DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME(),
	[PlannedEndDate] DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME(),
	[ActualStartDate] DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME(),
	[ActualEndDate] DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME(),
	[Comments] NVARCHAR(2048) NOT NULL,

	[Status] NVARCHAR(50) NOT NULL,
	[CyclicCount] INT NOT NULL DEFAULT 0,
	[IsActive] BIT NOT NULL DEFAULT 0,

	[DateCreated] DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME(),
	[DateUpdated] DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME(),
	[CreatedBy] NVARCHAR(50) NOT NULL,
	[UpdatedBy] NVARCHAR(50) NOT NULL,
	[SqliteTaskId] BIGINT NOT NULL DEFAULT 0,
	[TimeStamp] DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME(),
	[CreatedOnPhone] BIT NOT NULL DEFAULT 0
)
GO