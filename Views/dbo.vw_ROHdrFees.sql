SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
/****** vw_ROHdrFees ******/
CREATE VIEW [dbo].[vw_ROHdrFees]
AS
SELECT        RO.id, RO.number AS RONumber, RO.part_discount_cents * .01 * - 1 AS PartDisc, RO.labor_discount_cents * .01 * - 1 AS LaborDisc, RO.supply_fee_cents * .01 AS ShopSupp, 
                         CASE WHEN [taxable] = 1 THEN round((RO.part_discount_cents * .01) * (RO.part_tax_rate * .01) * - 1, 2) ELSE 0 END AS PartDiscTax, CASE WHEN [taxable] = 1 THEN round((RO.part_discount_cents * .01) 
                         * (dbo.Stores.StateTaxRate * .01) * - 1, 2) ELSE 0 END AS PartDiscStateTax, CASE WHEN [taxable] = 1 THEN round((RO.part_discount_cents * .01) * (dbo.Stores.CityTaxRate * .01) * - 1, 2) ELSE 0 END AS PartDiscCityTax, 
                         CASE WHEN [taxable] = 1 THEN round((RO.labor_discount_cents * .01) * (RO.labor_tax_rate * .01) * - 1, 2) ELSE 0 END AS LaborDiscTax, CASE WHEN [taxable] = 1 THEN round((RO.labor_discount_cents * .01) 
                         * (dbo.Stores.StateTaxRate * .01) * - 1, 2) ELSE 0 END AS LaborDiscStateTax, CASE WHEN [taxable] = 1 THEN round((RO.labor_discount_cents * .01) * (dbo.Stores.CityTaxRate * .01) * - 1, 2) ELSE 0 END AS LaborDiscCityTax, 
                         CASE WHEN [taxable] = 1 THEN round((RO.supply_fee_cents * .01) * (RO.part_tax_rate * .01), 2) ELSE 0 END AS ShopSuppTax, CASE WHEN [taxable] = 1 THEN round((RO.supply_fee_cents * .01) 
                         * (dbo.Stores.StateTaxRate * .01), 2) ELSE 0 END AS ShopSuppStateTax, CASE WHEN [taxable] = 1 THEN round((RO.supply_fee_cents * .01) * (dbo.Stores.CityTaxRate * .01), 2) ELSE 0 END AS ShopSuppCityTax
FROM            dbo.RO_Repair_Orders AS RO INNER JOIN
                         dbo.Shops ON RO.shop_id = dbo.Shops.id INNER JOIN
                         dbo.Stores ON dbo.Shops.identifier = dbo.Stores.StoreNum
GO
EXEC sp_addextendedproperty N'MS_Description', N'Calculates the parts and labor discounts and shop supplies for each RO', 'SCHEMA', N'dbo', 'VIEW', N'vw_ROHdrFees', NULL, NULL
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
         Begin Table = "RO"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 258
               Right = 273
            End
            DisplayFlags = 280
            TopColumn = 11
         End
         Begin Table = "Shops"
            Begin Extent = 
               Top = 6
               Left = 311
               Bottom = 136
               Right = 513
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Stores"
            Begin Extent = 
               Top = 15
               Left = 551
               Bottom = 228
               Right = 739
            End
            DisplayFlags = 280
            TopColumn = 1
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
', 'SCHEMA', N'dbo', 'VIEW', N'vw_ROHdrFees', NULL, NULL
GO
DECLARE @xp int
SELECT @xp=1
EXEC sp_addextendedproperty N'MS_DiagramPaneCount', @xp, 'SCHEMA', N'dbo', 'VIEW', N'vw_ROHdrFees', NULL, NULL
GO
