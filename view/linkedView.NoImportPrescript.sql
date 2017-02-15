IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[dbo].[NoImportPrescript]') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [dbo].[NoImportPrescript]
GO


CREATE VIEW dbo.[NoImportPrescript] AS 
SELECT p.[ID]
      ,p.[Account No.]
      ,p.[Posting Date]
      ,p.[Document Type]
      ,p.[Document No.]
      ,p.[Description]
      ,p.[Amount]
      ,p.[Posting Group]
      ,p.[Shortcut Dimension 1 Code]
      ,p.[Shortcut Dimension 2 Code]
      ,p.[Due Date]
      ,p.[Reason Code]
      ,p.[Correction]
      ,p.[Document Date]
      ,p.[Original Variable Symbol]
      ,p.[Payment Method Code]
      ,p.[Bank Account No.]
      ,p.[Variable Symbol]
      ,p.[Constant Symbol]
      ,p.[Specific Symbol]
      ,p.[IBAN]
      ,p.[SWIFT Code]
      ,p.[Search Description]
      ,p.[Name]
      ,p.[Address]
      ,p.[City (Part)]
      ,p.[House No.]
      ,p.[City]
      ,p.[Post Code]
      ,p.[Birth Date]
      ,p.[Personal Delivery]
      ,p.[Delivery Description]
      ,p.[Created Date]
      ,p.[External ID]
  
 FROM [synonym].Prescript p LEFT JOIN 
	  [synonym].[CustLedgEntry] c ON ( p.ID = c.[Stage ID] )

WHERE c.[Stage ID]	IS NULL AND p.Amount <> 0 AND
	p.ID > (select max(ip.[ID]) - (select top 1 [Last check Stage Prescript] from [synonym].[GeneralLedgerSetup] ) from [synonym].[Prescript] ip )								  
