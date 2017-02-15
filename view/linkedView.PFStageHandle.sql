IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[dbo].[PFStageHandle]') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [dbo].[PFStageHandle]
GO

CREATE VIEW dbo.PFStageHandle
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
      ,[Processed]
  
  FROM [synonym].[PFHandle]
  
GO



