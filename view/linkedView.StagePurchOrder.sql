IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[dbo].[StagePurchOrder]') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [dbo].[StagePurchOrder]
GO

CREATE VIEW [dbo].[StagePurchOrder]
WITH ENCRYPTION
AS
SELECT [ID]
      ,[RowID]
      ,[Vendor No_]
      ,[Account No_]
      ,[Document Date]
      ,[Order Date]
      ,[Quantity]
      ,[Description]
      ,[AmountIncludingVAT]
      ,[Shortcut Dimension 1 Code]
      ,[Shortcut Dimension 2 Code]
      ,[Employee No_]
      ,[eSpis No_]
      ,[UID]
      ,[External ID]
      ,[External Source ID]
      ,[Created Date]
  FROM [synonym].[PurchOrder]
GO


