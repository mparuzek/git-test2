
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[export].[FAPostingGroup]') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [export].[FAPostingGroup]
GO
CREATE VIEW export.FAPostingGroup WITH ENCRYPTION AS 
SELECT [Code]
      ,[Description]
      ,[Administration]
  FROM [synonym].[FAPostingGroup]
  WHERE [Administration] = 1
GO


