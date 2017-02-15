
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[export].[Vendor]') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [export].[Vendor]
GO

CREATE VIEW [export].[Vendor]  WITH ENCRYPTION AS
    SELECT
        [No_]
        , [Name]
        , [Registration No_]
        , [VAT Registration No_]
        , [Address]
        , [Address 2]
        , [Post Code]
        , [City]
    FROM [synonym].[Vendor]
