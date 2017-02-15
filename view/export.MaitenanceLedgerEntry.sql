
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[export].[MaitenanceLedgerEntry]') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [export].[MaitenanceLedgerEntry]
GO
CREATE VIEW export.MaitenanceLedgerEntry WITH ENCRYPTION
AS
SELECT 
       [Entry No_]
      ,[FA No_]
      ,[Posting Date]
      ,[Document No_]
      ,[Description]
      ,[Depreciation Book Code]
      ,[Amount]
      ,[Global Dimension 1 Code]
      ,[Maintenance Code]
      ,[G_L Account No_]
      ,[Stage ID]
      ,[External Source ID]
      ,[External ID]
  FROM [synonym].[MaitenanceLedgerEntry]
GO


