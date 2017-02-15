
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[export].[CustomerPostingGroup]') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [export].[CustomerPostingGroup]
GO

CREATE VIEW [export].[CustomerPostingGroup]  WITH ENCRYPTION AS
SELECT [Code], [VS Type]
   
  FROM [synonym].[CustomerPostingGroup]
