
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[export].[Client]') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [export].[Client]
GO

CREATE VIEW export.Client WITH ENCRYPTION AS
SELECT [timestamp]
      ,[Origin No_] [No_]
      ,[Global Dimension 1 Code]
      ,[Name]
      ,[Stage ID]
      ,[Stage Datetime]
      ,[Reg_ Partner No_ (Transaction)]
      ,[Reg_ Partner No_ (Ass_Liab)] AS  [Reg_Partner_No_Ass_Liab]
      ,[Blocked]
      ,[Phone]
      ,[Global Dimension 2 Code]
  FROM [synonym].[Client]
GO
