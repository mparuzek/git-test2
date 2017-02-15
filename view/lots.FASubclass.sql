
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[lots].[FASubclass]') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [lots].[FASubclass]
GO
OBSOLETE
CREATE VIEW lots.FASubclass WITH ENCRYPTION AS

SELECT [Code]
      ,[Name]
      ,[Lots]
  FROM [synonym].[FASubclass]
  WHERE [Lots] = 1
GO


