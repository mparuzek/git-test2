IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[dbo].[StagePrescript]') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [dbo].[StagePrescript]
GO
CREATE VIEW [dbo].[StagePrescript] AS
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
    [External ID],
    [RegPartnerNo-Transaction] AS [Reg_ Partner No_ (Transaction)],
    [RegPartnerNo-AssLiab] AS [Reg_ Partner No_ (Ass_Liab)],
    [PAPD3DimensionCode] AS [PAP D3 Dimension Code],
    [PAPD4DimensionCode] AS [PAP D4 Dimension Code]

  FROM [synonym].[Prescript]

GO

