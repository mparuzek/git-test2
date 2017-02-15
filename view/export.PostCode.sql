
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[export].[PostCode]') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [export].[PostCode]
GO

CREATE VIEW [export].[PostCode] WITH ENCRYPTION AS
SELECT [Code], [City]
   
  FROM [synonym].[PostCode]


