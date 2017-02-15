IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[dbo].[NoProcessBail]') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [dbo].[NoProcessBail]
GO

CREATE VIEW dbo.NoProcessBail AS
SELECT 
       pv.[Cust_ Ledg_ Entry_ Entry No_]
      ,pv.[Payment Method Code]
      ,pv.[Amount]
      ,pv.[Settle VS]
      ,pv.[Entry No_]
      ,pv.[Stage ID]
      ,pv.[VS No_]
      ,pv.[Processed]
      ,pv.[Shortcut Dimension 1 Code]
      ,pv.[Shortcut Dimension 2 Code]
      ,pv.[Posting Date]
      ,pv.[Due Date]
      ,pv.[Description]
      ,pv.[Bank Account No_]
      ,pv.[Variable Symbol]
      ,pv.[Constant Symbol]
      ,pv.[Specific Symbol]
      ,pv.[IBAN]
      ,pv.[SWIFT Code]
      ,pv.[Name]
      ,pv.[External Source ID]
      ,pv.[External ID]
      
  FROM [synonym].[CustLedgEntrySettle] pv JOIN [synonym].[CustLedgEntry] c ON
		 (pv.[Cust_ Ledg_ Entry_ Entry No_] = c.[Entry No_])
		 
		 WHERE c.[Open] = 1 

GO


