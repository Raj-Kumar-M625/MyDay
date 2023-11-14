﻿CREATE TABLE [dbo].[Customer]
(
	[Id] INT NOT NULL PRIMARY KEY Identity,
	[CustomerCode] NVARCHAR(20) NOT NULL,
	[Name] NVARCHAR(100) NOT NULL,
	[Type] NVARCHAR(20) NOT NULL, -- D/PD/Dist
	[CreditLimit] DECIMAL(19,2) NOT NULL,
	[Outstanding] DECIMAL(19,2) NOT NULL,
	[LongOutstanding] DECIMAL(19,2) NOT NULL,
	[Target] DECIMAL(19,2) NOT NULL DEFAULT 0,
	[Sales] DECIMAL(19,2) NOT NULL DEFAULT 0,
	[Payment] DECIMAL(19,2) NOT NULL DEFAULT 0,
	[HQCode] NVARCHAR(10),
	[ContactNumber] NVARCHAR(50),

	[Address1] NVARCHAR(50),
	[Address2] NVARCHAR(50),
	[Email] NVARCHAR(50),

	[DateCreated] DATETIME2 NOT NULL DEFAULT Sysutcdatetime(),
	[DateUpdated] DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME(),
	[CreatedBy] NVARCHAR(50) NOT NULL DEFAULT '',
	[UpdatedBy] NVARCHAR(50) NOT NULL DEFAULT '',
	[IsActive] Bit NOT NULL Default 1,
)