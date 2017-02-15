
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[export].[Departments]') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [export].[Departments]
GO

CREATE VIEW [export].[Departments]  WITH ENCRYPTION AS
SELECT dv.[Code] 
      ,dv.[Name]
      ,dv.[Blocked]
      ,dv.[Type] 
  FROM [synonym].[DimensionValue] dv JOIN dbo.[IntegrationSetup] ise ON (
			 dv.[Dimension Code] COLLATE SQL_Czech_CP1250_CS_AS = ise.[DepartmentDimensionCode] )
			 
			 WHERE ise.ID = 1
							
  
  
