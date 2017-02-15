
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[export].[PublicContract]') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [export].[PublicContract]
GO

CREATE VIEW [export].[PublicContract]  WITH ENCRYPTION AS
SELECT [No_]
      ,[Search Description]
      ,[Description]
      ,[Starting Date]
      ,[Ending Date]
      ,[Status]
      ,[Person Responsible]
      ,[Global Dimension 1 Code]
      ,[Global Dimension 2 Code]
      ,[Blocked]
      ,[Public Contract Job Type]
      ,[Vendor No_]
      ,[Starting Year]
      ,[Ending Year]
      ,[Contract Date]
      ,[Type for Statement]
  FROM [synonym].[PublicContract]
