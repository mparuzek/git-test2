
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[export].[CountryRegion]') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [export].[CountryRegion]
GO

CREATE VIEW [export].[CountryRegion]  WITH ENCRYPTION AS
SELECT [Code], [Name]

  FROM [synonym].[CountryRegion]
