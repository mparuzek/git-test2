IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[dbo].[NoImportHandle]') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [dbo].[NoImportHandle]
GO

CREATE VIEW dbo.[NoImportHandle] AS 
SELECT 
	 h.[ID]
	,h.[VS Type]
	,h.[Account No.]
	,h.[Posting Group]
	,h.[Shortcut Dimension 1 Code]
	,h.[Shortcut Dimension 2 Code]
	,h.[Payment Method Code]
	,h.[Posting Date]
	,h.[Amount]
	,h.[Handle Account No.]
	,h.[Due Date]
	,h.[Customer Entry No.]
	,h.[Description]
	,h.[Bank Account No.]
	,h.[Variable Symbol]
	,h.[Constant Symbol]
	,h.[Specific Symbol]
	,h.[IBAN]
	,h.[SWIFT Code]
	,h.[Name]
	,h.[Address]
	,h.[City (Part)]
	,h.[House No.]
	,h.[City]
	,h.[Post Code]
	,h.[Birth Date]
	,h.[Personal Delivery]
	,h.[Delivery Description]
	,h.[Created Date]
	,h.[External Source ID]
	,h.[External ID]
  
 FROM [synonym].[Handle] h LEFT JOIN 
	  [synonym].[CustLedgEntrySettle] c ON ( h.ID = c.[Stage ID] )

	WHERE c.[Stage ID]	IS NULL AND h.ID > (select max(ih.[ID]) - (select top 1 [Last check Stage Handle] from [synonym].[GeneralLedgerSetup] ) from [synonym].[Handle] ih )
