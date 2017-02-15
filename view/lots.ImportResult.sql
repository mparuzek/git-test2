
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[lots].[ImportResult]') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [lots].[ImportResult]
GO

CREATE VIEW [lots].[ImportResult]  WITH ENCRYPTION AS
SELECT

/*
Interface Type
External ID
Process Type
Error Text
Process Date
*/


  FROM [synonym].[SQLAPIInfo] 
  WHERE <only lots interface>

  /*
LEGEND:
Interface Type -> 77680 - LotsFixedAsset; 77682 - StageLotsRegister; 7683 - StageStornoOperation
External ID -> Primární klíč stage tabulek
Process Type -> 0 - Vloženo, 1 - Chyba, 2 - Zpracováno, 3 - Storno
Error Text
Process Date

*/
							
  
  
