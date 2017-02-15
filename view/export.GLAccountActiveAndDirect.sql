
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[export].[GLAccountActiveAndDirect]') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [export].[GLAccountActiveAndDirect]
GO
CREATE VIEW [export].[GLAccountActiveAndDirect]
WITH ENCRYPTION
AS
SELECT [timestamp]
      ,[No_]
      ,[Name]
FROM [synonym].[GLAccount]
GO


