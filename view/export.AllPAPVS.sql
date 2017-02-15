
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[export].[AllPAPVS]') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [export].[AllPAPVS]
GO

CREATE VIEW export.AllPAPVS
WITH ENCRYPTION
AS
SELECT [timestamp]
      ,[No_]
      ,[Card Type]
      ,[VS Type]
      ,[Global Dimension 1 Code]
  FROM [synonym].[Customer]
  WHERE [Card Type] = 1 AND [VS Type] IN (1,3)