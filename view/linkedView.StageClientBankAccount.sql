IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[dbo].[StageClientBankAccount]') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [dbo].[StageClientBankAccount]
GO

CREATE VIEW [dbo].[StageClientBankAccount]
AS
SELECT [ID]
      ,[RowID]
      ,[Operation]
      ,[No.] [No_]
      ,[Global Dimension 1 Code]
      ,[Code]
      ,[Name]
      ,[Bank Branch No.] [Bank Branch No_]
      ,[Bank Account No.] [Bank Account No_]
      ,[IBAN]
      ,[SWIFT Code]
      ,[Created Date]
      
  FROM [synonym].[ClientBankAccount]
GO


