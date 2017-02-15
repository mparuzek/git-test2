IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[dbo].[StageMissingImport]') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [dbo].[StageMissingImport]
GO

CREATE VIEW dbo.[StageMissingImport]
WITH ENCRYPTION
AS
SELECT  77682 [Table ID]
      , sch.ID
      , sch.[Create Date] [Create Date]
FROM [synonym].[SqlApiInfo] ie  RIGHT JOIN 
	 [synonym].[LotsRegister] sch ON (ie.ID = sch.ID AND [Table ID] = 77682)

WHERE ie.ID IS NULL	   
UNION ALL
SELECT  77683 [Table ID]
      , sch.ID
      , sch.[Create Date]
FROM	 [synonym].[SqlApiInfo] ie  RIGHT JOIN 
		 [synonym].[LotsStornoOperation] sch ON (ie.ID = sch.ID AND [Table ID] = 77683)
WHERE ie.ID IS NULL	  
UNION ALL
SELECT  77680 [Table ID]
      , sch.ID
      , sch.[Create Date]
FROM	 [synonym].[SqlApiInfo] ie  RIGHT JOIN 
		 [synonym].[LotsFixedAsset] sch ON (ie.ID = sch.ID AND [Table ID] = 77680)
WHERE ie.ID IS NULL
UNION ALL
SELECT  77692 [Table ID]
      , sch.ID
      , sch.[Created Date] [Create Date]  
FROM	 [synonym].[SqlApiInfo] ie  RIGHT JOIN 
		 [synonym].[FixedAsset] sch ON (ie.ID = sch.ID AND [Table ID] = 77692)
WHERE ie.ID IS NULL	  
UNION ALL
SELECT  77698 [Table ID]
      , sch.ID
      , sch.[Created Date] [Create Date]  
FROM	 [synonym].[SqlApiInfo] ie  RIGHT JOIN 
		 [synonym].[Client] sch ON (ie.ID = sch.ID AND [Table ID] = 77698)
WHERE ie.ID IS NULL	
UNION ALL
SELECT  77527 [Table ID]
      , sch.ID
      , sch.[Created Date] [Create Date]  
FROM	 [synonym].[SqlApiInfo] ie  RIGHT JOIN 
		 [synonym].[PFPrescript] sch ON (ie.ID = sch.ID AND [Table ID] = 77527)
WHERE ie.ID IS NULL	   
UNION ALL
SELECT  77695 [Table ID]
      , sch.ID
      , sch.[Created Date] [Create Date]  
FROM	 [synonym].[SqlApiInfo] ie  RIGHT JOIN 
		 [synonym].[VariableSymbolRelation] sch ON (ie.ID = sch.ID AND [Table ID] = 77695 )
WHERE ie.ID IS NULL	   
UNION ALL
SELECT  77529 [Table ID]
      , sch.ID
      , sch.[Created Date] [Create Date]  
FROM	 [synonym].[SqlApiInfo] ie  RIGHT JOIN 
		 [synonym].[PFHandle] sch ON (ie.ID = sch.ID AND [Table ID] = 77529 )
WHERE ie.ID IS NULL	   
UNION ALL
SELECT  77699 [Table ID]
      , sch.ID
      , sch.[Created Date] [Create Date]  
FROM	 [synonym].[SqlApiInfo] ie  RIGHT JOIN 
		 [synonym].[Prescript] sch ON (ie.ID = sch.ID AND [Table ID] = 77699 )
WHERE ie.ID IS NULL	
UNION ALL
SELECT  77693 [Table ID]
      , sch.ID
      , sch.[Created Date] [Create Date]  
FROM	 [synonym].[SqlApiInfo] ie  RIGHT JOIN 
		 [synonym].[Handle] sch ON (ie.ID = sch.ID AND [Table ID] = 77693 )
WHERE ie.ID IS NULL	

UNION ALL
SELECT  77688 [Table ID]
      , sch.ID
      , sch.[Created Date] [Create Date]  
FROM	 [synonym].[SqlApiInfo] ie  RIGHT JOIN 
		 [synonym].[HistoryPrescript] sch ON (ie.ID = sch.ID AND [Table ID] = 77688 )
WHERE ie.ID IS NULL	


UNION ALL
SELECT  77689 [Table ID]
      , sch.ID
      , sch.[Created Date] [Create Date]  
FROM	 [synonym].[SqlApiInfo] ie  RIGHT JOIN 
		 [synonym].[PublicContract] sch ON (ie.ID = sch.ID AND [Table ID] = 77689 )
WHERE ie.ID IS NULL	

UNION ALL
SELECT  77697 [Table ID]
      , sch.ID
      , sch.[Created Date] [Create Date]  
FROM	 [synonym].[SqlApiInfo] ie  RIGHT JOIN 
		 [synonym].[MonitorTrace] sch ON (ie.ID = sch.ID AND [Table ID] = 77697 )
WHERE ie.ID IS NULL	

UNION ALL

SELECT  77694 [Table ID]
      , sch.ID
      , sch.[Create Date] [Create Date]  
FROM	 [synonym].[SqlApiInfo] ie  RIGHT JOIN 
		 [synonym].[LotsProject] sch ON (ie.ID = sch.ID AND [Table ID] = 77694 )
WHERE ie.ID IS NULL	



GO
GRANT SELECT ON [dbo].[StageMissingImport] TO [$ndo$shadow]


