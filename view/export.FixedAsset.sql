
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[export].[FixedAsset]') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [export].[FixedAsset]
GO


CREATE VIEW [export].[FixedAsset]
WITH ENCRYPTION
AS

WITH AcquisitionDate (No_, [Posting Date])
        AS
        (
            SELECT [No_], MIN([Posting Date]) [Posting Date]
            FROM synonym.FALedgerEntry fle JOIN
                 synonym.FixedAsset fa ON (fa.[No_] = fle.[FA No_])
            WHERE [Card Type] = 1 AND fle.[FA Posting Type] = 0
            GROUP BY [No_]
        )
    , DepreciationDate (No_, [Posting Date])
        AS
        (
            SELECT [No_], MAX([Posting Date]) [Posting Date]
            FROM synonym.FALedgerEntry fle JOIN
                 synonym.FixedAsset fa ON (fa.[No_] = fle.[FA No_])
            WHERE [Card Type] = 1 AND fle.[FA Posting Type] = 1
            GROUP BY [No_]
        )

    , DisposalDateCTE ( [No_], [Disposal Date])
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
      ,fa.[Card Type]
      ,fa.[No_]
      ,fa.[Description]
      ,fa.[Description 2]
      ,fa.[Classification Type]
      ,fa.[Classification Code]
      ,fa.[Sale]
      ,fadb.[Depreciation Table Code]
      ,ISNULL(ddcte.[Disposal Date], CAST('1753-01-01' AS datetime)) [Disposal Date]
      ,ISNULL(fadb.[Depreciation Starting Date], CAST('1753-01-01' AS datetime)) [Depreciation Starting Date]
      ,fa.[FA Posting Group]
      ,ISNULL(adt.[Posting Date], CAST('1753-01-01' AS datetime)) [Acquisition Date]
      ,ISNULL(ddt.[Posting Date], CAST('1753-01-01' AS datetime)) [Depreciation Date]

FROM [synonym].[FixedAsset] fa  LEFT JOIN
     [synonym].[FADepreciationBook] fadb ON (fa.[No_] = fadb.[FA No_]) JOIN
     [synonym].[FASetup] fas ON (fas.[Import Depr_ Book Code] = fadb.[Depreciation Book Code]) LEFT JOIN
     AcquisitionDate adt ON (fa.[No_] = adt.No_) LEFT JOIN
     DepreciationDate ddt ON (fa.[No_] = ddt.No_) LEFT JOIN
     DisposalDateCTE ddcte ON (fa.[No_] = ddcte.[No_])
WHERE [Card Type] = 1 -- boudicky

/*
LEGEND:
Card Type -> Typ karty (1 - spravovaný)
(PK) No. -> číslo majetku
Description -> Popis
Description 2 ->  popis 2
FA Posting Group -> Účtoskupina majetku, číselník export.FAPostingGroup
Classification Type -> Typ klasifikace
Classification Code -> Kód klasifikace
Depreciation Table Code -> Kód tabulky odpisů
Depreciation Starting Date -> Počáteční datum odepisování
Acquisition Date -> První datum pořízení
Depreciation Date -> Poslední datum odpisu
Disposal Date -> Datum odpisu
Sale -> Karta je určena k prodeji
*/


