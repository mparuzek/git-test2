
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[export].[UserSetup]') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [export].[UserSetup]
GO

CREATE VIEW [export].[UserSetup]  WITH ENCRYPTION AS
SELECT dv.[User ID]
      ,dv.[Allow Posting From]
      ,dv.[Allow Posting To]
  FROM [synonym].[UserSetup] dv JOIN dbo.[IntegrationSetup] ise ON (
			 dv.[User ID] COLLATE SQL_Czech_CP1250_CS_AS = ise.[NASUser] )
			 
			 WHERE ise.ID = 1
