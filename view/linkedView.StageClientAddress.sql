IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[dbo].[StageClientAddress]') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [dbo].[StageClientAddress]
GO

CREATE VIEW [dbo].[StageClientAddress] AS 
SELECT [ID]
      ,[Operation]
      ,[No.] [No_]
      ,[Global Dimension 1 Code]
      ,[Code]
      ,[Name]
      ,[Address]
      ,[Contact]
      ,[Post Code]
      ,[City]
      ,[Country/Region Code] [Country_Region Code]
      ,[Created Date]
  FROM [synonym].[ClientAddress]

GO

