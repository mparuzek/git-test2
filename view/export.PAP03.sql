
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[export].[PAP03]') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [export].[PAP03]
GO

CREATE VIEW [export].[PAP03]  WITH ENCRYPTION AS
SELECT dv.[Code] 
      ,dv.[Name] 
  FROM [synonym].[DimensionValue] dv JOIN dbo.[IntegrationSetup] ise ON (
			 dv.[Dimension Code] COLLATE SQL_Czech_CP1250_CS_AS = ise.[PAPD3DimensionCode] )
			 
			 WHERE ise.ID = 1 AND 
                   dv.[Code] BETWEEN '601' AND '649'
							
  
  
