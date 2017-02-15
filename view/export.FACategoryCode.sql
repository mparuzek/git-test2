
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[export].[FACategoryCode]') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [export].[FACategoryCode]
GO

CREATE VIEW export.FACategoryCode WITH ENCRYPTION
AS
SELECT [Code]
      ,[Description]
  FROM [synonym].[FACategoryCode]
GO


