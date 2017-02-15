
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[export].[PrescriptVS]') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [export].[PrescriptVS]
GO

CREATE VIEW export.PrescriptVS
WITH ENCRYPTION
AS
SELECT [timestamp]
      ,[No_]
      ,[Card Type]
      ,[VS Type]
      ,[Global Dimension 1 Code]
  FROM [synonym].[Customer]
  WHERE [Card Type] = 1 AND [VS Type] = 1
