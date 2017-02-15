IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[dbo].[StageMigrationPrescript]') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [dbo].[StageMigrationPrescript]
GO
CREATE VIEW [dbo].[StageMigrationPrescript] AS
SELECT
	[ID],
	[Account No.] [Account No_],
	[Posting Date],	
	[Document Type],
	[Document No.] [Document No_],
	[Description] ,
	[Amount] ,
	[Posting Group],
	[Shortcut Dimension 1 Code] ,
	[Shortcut Dimension 2 Code] ,
	[Due Date] ,
	[Reason Code],
	[Correction] ,
	[Document Date],
	[Origin Application Date],
	[Original Variable Symbol] ,
	[Payment Method Code],
	[Bank Account No.] [Bank Account No_],
	[Variable Symbol] ,
	[Constant Symbol] ,
	[Specific Symbol] ,
	[Origin SS],
	[IBAN],
	[SWIFT Code] ,
	[Search Description],
	[Name],
	[Address],
	[City (Part)] ,
	[House No.] [House No_] ,
	[City],
	[Post Code],
	[Birth Date],
	[Personal Delivery],
	[Delivery Description],
	[Created Date],
	[VS Type],
    [External Source ID],
    [External ID]

  FROM [synonym].[MigrationPrescript]

GO

