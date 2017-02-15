
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[lots].[FixedAssetAcquisitionValue]') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [lots].[FixedAssetAcquisitionValue]
GO


CREATE VIEW [lots].[FixedAssetAcquisitionValue]
WITH ENCRYPTION
AS
	
SELECT	
	 fa.[No_]
	,SUM(Amount) [AcquisitionValue]
	
FROM [lots].[FixedAsset] fa JOIN 
     [synonym].[FALedgerEntry] fle ON (fa.[No_] = fle.[FA No_])
WHERE
 fle.[FA Posting Type] = 0 AND
 fa.[Card Type] = 2 

GROUP BY fa.[No_]

/*
LEGEND:
(PK) No. -> Číslo majetku
AcquisitionValue -> Částka Zařazení

*/


