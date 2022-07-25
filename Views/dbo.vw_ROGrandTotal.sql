SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[vw_ROGrandTotal]
AS
SELECT        dbo.vw_RORepairOrders.RONumber, ISNULL(dbo.vw_ROLaborTotals.LaborDollars, 0) + ISNULL(dbo.vw_ROSubletsTotals.SubletDollars, 0) + ISNULL(dbo.vw_ROPartsTotals.PartsDollars, 0) 
                         + ISNULL(dbo.vw_ROHazmatsTotals.HazmatsDollars, 0) + ISNULL(dbo.vw_ROShopSupplies.ShopSuppliesDollars, 0) + ISNULL(dbo.vw_RODiscounts.PartDiscountDollars, 0) 
                         + ISNULL(dbo.vw_RODiscounts.LaborDiscountDollars, 0) + ISNULL(dbo.vw_ROPartsTotals.PartsTaxDollars, 0) + ISNULL(dbo.vw_ROLaborTotals.LaborTaxDollars, 0) + ISNULL(dbo.vw_ROSubletsTotals.SubletTaxDollars, 0) 
                         + ISNULL(dbo.vw_ROHazmatsTotals.HazmatsTaxDollars, 0) + ISNULL(dbo.vw_ROShopSupplies.SupplyTaxDollars, 0) + ISNULL(dbo.vw_ROTaxDiscounts.PartDiscountTax, 0) 
                         + ISNULL(dbo.vw_ROTaxDiscounts.LaborDiscountTax, 0) AS InvoiceTotal
FROM            dbo.vw_RORepairOrders LEFT OUTER JOIN
                         dbo.vw_ROTaxDiscounts ON dbo.vw_RORepairOrders.id = dbo.vw_ROTaxDiscounts.P_results_id LEFT OUTER JOIN
                         dbo.vw_ROLaborTotals ON dbo.vw_RORepairOrders.id = dbo.vw_ROLaborTotals.P_results_id LEFT OUTER JOIN
                         dbo.vw_ROSubletsTotals ON dbo.vw_RORepairOrders.id = dbo.vw_ROSubletsTotals.P_results_id LEFT OUTER JOIN
                         dbo.vw_ROPartsTotals ON dbo.vw_RORepairOrders.id = dbo.vw_ROPartsTotals.P_results_id LEFT OUTER JOIN
                         dbo.vw_ROHazmatsTotals ON dbo.vw_RORepairOrders.id = dbo.vw_ROHazmatsTotals.P_results_id LEFT OUTER JOIN
                         dbo.vw_ROShopSupplies ON dbo.vw_RORepairOrders.id = dbo.vw_ROShopSupplies.P_results_id LEFT OUTER JOIN
                         dbo.vw_RODiscounts ON dbo.vw_RORepairOrders.id = dbo.vw_RODiscounts.P_results_id
GO
EXEC sp_addextendedproperty N'MS_Description', N'Totals all items on a RO', 'SCHEMA', N'dbo', 'VIEW', N'vw_ROGrandTotal', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_DiagramPane1', N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[20] 3) )"
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
         Begin Table = "vw_RORepairOrders"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "vw_ROTaxDiscounts"
            Begin Extent = 
               Top = 138
               Left = 739
               Bottom = 293
               Right = 932
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "vw_ROLaborTotals"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 136
               Right = 419
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "vw_ROSubletsTotals"
            Begin Extent = 
               Top = 6
               Left = 457
               Bottom = 136
               Right = 633
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "vw_ROPartsTotals"
            Begin Extent = 
               Top = 6
               Left = 671
               Bottom = 136
               Right = 846
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "vw_ROHazmatsTotals"
            Begin Extent = 
               Top = 138
               Left = 38
               Bottom = 268
               Right = 227
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "vw_ROShopSupplies"
            Begin Extent = 
               Top = 138
               Left = 265
               Bottom = 268
         ', 'SCHEMA', N'dbo', 'VIEW', N'vw_ROGrandTotal', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_DiagramPane2', N'      Right = 461
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "vw_RODiscounts"
            Begin Extent = 
               Top = 138
               Left = 499
               Bottom = 268
               Right = 701
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
      Begin ColumnWidths = 9
         Width = 284
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
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
', 'SCHEMA', N'dbo', 'VIEW', N'vw_ROGrandTotal', NULL, NULL
GO
DECLARE @xp int
SELECT @xp=2
EXEC sp_addextendedproperty N'MS_DiagramPaneCount', @xp, 'SCHEMA', N'dbo', 'VIEW', N'vw_ROGrandTotal', NULL, NULL
GO
