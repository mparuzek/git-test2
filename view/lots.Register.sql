
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[lots].[LandRegister]') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [lots].[LandRegister]
GO

CREATE VIEW lots.LandRegister WITH ENCRYPTION AS

SELECT lre.[timestamp]
      ,lre.[No_]
      ,lre.[Name]
      ,(SELECT COUNT(fa.[No_])  FROM [lots].[FixedAsset] fa WHERE fa.[Land Register No_] = lre.[No_] ) [Used]
   FROM [synonym].[LandRegister] lre
        
/*
Legend:
(PK) No_ ->, Číslo
Name -> Název
*/

GO


