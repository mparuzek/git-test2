IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[dbo].[StageMonitorTrace]') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [dbo].[StageMonitorTrace]
GO
CREATE VIEW [dbo].[StageMonitorTrace] AS
SELECT
	[ID],
    [Created Date]

FROM [synonym].[MonitorTrace]

GO

GO
GRANT SELECT ON [dbo].[StageMonitorTrace] TO [$ndo$shadow]
