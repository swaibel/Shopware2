SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[vw_Inventory]
AS
SELECT        dbo.Shops.identifier AS shop_id, dbo.Stores.Company, dbo.Inventory.number AS PartNumber, dbo.Inventory.description, ROUND(dbo.Inventory.list_price_cents * 1.0 / 100, 2) AS ListPrice, 
                         ROUND(dbo.Inventory.cost_cents * 1.0 / 100, 2) AS AvgCost, dbo.Inventory_Master.StdCost, dbo.Inventory.quantity_on_hand AS OnHand, dbo.Inventory.min_stock AS MIN, dbo.Inventory.max_stock AS MAX, 
                         dbo.Inventory.location, dbo.Inventory.brand, dbo.Inventory.quantity_in_progress AS commited, NULL AS ActualCount
FROM            dbo.Inventory INNER JOIN
                         dbo.Shops ON dbo.Inventory.shop_id = dbo.Shops.id INNER JOIN
                         dbo.Stores ON dbo.Shops.identifier = dbo.Stores.StoreNum LEFT OUTER JOIN
                         dbo.Inventory_Master ON dbo.Inventory.number = dbo.Inventory_Master.PartNum
GO
EXEC sp_addextendedproperty N'MS_Description', N'Shows Shopware inventory and Standard cost from master inventory', 'SCHEMA', N'dbo', 'VIEW', N'vw_Inventory', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_DiagramPane1', N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Inventory"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 280
               Right = 368
            End
            DisplayFlags = 280
            TopColumn = 19
         End
         Begin Table = "Shops"
            Begin Extent = 
               Top = 6
               Left = 406
               Bottom = 136
               Right = 608
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Inventory_Master"
            Begin Extent = 
               Top = 6
               Left = 646
               Bottom = 136
               Right = 816
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Stores"
            Begin Extent = 
               Top = 148
               Left = 619
               Bottom = 310
               Right = 814
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 15
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
  ', 'SCHEMA', N'dbo', 'VIEW', N'vw_Inventory', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_DiagramPane2', N'       SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
', 'SCHEMA', N'dbo', 'VIEW', N'vw_Inventory', NULL, NULL
GO
DECLARE @xp int
SELECT @xp=2
EXEC sp_addextendedproperty N'MS_DiagramPaneCount', @xp, 'SCHEMA', N'dbo', 'VIEW', N'vw_Inventory', NULL, NULL
GO
