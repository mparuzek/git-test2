
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[export].[CustomerLedgerEntry]') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [export].[CustomerLedgerEntry]
GO

CREATE VIEW export.CustomerLedgerEntry  WITH Encryption AS
SELECT 
       cle.[Entry No_]
      ,cle.[Customer No_]
      ,cle.[Posting Date]
      ,cle.[Document Type]
      ,cle.[Document No_]
      ,cle.[Customer Posting Group]
      ,cle.[Global Dimension 1 Code]
      ,cle.[User ID]
      ,cle.[Reason Code]
      ,cle.[Origin Application Date]
      ,cle.[Date and Time of Create]  [Document Date]
      ,cle.[Open]
      ,cle.[Specific Symbol]
      ,cle.[Origin VS No_]
      ,cle.[Variable Symbol]
      ,cle.[External ID]
      ,cle.[External Source ID]
      ,cle.[Stage ID]
      ,- SUM (dcle.[Amount]) Amount
  FROM [synonym].[CustLedgEntry] cle JOIN
				  [synonym].[DetailedCustLedgEntry] dcle ON  (
					cle.[Entry No_] = dcle.[Cust_ Ledger Entry No_])

WHERE cle.[Posting Date] >= '2010-01-01'  AND cle.[Document Type] NOT IN (2,3)
GROUP BY
       cle.[Entry No_]
      ,cle.[Customer No_]
      ,cle.[Posting Date]
      ,cle.[Document Type]
      ,cle.[Document No_]
      ,cle.[Customer Posting Group]
      ,cle.[Global Dimension 1 Code]
      ,cle.[User ID]
      ,cle.[Reason Code]
      ,cle.[Origin Application Date]
      ,cle.[Date and Time of Create]
      ,cle.[Open]
      ,cle.[Specific Symbol]
      ,cle.[Origin VS No_]
      ,cle.[Variable Symbol]      
      ,cle.[External ID]
      ,cle.[External Source ID]
      ,cle.[Stage ID]
      
GO
