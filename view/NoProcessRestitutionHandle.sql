IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[dbo].[NoProcessRestitutionHandle]') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [dbo].[NoProcessRestitutionHandle]
GO

CREATE VIEW dbo.NoProcessRestitutionHandle AS
SELECT 
       pv.[VS No_]
      ,SUM(pv.Amount) Amount
  FROM [synonym].[CustLedgEntrySettle] pv 
  WHERE pv.[Cust_ Ledg_ Entry_ Entry No_] = 0 and
		pv.Processed = 1
  GROUP BY pv.[VS No_]
