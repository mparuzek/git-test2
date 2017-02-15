
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[export].[VendorExpert]') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [export].[VendorExpert]
GO

CREATE VIEW export.[VendorExpert]
WITH ENCRYPTION
AS
SELECT [timestamp]
      ,[No_]
      ,[Name]
      ,[Name 2]
      ,[Address]
      ,[Address 2]
      ,[City]
      ,[Phone No_]
      ,[Post Code]
      ,[E-Mail]
      ,[Registration No_]
FROM [synonym].[Vendor]
WHERE [Expert] = 1