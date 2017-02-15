IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[dbo].[StageVariableSymbolRelation]') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [dbo].[StageVariableSymbolRelation]
GO

CREATE VIEW [dbo].[StageVariableSymbolRelation]
AS
SELECT [ID]
      ,[Operation]
      ,[Client No.]
      ,[Global Dimension 1 Code]
      ,[Variable Symbol]
      ,[Created Date]
      ,[Default]
  FROM [synonym].[VariableSymbolRelation]

GO

