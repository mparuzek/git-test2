
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[export].[ReasonCode]') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [export].[ReasonCode]
GO

CREATE VIEW [export].[ReasonCode]  WITH ENCRYPTION AS
SELECT [Code], [Description]
   
  FROM [synonym].[ReasonCode]
