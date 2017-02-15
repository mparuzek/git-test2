IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[dbo].[NoImportFA]') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [dbo].[NoImportFA]
GO
CREATE VIEW dbo.NoImportFA AS   
SELECT [ID]
      ,[Posting Date]
      ,sfa.[No_]
      ,[Description]
      ,[Description 2]
      ,[Search Description]
      ,[FA Class Code]
      ,[FA Subclass Code]
      ,[FA Category Code]
      ,[Shortcut Dimension 1 Code]
      ,[FA Posting Group]
      ,[Depreciation Starting Date]
      ,[First User-Defined Depr. Date]
      ,[Acquisition Cost]
      ,[Depreciation]
      ,[Created Date]
      ,[External ID]
      ,[External Source ID]

       FROM [synonym].[StageFixedAsset] sfa LEFT JOIN 
            [synonym].[CommentLine] cl ON (
       sfa.[ID] = [dbo].[ExtractNumber] (cl.Comment) AND cl.Code like 'EXTIMPORT' AND cl.[Table Name] in (10))

   WHERE cl.Code is null
	
	
	
	  
