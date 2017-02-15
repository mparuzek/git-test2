IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[dbo].[StageLotsFixedAsset]') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [dbo].[StageLotsFixedAsset]
GO

CREATE VIEW dbo.StageLotsFixedAsset
WITH ENCRYPTION
AS
SELECT [ID]
      ,[RowID]
      ,[No_]
      ,[Description]
      ,[Register No_]
      ,[Comment]
      ,[Comment Code]
      ,[Area]
      ,[Ownership ID]
      ,[Origin No_]
      ,[Posting Date]
      ,[FA Posting Type]
      ,[Reason Code]
      ,[Journal Description]
      ,[PAP01 Dimension Code]
      ,[PAP06 Dimension Code]
      ,[Shortcut Dimension 1 Code]
      ,[FA Posting Group]
      ,[Amount]
      ,[External ID]
      ,[RegPartnerNo-Transaction]
      ,[ID ISKN]
      ,[Create Date]
      ,[Sale]
      ,[Liquidity Date]
	  ,[Project Code] AS [Project Dimension Code]
  FROM [synonym].[LotsFixedAsset]
GO
GO
GRANT SELECT ON dbo.StageLotsFixedAsset TO [$ndo$shadow]


