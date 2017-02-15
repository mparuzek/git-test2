IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[dbo].[StageLotsRegister]') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [dbo].[StageLotsRegister]
GO

CREATE VIEW [dbo].[StageLotsRegister]  WITH ENCRYPTION AS

SELECT [ID]
      ,[No_]
      ,[Name]
      ,[Operation]
      ,[External ID]
      ,[Create Date]
  FROM [synonym].[LotsRegister]
GO
