
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[export].[EmployeeActive]') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [export].[EmployeeActive]
GO
CREATE VIEW [export].[EmployeeActive]
WITH ENCRYPTION
AS
SELECT [timestamp]
      ,[No_]
      ,[Social Security No_]
  FROM [synonym].[Employee]
GO


