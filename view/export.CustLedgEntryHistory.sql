
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[export].[CustLedgEntryHistory]') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [export].[CustLedgEntryHistory]
GO

CREATE VIEW export.CustLedgEntryHistory WITH ENCRYPTION AS

SELECT [Entry No_]
      ,[Origin Application Date]
      ,[User ID]
      ,[Insertion Date]
      ,[Insertion Time]
      ,[ID]
  FROM [synonym].[CustLedgerEntryHistory]
GO


