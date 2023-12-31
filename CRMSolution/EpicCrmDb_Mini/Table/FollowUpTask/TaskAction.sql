﻿CREATE TABLE [dbo].[TaskAction]
(
	[Id] INT NOT NULL PRIMARY KEY Identity,
	[XRefTaskId] BIGINT NOT NULL REFERENCES dbo.Task([Id]),
	[XRefActivityId] BIGINT NOT NULL DEFAULT 0,
	[XRefTaskAssignmentId] BIGINT NOT NULL DEFAULT 0,
	[EmployeeId] BIGINT NOT NULL References dbo.TenantEmployee(Id),
	
	[TimeStamp] DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME(),
	[SqliteTaskActionId] BIGINT NOT NULL DEFAULT 0,
	[Status] NVARCHAR(50) NOT NULL,

	[DateCreated] DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME(),
	[DateUpdated] DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME(),
	[CreatedBy] NVARCHAR(50) NOT NULL DEFAULT '',
	[UpdatedBy] NVARCHAR(50) NOT NULL DEFAULT ''
)
GO