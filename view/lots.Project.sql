
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[lots].[Project]') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [lots].[Project]
GO

CREATE VIEW [lots].[Project]  WITH ENCRYPTION AS
SELECT dv.[Code]
      ,dv.[Name]
      ,dv.[Blocked]
      ,dv.[Dimension Value Type] [Type]
  FROM [synonym].[DimensionValue] dv JOIN dbo.[IntegrationSetup] ise ON (
			 dv.[Dimension Code] COLLATE SQL_Czech_CP1250_CS_AS = ise.[ProjectDimensionCode] )
			 WHERE ise.ID = 1

/*
LEGEND:
(PK)Code -> K�d
Name -> N�zev
Blocked -> Uzav�eno
Type -> Typ (0 - Standard)
*/


