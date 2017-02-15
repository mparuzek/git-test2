IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[lots].[Departments]') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [lots].[Departments]
GO

CREATE VIEW [lots].[Departments]  WITH ENCRYPTION AS
SELECT dv.[Code] 
      ,dv.[Name] 
  FROM [synonym].[DimensionValue] dv JOIN dbo.[IntegrationSetup] ise ON (
			 dv.[Dimension Code] COLLATE SQL_Czech_CP1250_CS_AS = ise.[DepartmentDimensionCode] )
			 
			 WHERE ise.ID = 1
							
/*
LEGEND:
(PK)Code -> Kód
Name -> Název
*/
  
