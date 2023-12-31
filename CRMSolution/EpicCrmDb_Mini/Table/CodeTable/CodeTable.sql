﻿CREATE TABLE [dbo].[CodeTable]
(
	[Id] INT NOT NULL PRIMARY KEY Identity,
	[TenantId] BIGINT NOT NULL REFERENCES dbo.Tenant,
	[CodeType] NVARCHAR(50) NOT NULL,
	[CodeName] NVARCHAR(50) NOT NULL DEFAULT '',
	[CodeValue] NVARCHAR(150) NOT NULL,
	[DisplaySequence] INT NOT NULL,
	[IsActive] BIT NOT NULL DEFAULT 1
)
