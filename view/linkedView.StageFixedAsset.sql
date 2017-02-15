IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[dbo].[StageFixedAsset]') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [dbo].[StageFixedAsset]
GO

CREATE VIEW [dbo].[StageFixedAsset]
WITH ENCRYPTION
AS
SELECT
	[ID] ,
	[Posting Date],
	[No.] [No_],
	[Description],
	[Description 2],
	[Search Description],
	[FA Class Code],
	[FA Subclass Code],
	[FA Category Code],
	[Shortcut Dimension 1 Code],
	[FA Posting Group],
	[Depreciation Starting Date],
	[First User-Defined Depr. Date],
	[Acquisition Cost],
	[Depreciation],
	[Created Date],
	[External ID],
	[External Source ID],
	[Production Classification (FA) Code] AS [Prod. Classification (FA) Code],
	[RegPartnerNo-Transaction] [Reg_ Partner No_ (Transaction)],
	[Production Classification (FA) Type] AS [Production Class_ (FA) Type],
	[Origin No_],
	[Depreciation Table Code],
	[Overvalue Posting Date],
    [Sale],
    [Liquidity Date],
	[Project Code] AS [Project Dimension Code]

  FROM [synonym].[FixedAsset]

GO

GRANT SELECT ON [dbo].[StageFixedAsset] TO [$ndo$shadow]
GO
