
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[export].[Activity]') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [export].[Activity]
GO

CREATE VIEW [export].[Activity]  WITH ENCRYPTION AS
SELECT dv.[Code] 
      ,dv.[Name]
      ,dv.[Blocked]
      ,dv.[Type] 
  FROM [synonym].[DimensionValue] dv JOIN dbo.[IntegrationSetup] ise ON (
			 dv.[Dimension Code] COLLATE SQL_Czech_CP1250_CS_AS = ise.[ActivityDimensionCode] )

	WHERE ise.ID = 1
							
  
  


