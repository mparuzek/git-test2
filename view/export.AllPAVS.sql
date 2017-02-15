
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[export].[AllVS]') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [export].[AllVS]
GO

CREATE VIEW export.AllVS
WITH ENCRYPTION
AS
SELECT [timestamp]
      ,[No_]
      ,[Card Type]
      ,[VS Type]
      ,[Global Dimension 1 Code]
      ,[Blocked]
  FROM [synonym].[Customer]
  WHERE [Card Type] = 1