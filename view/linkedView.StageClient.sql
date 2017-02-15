IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[dbo].[StageClient]') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [dbo].[StageClient]
GO

CREATE VIEW [dbo].[StageClient] AS
SELECT [ID]
      ,[Operation]
      ,[No.] [No_]
      ,[Global Dimension 1 Code]
      ,[Registration No.] [Registration No_]
      ,[Name]
      ,[Address]
      ,[Contact]
      ,[Post Code]
      ,[City]
      ,[Country/Region Code] [Country_Region Code]
      ,[Identifier]
      ,[Identifier2]
      ,[Created Date]
      ,[RegPartnerNo-Transaction] [Reg_ Partner No_ (Transaction)]
      ,[RegPartnerNo-AssLiab]  [Reg_ Partner No_ (Ass_Liab)]
  FROM [synonym].[Client]

GO

