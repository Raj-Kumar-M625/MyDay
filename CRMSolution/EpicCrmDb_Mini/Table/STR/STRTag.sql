﻿CREATE TABLE [dbo].[STRTag]
(
	[Id] BIGINT NOT NULL PRIMARY KEY Identity,
	[STRNumber] NVARCHAR(50) NOT NULL,
	[STRDate] DATETIME2 NOT NULL,

	[Status] NVARCHAR(50) NOT NULL DEFAULT 'Pending',

	[STRWeightId] BIGINT NULL REFERENCES dbo.STRWeight,

	[CreatedBy] NVARCHAR(50) NOT NULL DEFAULT '',
	[UpdatedBy] NVARCHAR(50) NOT NULL DEFAULT '',
	[DateCreated] DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME(),
	[DateUpdated] DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME(),

	[IsEditAllowed] BIT NOT NULL DEFAULT 1,
	[CyclicCount] BIGINT NOT NULL DEFAULT 1
)
