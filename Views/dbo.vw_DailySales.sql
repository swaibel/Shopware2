SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[vw_DailySales]
AS
SELECT        CONVERT(varchar(10), DATEADD(hour, - 7, dbo.RO_Repair_Orders.closed_at), 120) AS ClosedDate, ISNULL(dbo.vw_ROPartsTotals.PartsDollars, 0) AS PartsDollars, ISNULL(dbo.vw_ROLaborTotals.LaborDollars, 0) 
                         AS LaborDollars, ISNULL(dbo.vw_ROHazmatsTotals.HazmatsDollars, 0) AS HazmatsDollars, ISNULL(dbo.vw_DiscountTotals.discounts, 0) AS Discounts, ISNULL(dbo.vw_WarrantyTotals.Warranty, 0) AS Warranty, 
                         ISNULL(dbo.vw_CustomerSatTotals.CustomerSat, 0) AS CustomerSat, ISNULL(dbo.vw_ROShopSupplies.ShopSuppliesDollars, 0) AS ShopSuppliesDollars, ISNULL(dbo.vw_ROSubletsTotals.SubletDollars, 0) AS SubletDollars, 
                         ROUND(ISNULL(dbo.vw_ROTaxDiscounts.LaborDiscountTax, 0) + ISNULL(dbo.vw_ROTaxDiscounts.PartDiscountTax, 0) + ISNULL(dbo.vw_ROLaborTotals.LaborTaxDollars, 0) 
                         + ISNULL(dbo.vw_ROHazmatsTotals.HazmatsTaxDollars, 0) + ISNULL(dbo.vw_ROSubletsTotals.SubletTaxDollars, 0) + ISNULL(dbo.vw_ROPartsTotals.PartsTaxDollars, 0) + ISNULL(dbo.vw_ROShopSupplies.SupplyTaxDollars, 
                         0), 2) AS TotalTax, dbo.RO_Repair_Orders.id, dbo.Shops.identifier AS Shop_id, dbo.RO_Repair_Orders.number AS RONumber
FROM            dbo.RO_Repair_Orders INNER JOIN
                         dbo.Shops ON dbo.RO_Repair_Orders.shop_id = dbo.Shops.id LEFT OUTER JOIN
                         dbo.vw_ROTaxDiscounts ON dbo.RO_Repair_Orders.id = dbo.vw_ROTaxDiscounts.P_results_id LEFT OUTER JOIN
                         dbo.vw_CustomerSatTotals ON dbo.RO_Repair_Orders.id = dbo.vw_CustomerSatTotals.P_results_id LEFT OUTER JOIN
                         dbo.vw_ROShopSupplies ON dbo.RO_Repair_Orders.id = dbo.vw_ROShopSupplies.P_results_id LEFT OUTER JOIN
                         dbo.vw_DiscountTotals ON dbo.RO_Repair_Orders.id = dbo.vw_DiscountTotals.P_results_id LEFT OUTER JOIN
                         dbo.vw_ROSubletsTotals ON dbo.RO_Repair_Orders.id = dbo.vw_ROSubletsTotals.P_results_id LEFT OUTER JOIN
                         dbo.vw_WarrantyTotals ON dbo.RO_Repair_Orders.id = dbo.vw_WarrantyTotals.P_results_id LEFT OUTER JOIN
                         dbo.vw_ROLaborTotals ON dbo.RO_Repair_Orders.id = dbo.vw_ROLaborTotals.P_results_id LEFT OUTER JOIN
                         dbo.vw_ROHazmatsTotals ON dbo.RO_Repair_Orders.id = dbo.vw_ROHazmatsTotals.P_results_id LEFT OUTER JOIN
                         dbo.vw_ROPartsTotals ON dbo.RO_Repair_Orders.id = dbo.vw_ROPartsTotals.P_results_id
WHERE        (dbo.RO_Repair_Orders.closed_at IS NOT NULL)
GO
EXEC sp_addextendedproperty N'MS_Description', N'Calculates the sales totals per repair order', 'SCHEMA', N'dbo', 'VIEW', N'vw_DailySales', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_DiagramPane1', N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[47] 4[14] 2[20] 3) )"
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
         Begin Table = "RO_Repair_Orders"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 175
               Right = 269
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Shops"
            Begin Extent = 
               Top = 6
               Left = 936
               Bottom = 136
               Right = 1138
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "vw_ROTaxDiscounts"
            Begin Extent = 
               Top = 200
               Left = 51
               Bottom = 330
               Right = 235
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "vw_CustomerSatTotals"
            Begin Extent = 
               Top = 223
               Left = 273
               Bottom = 319
               Right = 443
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "vw_ROShopSupplies"
            Begin Extent = 
               Top = 216
               Left = 520
               Bottom = 346
               Right = 716
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "vw_DiscountTotals"
            Begin Extent = 
               Top = 120
               Left = 520
               Bottom = 216
               Right = 690
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "vw_ROSubletsTotals"
            Begin Extent = 
               Top = 216
               Left = 754
               Bottom = 346
             ', 'SCHEMA', N'dbo', 'VIEW', N'vw_DailySales', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_DiagramPane2', N'  Right = 930
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "vw_WarrantyTotals"
            Begin Extent = 
               Top = 120
               Left = 728
               Bottom = 216
               Right = 898
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "vw_ROLaborTotals"
            Begin Extent = 
               Top = 6
               Left = 520
               Bottom = 119
               Right = 693
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "vw_ROHazmatsTotals"
            Begin Extent = 
               Top = 6
               Left = 731
               Bottom = 119
               Right = 920
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "vw_ROPartsTotals"
            Begin Extent = 
               Top = 30
               Left = 323
               Bottom = 177
               Right = 498
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
         Column = 3555
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
', 'SCHEMA', N'dbo', 'VIEW', N'vw_DailySales', NULL, NULL
GO
DECLARE @xp int
SELECT @xp=2
EXEC sp_addextendedproperty N'MS_DiagramPaneCount', @xp, 'SCHEMA', N'dbo', 'VIEW', N'vw_DailySales', NULL, NULL
GO
