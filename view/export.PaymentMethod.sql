
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[export].[PaymentMethod]') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [export].[PaymentMethod]
GO


CREATE VIEW [export].[PaymentMethod]  WITH ENCRYPTION AS
SELECT [Code], [Description], Bail, Restitution, Prescript
   
  FROM [synonym].[PaymentMethod]  


