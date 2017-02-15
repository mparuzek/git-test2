
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[export].[SpecificSymbolHistory]') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [export].[SpecificSymbolHistory]
GO

CREATE VIEW export.SpecificSymbolHistory WITH ENCRYPTION AS

SELECT [Entry No_]
      ,[Cust_ Ledg_ Entry Entry No_]
      ,[Insertion Date]
      ,[Insertion Time]
      ,[User ID]
      ,[Specific Symbol]
  FROM [synonym].[SpecificSymbolHistory]
GO


