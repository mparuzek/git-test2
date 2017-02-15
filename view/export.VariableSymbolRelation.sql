
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[export].[VariableSymbolRelation]') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [export].[VariableSymbolRelation]
GO

CREATE VIEW export.VariableSymbolRelation with encryption AS
SELECT [timestamp]
      ,[Variable Symbol]
      ,[Origin No_] [Client No_]
      ,[Global Dimension 1 Code]
      ,[Stage ID]
      ,[Stage Datetime]
      ,[Default]
  FROM [synonym].[VariableSymbolRelation]
GO
