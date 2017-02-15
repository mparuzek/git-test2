CREATE VIEW [dbo].[NoImportPurchOrder] AS
SELECT      StagePO.ID
           ,StagePO.[Vendor No_]
           ,StagePO.[Account No_]
           ,StagePO.[Document Date]
           ,StagePO.[Order Date]
           ,StagePO.[Quantity]
           ,StagePO.Description
           ,StagePO.AmountIncludingVAT
           ,StagePO.[Shortcut Dimension 1 Code]
           ,StagePO.[Shortcut Dimension 2 Code]
           ,StagePO.[Employee No_]
           ,StagePO.[eSpis No_]
           ,StagePO.UID
           ,StagePO.[External ID]
FROM         synonym.PurchOrder AS StagePO LEFT OUTER JOIN
                      dbo.[PF$Purchase Header] AS PH ON StagePO.ID = PH.[Stage ID]
WHERE     (PH.[Stage ID] IS NULL)
