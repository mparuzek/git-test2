IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[dbo].[NoProcessRestitution]') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [dbo].[NoProcessRestitution]
GO

CREATE VIEW dbo.NoProcessRestitution AS
SELECT 
   c.[No_]
 , c.[Amount] InNav
 , h.[Amount] InSettle
 , ABS(c.Amount - h.Amount) [Difference]
 FROM dbo.NoProcessRestitutionHandle h  LEFT JOIN 
	  dbo.NoProcessRestitutionCustomer c ON (c.[No_] = h.[VS No_])
	  
 WHERE ABS(c.Amount - h.Amount) > 0 

GO


