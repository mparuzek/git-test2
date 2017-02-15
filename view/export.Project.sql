
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[export].[Project]') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [export].[Project]
GO

CREATE VIEW [export].[Project]  WITH ENCRYPTION AS
SELECT dv.[Code]
      ,dv.[Name]
      ,dv.[Blocked]
      ,dv.[Dimension Value Type] [Type]
  FROM [synonym].[DimensionValue] dv JOIN dbo.[IntegrationSetup] ise ON (
			 dv.[Dimension Code] COLLATE SQL_Czech_CP1250_CS_AS = ise.[ProjectDimensionCode] )
			 WHERE ise.ID = 1


/*
LEGEND:
(PK)Code -> Kód
Name -> Název
Blocked -> Uzavřeno
Type -> Typ (0 - Standard)
*/



