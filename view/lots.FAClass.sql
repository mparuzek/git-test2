
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[lots].[FAClass]') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [lots].[FAClass]
GO
OBSOLETE
CREATE VIEW lots.FAClass WITH ENCRYPTION AS

SELECT [Code]
      ,[Name]
      ,[Lots]
  FROM [synonym].[FAClass]
  WHERE [Lots] = 1
GO


