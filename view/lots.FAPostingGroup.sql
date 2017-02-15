
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[lots].[FAPostingGroup]') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [lots].[FAPostingGroup]
GO
CREATE VIEW lots.FAPostingGroup WITH ENCRYPTION AS 
SELECT pg.[Code]
      ,pg.[Description]
      ,epg.[FA Posting Type (Land)] [FA Posting type]
      ,epg.[Code] [Reason Code]
      ,rc.[Overestimation]
	  ,iif(fas.[Reason Code (MoF Transfer)] <> '', 1,0) AS [Reason Code (MoF Transfer)] 

      

  FROM [synonym].[FAPostingGroup] pg  JOIN
       [synonym].[FAExtendedPostingGroup] epg ON (pg.[Code] = epg.[FA Posting Group Code]) JOIN
       [synonym].[ReasonCode] rc ON (rc.[Code] = epg.[Code]) LEFT JOIN
	   [synonym].[FASetup] fas ON (rc.[Code] = fas.[Reason Code (MoF Transfer)])
  WHERE pg.[Land] = 1

/*
(PK) Code -> Kod
(PK) Reason Code - Kod priciny
(PK) FA Posting Type -> Typ uctovani DM
Overestimation -> Preceneni

*/


  
GO



