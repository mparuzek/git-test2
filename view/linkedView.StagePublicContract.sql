IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[dbo].[StagePublicContract]') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [dbo].[StagePublicContract]
GO
CREATE VIEW [dbo].[StagePublicContract] AS
SELECT
	[ID] ,
    [No_] ,
    [Type for Statement] ,
    [Description] ,
    [Public Contract Job Type] ,
    [Vendor No_] ,
    [Person Responsible] ,
    [Global Dimension 1 Code] ,
    [Global Dimension 2 Code] ,
    [Blocked] ,
    [Status] ,
    [Starting Date] ,
    [Ending Date] ,
    [Contract Date] ,
    [Starting Year] ,
    [Ending Year] ,
	[Created Date]

  FROM [synonym].[PublicContract]

GO

GO
GRANT SELECT ON [dbo].[StagePublicContract] TO [$ndo$shadow]

/* DUMMY VIEW FOR NAV
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[dbo].[StagePublicContract]') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [dbo].[StagePublicContract]
GO
CREATE VIEW [dbo].[StagePublicContract] AS
SELECT
	0 [ID] ,
    ''[No_] ,
    0 [Type for Statement] ,
    '' [Description] ,
    '' [Public Contract Job Type] ,
    '' [Vendor No_] ,
    '' [Person Responsible] ,
    '' [Global Dimension 1 Code] ,
    '' [Global Dimension 2 Code] ,
    0 [Blocked] ,
    0 [Status] ,
    CAST('2016-01-01' as datetime) [Starting Date] ,
    CAST('2016-01-01' as datetime)  [Ending Date] ,
    CAST('2016-01-01' as datetime)  [Contract Date] ,
    2016 [Starting Year] ,
    2016 [Ending Year] ,
	CAST('2016-01-01' as datetime)  [Created Date]
 */
