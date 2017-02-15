IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[lots].[PAP06]') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [lots].[PAP06]
GO

CREATE VIEW [lots].[PAP06]  WITH ENCRYPTION AS
SELECT dv.[Code] 
      ,dv.[Name] 
  FROM [synonym].[DimensionValue] dv JOIN dbo.[IntegrationSetup] ise ON (
			 dv.[Dimension Code] COLLATE SQL_Czech_CP1250_CS_AS = ise.[PAP06DimensionCode] )
			 
			 WHERE ise.ID = 1 
 
/*
LEGEND:
(PK)Code -> Kód
Name -> Název
*/
