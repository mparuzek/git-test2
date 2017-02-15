IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[lots].[PAP01]') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [lots].[PAP01]
GO

CREATE VIEW [lots].[PAP01]  WITH ENCRYPTION AS
SELECT dv.[Code] 
      ,dv.[Name] 
  FROM [synonym].[DimensionValue] dv JOIN dbo.[IntegrationSetup] ise ON (
			 dv.[Dimension Code] COLLATE SQL_Czech_CP1250_CS_AS = ise.[PAPD1DimensionCode] )
			 
			 WHERE ise.ID = 1 
 
/*
LEGEND:
(PK)Code -> Kód
Name -> Název
*/
