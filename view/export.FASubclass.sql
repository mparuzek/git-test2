
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[export].[FASubclass]') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [export].[FASubclass]
GO

CREATE VIEW export.FASubclass WITH ENCRYPTION AS

SELECT [Code]
      ,[Name]
      ,[DHIM]
  FROM [synonym].[FASubclass]
  WHERE [DHIM] = 1
GO


