
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[export].[BudgetUnit]') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [export].[BudgetUnit]
GO

CREATE VIEW [export].[BudgetUnit]  WITH ENCRYPTION AS
SELECT dv.[Code] 
      ,dv.[Name] 
  FROM [synonym].[DimensionValue] dv JOIN dbo.[IntegrationSetup] ise ON (
                         dv.[Dimension Code] COLLATE SQL_Czech_CP1250_CS_AS = ise.[BudgetUnitCode] )
                         
                         WHERE ise.ID = 1
                                                        
  
  
