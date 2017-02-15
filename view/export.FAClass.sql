
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[export].[FAClass]') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [export].[FAClass]
GO

CREATE VIEW export.FAClass WITH ENCRYPTION AS

SELECT [Code]
      ,[Name]
      ,[DHIM]
  FROM [synonym].[FAClass]
  WHERE [DHIM] = 1
GO


