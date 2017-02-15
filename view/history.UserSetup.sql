
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[history].[UserSetup]') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [history].[UserSetup]
GO

CREATE VIEW [history].[UserSetup]  WITH ENCRYPTION AS
SELECT dv.[User ID]
      ,dv.[Allow Posting From]
      ,dv.[Allow Posting To]
  FROM [synonym].[UserSetup] dv JOIN dbo.[IntegrationSetup] ise ON (
			 dv.[User ID] COLLATE SQL_Czech_CP1250_CS_AS = ise.[HistoryNASUser] )
			 WHERE ise.ID = 1
