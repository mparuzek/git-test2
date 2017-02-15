
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[lots].[ProductionClassificationFA]') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [lots].[ProductionClassificationFA]
GO
OBSOLETE
CREATE VIEW [lots].[ProductionClassificationFA]
WITH ENCRYPTION
AS
SELECT [timestamp]
      ,[Classification Type]
      ,[Code]
      ,[Description]
      ,[Depr_ Table Header Description]
      ,[Depreciation Table Code]
      ,[No_ Of Depreciation Years]
      ,[Depreciation Group]
  FROM [synonym].[ProductionClassificationFA]
GO


