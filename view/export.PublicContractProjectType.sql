
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[export].[PublicContractProjectType]') and OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [export].[PublicContractProjectType]
GO

CREATE VIEW [export].[PublicContractProjectType]  WITH ENCRYPTION AS
SELECT  [Code]
      , [Description]
  FROM [synonym].[PublicContractProjectType]
