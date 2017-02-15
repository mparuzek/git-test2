
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[export].[AllCustomerLedgerEntry]') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [export].[AllCustomerLedgerEntry]
GO

CREATE VIEW export.AllCustomerLedgerEntry
WITH ENCRYPTION AS

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
      
	
