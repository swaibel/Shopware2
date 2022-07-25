SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
/****** vw_TaxDiscounts  ******/
CREATE VIEW [dbo].[vw_TaxDiscounts]
AS
SELECT        dbo.RO_Repair_Orders.id AS P_results_id, dbo.RO_Repair_Orders.number AS RONumber, dbo.Shops.identifier AS shop_id, CONVERT(varchar(10), DATEADD(hour, - 7, dbo.RO_Repair_Orders.closed_at), 120) AS ClosedDate, 
                         ISNULL(CAST(dbo.RO_Repair_Orders.part_discount_cents / 100.0 AS decimal(8, 2)), 0) * - 1 AS PartDiscountDollars, ISNULL(CAST(dbo.RO_Repair_Orders.labor_discount_cents / 100.0 AS decimal(8, 2)), 0) 
                         * - 1 AS LaborDiscountDollars, dbo.RO_Repair_Orders.part_tax_rate, dbo.RO_Repair_Orders.labor_tax_rate, dbo.Stores.StateTaxRate, dbo.Stores.CityTaxRate, 
                         CASE WHEN dbo.RO_Repair_Orders.part_tax_rate > 0 THEN isnull(dbo.vw_ROTaxDiscounts.PartDiscountTax, 0) ELSE 0 END AS PartTaxDiscount, 
                         CASE WHEN dbo.RO_Repair_Orders.part_tax_rate > 0 THEN isnull(dbo.vw_ROTaxDiscounts.PartDiscountTax / (dbo.RO_Repair_Orders.part_tax_rate * .01) * ((dbo.Stores.StateTaxRate * .01)), 0) 
                         ELSE 0 END AS StatePartTaxDiscount, CASE WHEN dbo.RO_Repair_Orders.part_tax_rate > 0 THEN isnull(dbo.vw_ROTaxDiscounts.PartDiscountTax / (dbo.RO_Repair_Orders.part_tax_rate * .01) 
                         * ((dbo.Stores.CityTaxRate * .01)), 0) ELSE 0 END AS CityPartTaxDiscount, CASE WHEN dbo.RO_Repair_Orders.labor_tax_rate > 0 AND 
                         dbo.RO_Repair_Orders.labor_discount_cents > 0 THEN isnull(dbo.vw_ROTaxDiscounts.LaborDiscountTax, 0) ELSE 0 END AS LaborTaxDiscount, 
                         CASE WHEN dbo.RO_Repair_Orders.labor_tax_rate > 0 THEN isnull(dbo.vw_ROTaxDiscounts.LaborDiscountTax / (dbo.RO_Repair_Orders.part_tax_rate * .01) * ((dbo.Stores.StateTaxRate * .01)), 0) 
                         ELSE 0 END AS StateLaborTaxDiscount, CASE WHEN dbo.RO_Repair_Orders.labor_tax_rate > 0 THEN isnull(dbo.vw_ROTaxDiscounts.LaborDiscountTax / (dbo.RO_Repair_Orders.part_tax_rate * .01) 
                         * ((dbo.Stores.CityTaxRate * .01)), 0) ELSE 0 END AS CityLaborTaxDiscount
FROM            dbo.RO_Repair_Orders INNER JOIN
                         dbo.Shops ON dbo.RO_Repair_Orders.shop_id = dbo.Shops.id INNER JOIN
                         dbo.Stores ON dbo.Shops.identifier = dbo.Stores.StoreNum INNER JOIN
                         dbo.vw_ROTaxDiscounts ON dbo.RO_Repair_Orders.id = dbo.vw_ROTaxDiscounts.P_results_id
GO
EXEC sp_addextendedproperty N'MS_Description', N'Calculates the total tax discounts', 'SCHEMA', N'dbo', 'VIEW', N'vw_TaxDiscounts', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_DiagramPane1', N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[31] 4[3] 2[48] 3) )"
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
               Bottom = 136
               Right = 269
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Shops"
            Begin Extent = 
               Top = 6
               Left = 307
               Bottom = 136
               Right = 509
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Stores"
            Begin Extent = 
               Top = 6
               Left = 547
               Bottom = 222
               Right = 742
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "vw_ROTaxDiscounts"
            Begin Extent = 
               Top = 101
               Left = 265
               Bottom = 279
               Right = 449
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
      Begin ColumnWidths = 14
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
         SortOrder ', 'SCHEMA', N'dbo', 'VIEW', N'vw_TaxDiscounts', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_DiagramPane2', N'= 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
', 'SCHEMA', N'dbo', 'VIEW', N'vw_TaxDiscounts', NULL, NULL
GO
DECLARE @xp int
SELECT @xp=2
EXEC sp_addextendedproperty N'MS_DiagramPaneCount', @xp, 'SCHEMA', N'dbo', 'VIEW', N'vw_TaxDiscounts', NULL, NULL
GO
