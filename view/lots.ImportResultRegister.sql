
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[lots].[ImportResultRegister]') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [lots].[ImportResultRegister]
GO

CREATE VIEW [lots].[ImportResultRegister]  WITH ENCRYPTION AS
SELECT

  stage.[ID]
, info.[Status] [Process Type]
, info.[Error Text]
, info.[Proces Datetime] [Process Date]
, stage.[External ID]
, stage.[No_]
, stage.[Name]
, stage.[Operation]
, stage.[Create Date]

  FROM [synonym].[SQLAPIInfo] info JOIN
       [lots].[Register] stage ON (
		stage.ID = info.[ID] )
  WHERE info.[Table ID] = 77682

  /*
LEGEND:

External ID -> Primární klíč stage tabulek
Process Type -> 0 - Vloženo, 1 - Chyba, 2 - Zpracováno, 3 - Storno
Error Text
Process Date
External ID -> Číslo požadavku přidělené CIS
Other field is same as table type.lots.RegisterType
*/
							
  
  
