IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[dbo].[StageHandle]') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [dbo].[StageHandle]
GO

CREATE VIEW dbo.StageHandle
AS

SELECT [ID]
      ,[VS Type]
      ,[Account No.]
      ,[Posting Group]
      ,[Shortcut Dimension 1 Code]
      ,[Shortcut Dimension 2 Code]
      ,[Payment Method Code]
      ,[Posting Date]
      ,[Amount]
      ,[Handle Account No.]
      ,[Due Date]
      ,[Customer Entry No.]
      ,[Description]
      ,[Bank Account No.]
      ,[Variable Symbol]
      ,[Constant Symbol]
      ,[Specific Symbol]
      ,[IBAN]
      ,[SWIFT Code]
      ,[Name]
      ,[Address]
      ,[City (Part)]
      ,[House No.]
      ,[City]
      ,[Post Code]
      ,[Birth Date]
      ,[Personal Delivery]
      ,[Delivery Description]
      ,[Created Date]
      ,[External Source ID]
      ,[External ID]
  
  FROM [synonym].[Handle]
  
GO



