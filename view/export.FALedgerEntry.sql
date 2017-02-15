
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[export].[FALedgerEntry]') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [export].[FALedgerEntry]
GO
CREATE VIEW export.FALedgerEntry WITH ENCRYPTION
AS
SELECT
       [Entry No_]
      ,[FA No_]
      ,[Posting Date]
      ,[Document No_]
      ,[Description]
      ,[Depreciation Book Code]
      ,[FA Posting Type]
      ,[Amount]
      ,[Global Dimension 1 Code]
      ,[Reason Code]
      ,[External Source ID]
      ,[External ID]
      ,[Disposal Type]
      ,[Disposal Reason]
      ,[Stage ID]
      ,export.GetRegPartnerNo([Entry No_], [FA Posting Type]) [GetRegPartnerNoTransaction]
  FROM [synonym].[FALedgerEntry]
  --WHERE [Stage ID] = 0 customers 1921
GO

