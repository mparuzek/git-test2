
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[export].[PAP04]') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [export].[PAP04]
GO

CREATE VIEW [export].[PAP04]  WITH ENCRYPTION AS
SELECT dv.[Code] 
      ,dv.[Name] 
  FROM [synonym].[DimensionValue] dv JOIN dbo.[IntegrationSetup] ise ON (
			 dv.[Dimension Code] COLLATE SQL_Czech_CP1250_CS_AS = ise.[PAPD4DimensionCode] )
			 
			 WHERE ise.ID = 1 AND
			        dv.[Code] BETWEEN '750' AND '799'							
  
  
