
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[export].[Employee]') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [export].[Employee]
GO
CREATE VIEW [export].[Employee]
WITH ENCRYPTION
AS
SELECT [timestamp]
      ,[No_]
      ,[First Name]
      ,[Last Name]
      ,[Status]
      ,[Phone]
      ,[Sex]
  FROM [synonym].[Employee]
GO


