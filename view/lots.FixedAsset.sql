IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[lots].[FixedAsset]') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [lots].[FixedAsset]
GO

CREATE VIEW [lots].[FixedAsset]
WITH ENCRYPTION
AS

WITH DisposalDateCTE ( [No_], [Disposal Date])
AS
(
    SELECT [FA No_] AS [No_], MAX([Disposal Date])
    FROM [synonym].[FADepreciationBook] fadb
    WHERE NOT EXISTS ( SELECT [FA No_]
                            FROM [synonym].[FADepreciationBook] fadb2
                            WHERE fadb2.[Disposal Date] = '1753-01-01' AND
                                  fadb2.[FA No_] = fadb.[FA No_])
    GROUP BY [FA No_]
)

SELECT
       fa.[Timestamp]
      ,fa.[No_]
      ,fa.[Description]
      ,fa.[Description 2]
      ,fa.[FA Posting Group]
      ,fa.[Card Type]
      ,fa.[Land Register No_]
      ,fa.[Area]
      ,fa.[Ownership ID]
      ,fa.[Origin No_]
      ,fa.[Sale]
      ,ISNULL(ddcte.[Disposal Date], CAST('1753-01-01' AS datetime)) [Disposal Date]

FROM [synonym].[FixedAsset] fa LEFT JOIN
     DisposalDateCTE ddcte ON (fa.[No_] = ddcte.[No_] )
WHERE [Card Type] = 2 -- Land 

/*
LEGEND:
(PK) No. -> číslo majetku
Description -> Popis
Shortcut Dimension 1 Code -> Kod 1 demenze (Středisko), číselník export.Department
FA Posting Group -> Účtoskupina majetku, číselník export.FAPostingGroup
Description 2 ->  popis 2
Disposal Data -> Datum vyřazení
Card Type -> Typ karty (2 - pozemek)
Area -> Výměra
Origin No_ -> Původné číslo
Ownership ID -> číslo listu vlastnictví
Land RegisterNo_ -> Katastr
Sale -> Karta je určena k prodeji
*/


