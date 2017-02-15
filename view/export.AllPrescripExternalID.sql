
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[export].[AllPrescriptExternalID]') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [export].[AllPrescriptExternalID]
GO

CREATE VIEW [export].[AllPrescriptExternalID]  WITH ENCRYPTION AS

SELECT [ID]
      ,[Shortcut Dimension 1 Code]
      ,[External ID]
      ,[External Source ID]
      ,'import' [Schema]
  FROM [import].[Prescript]

UNION ALL

SELECT [ID]
      ,[Shortcut Dimension 1 Code]
      ,[External ID]
      ,[External Source ID]
      ,'pfimport' [Schema]
  FROM [pfimport].[Prescript]

UNION ALL

SELECT [ID]
      ,[Shortcut Dimension 1 Code]
      ,[External ID]
      ,[External Source ID]
	  ,'history' [Schema]      
  FROM [history].[Prescript]



