
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[export].[PFOriginValue]') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [export].[PFOriginValue]
GO
CREATE VIEW [export].[PFOriginValue]
WITH ENCRYPTION
AS
SELECT 
   cle.[Customer No_] [New Customer No_]
  ,cle.[Entry No_] [New Customer Entry No_]
  ,ov.[Stage ID]
  ,ov.[Account No_] [Old Customer No_]
  ,ov.[Customer Entry No_] [Old Customer Entry No_]
  FROM [synonym].[PFOriginValue] ov JOIN
       [synonym].[CustLedgEntry] cle ON (cle.[Stage ID] = ov.[Stage ID])
       
-- CREATE INDEX  _stageID ON [dbo].[Státná pozemkový úřad$Cust_ Ledger Entry]([Stage ID])    
       
/*
LEGEND:

[New Customer No_]  -> VS v novém systému
[New Customer Entry No_] -> Číslo položky v novém systému
[Stage ID] -> Stage ID z rozhraní (pfimport.Prescript)
[Old Customer No_]  -> VS ve starém systému
[Old Customer Entry No_] -> Číslo položky ve starém systému

*/

   

