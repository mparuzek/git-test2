
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[export].[PrescriptMaxExternalIDPerDim1]') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [export].[PrescriptMaxExternalIDPerDim1]
GO

CREATE VIEW export.PrescriptMaxExternalIDPerDim1 WITH ENCRYPTION AS
SELECT 
	[Shortcut Dimension 1 Code], 
	max([External ID]) [External ID]
FROM import.Prescript
WHERE
  ([Reason Code] LIKE '2%') 
  
GROUP BY  [Shortcut Dimension 1 Code]
