IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[dbo].[StageLotsProject]') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [dbo].[StageLotsProject]
GO

CREATE VIEW [dbo].[StageLotsProject]  WITH ENCRYPTION AS

SELECT [ID]
      ,[Code]
      ,[Name]
      ,[Type] [Dimension Value Type]
      ,[Blocked]
      ,[Operation]
      ,[Create Date]
  FROM [synonym].[LotsProject]
GO

/*
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[dbo].[StageLotsProject]') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [dbo].[StageLotsProject]
GO

CREATE VIEW [dbo].[StageLotsProject]  WITH ENCRYPTION AS

SELECT 0 [ID]
      ,'PROJ01' [Code]
      ,'Proj 01 Name'[Name]
      ,0 [Dimension Value Type] 
      ,0 [Blocked]
      ,0 [Operation]
      ,CAST('2017-01-01' AS datetime) [Create Date]
*/
