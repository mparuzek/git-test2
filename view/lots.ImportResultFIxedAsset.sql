
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[lots].[ImportResultFixedAsset]') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [lots].[ImportResultFixedAsset]
GO

CREATE VIEW [lots].[ImportResultFixedAsset]  WITH ENCRYPTION AS
SELECT

  stage.[ID]
, info.[Status] [Process Type]
, info.[Error Text]
, info.[Proces Datetime] [Process Date]
, stage.[External ID]
, stage.[No_]
, stage.[Description]
, stage.[Register No_]
, stage.[Comment]
, stage.[Comment Code]
, stage.[Area]
, stage.[Ownership ID]
, stage.[Origin No_]
, stage.[Posting Date]
, stage.[FA Posting Type]
, stage.[Reason Code]
, stage.[Journal Description]
, stage.[PAP01 Dimension Code]
, stage.[Shortcut Dimension 1 Code]
, stage.[FA Posting Group]
, stage.[Amount]
, stage.[RegPartnerNo-Transaction]
, stage.[Create Date]

  FROM [synonym].[SQLAPIInfo] info JOIN
       [lots].[FixedAssetStage] stage ON (
		stage.ID = info.[ID] )
  WHERE info.[Table ID] = 77680

  /*
LEGEND:

External ID -> Primární klíč stage tabulek
Process Type -> 0 - Vloženo, 1 - Chyba, 2 - Zpracováno, 3 - Storno
Error Text
Process Date
External ID -> Číslo požadavku přidělené CIS
Other field is same as table type.lots.FixedAssetType
*/
							
  
  
