IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[dbo].[NoProcessRestitutionCustomer]') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [dbo].[NoProcessRestitutionCustomer]
GO

CREATE VIEW dbo.NoProcessRestitutionCustomer AS
SELECT 

       c.[No_]
      ,SUM(dcle.Amount) Amount

      
  FROM  [synonym].[Customer] c JOIN
		[synonym].[DetailedCustLedgEntry] dcle ON (c.[No_] = dcle.[Customer No_])
	
  WHERE dcle.[Document Type] NOT IN (3) and 
		c.[VS Type] in (3) and
		dcle.[Entry Type] IN (1)
  GROUP BY c.[No_]
		 
		 
		 
