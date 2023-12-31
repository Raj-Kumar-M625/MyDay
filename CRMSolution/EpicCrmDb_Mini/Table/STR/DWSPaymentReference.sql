﻿CREATE TABLE [dbo].[DWSPaymentReference]
(
	[Id] BIGINT NOT NULL PRIMARY KEY Identity,
	[PaymentReference] NVARCHAR(50) NULL,
	[Comments] NVARCHAR(100) NOT NULL DEFAULT '',
	[TotalNetPayable] DECIMAL(19,2) NOT NULL DEFAULT 0,
	[DWSCount] BIGINT NOT NULL DEFAULT 0,
	[DWSNumbers] NVARCHAR(2048) NULL,

	[AccountNumber] NVARCHAR(50) NULL,
	[AccountName] NVARCHAR(50) NULL,
	[AccountAddress] NVARCHAR(50) NULL,
	[AccountEmail] NVARCHAR(50) NULL,
	[PaymentType]  NVARCHAR(50) NULL,
	[SenderInfo]  NVARCHAR(50) NULL,

	[LocalTimeStamp] DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME(),

	[CreatedBy] NVARCHAR(50) NOT NULL DEFAULT '',
	[UpdatedBy] NVARCHAR(50) NOT NULL DEFAULT '',
	[DateCreated] DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME(),
	[DateUpdated] DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME(),
)
