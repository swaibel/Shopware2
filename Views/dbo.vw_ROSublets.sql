SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[vw_ROSublets]
AS
SELECT        dbo.RO_Repair_Orders.id AS P_results_id, dbo.Shops.identifier AS shop_id, dbo.RO_Repair_Orders.number AS RONumber, CONVERT(varchar(10), DATEADD(hour, - 7, dbo.RO_Repair_Orders.closed_at), 120) AS ClosedDate, 
                         dbo.RO_Sublets.name, dbo.RO_Sublets.price_cents, dbo.RO_Sublets.cost_cents, dbo.RO_Sublets.provider, dbo.RO_Sublets.invoice_number, dbo.RO_Sublets.description, dbo.RO_Sublets.vendor_id, 
                         dbo.RO_Sublets.invoice_date, CAST(dbo.RO_Sublets.price_cents / 100.0 AS decimal(8, 2)) AS SubletDollars, ISNULL(CAST(dbo.RO_Sublets.cost_cents / 100.0 AS decimal(8, 2)), 0) AS CostDollars, 
                         CAST(dbo.RO_Sublets.price_cents / 100.0 AS decimal(8, 2)) - ISNULL(CAST(dbo.RO_Sublets.cost_cents / 100.0 AS decimal(8, 2)), 0) AS SubletProfit, dbo.RO_Sublets.taxable, dbo.RO_Repair_Orders.sublet_tax_rate, 
                         CASE WHEN dbo.RO_Sublets.taxable = 1 THEN CASE WHEN dbo.RO_Repair_Orders.sublet_tax_rate > 0 THEN CASE WHEN (dbo.RO_Sublets.price_cents) <> 0 THEN (dbo.RO_Sublets.price_cents) 
                         * (dbo.RO_Repair_Orders.sublet_tax_rate * .01) / 100 ELSE 0 END ELSE 0 END ELSE 0 END AS SubletTaxDollars, 
                         CASE WHEN dbo.RO_Sublets.taxable = 1 THEN CASE WHEN dbo.RO_Repair_Orders.sublet_tax_rate > 0 THEN CASE WHEN (dbo.RO_Sublets.price_cents) <> 0 THEN (dbo.RO_Sublets.price_cents) 
                         * (dbo.Stores.StateTaxRate * .01) / 100 ELSE 0 END ELSE 0 END ELSE 0 END AS StateTaxDollars, 
                         CASE WHEN dbo.RO_Sublets.taxable = 1 THEN CASE WHEN dbo.RO_Repair_Orders.sublet_tax_rate > 0 THEN CASE WHEN (dbo.RO_Sublets.price_cents) <> 0 THEN (dbo.RO_Sublets.price_cents) 
                         * (dbo.Stores.CityTaxRate * .01) / 100 ELSE 0 END ELSE 0 END ELSE 0 END AS CityTaxDollars, dbo.Stores.StateTaxRate, dbo.Stores.CityTaxRate
FROM            dbo.RO_Repair_Orders INNER JOIN
                         dbo.RO_Services ON dbo.RO_Repair_Orders.id = dbo.RO_Services.P_results_id INNER JOIN
                         dbo.RO_Sublets ON dbo.RO_Services.id = dbo.RO_Sublets.P_results_services_id INNER JOIN
                         dbo.Shops ON dbo.RO_Repair_Orders.shop_id = dbo.Shops.id INNER JOIN
                         dbo.Stores ON dbo.Shops.identifier = dbo.Stores.StoreNum
GO
EXEC sp_addextendedproperty N'MS_Description', N'Gets the sublets for each RO', 'SCHEMA', N'dbo', 'VIEW', N'vw_ROSublets', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_DiagramPane1', N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[57] 4[5] 2[20] 3) )"
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
               Bottom = 304
               Right = 269
            End
            DisplayFlags = 280
            TopColumn = 11
         End
         Begin Table = "RO_Services"
            Begin Extent = 
               Top = 6
               Left = 307
               Bottom = 136
               Right = 491
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "RO_Sublets"
            Begin Extent = 
               Top = 6
               Left = 529
               Bottom = 286
               Right = 730
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "Shops"
            Begin Extent = 
               Top = 150
               Left = 300
               Bottom = 280
               Right = 502
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Stores"
            Begin Extent = 
               Top = 196
               Left = 788
               Bottom = 412
               Right = 976
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
      Begin ColumnWidths = 20
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
  ', 'SCHEMA', N'dbo', 'VIEW', N'vw_ROSublets', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_DiagramPane2', N'       Width = 1500
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
', 'SCHEMA', N'dbo', 'VIEW', N'vw_ROSublets', NULL, NULL
GO
DECLARE @xp int
SELECT @xp=2
EXEC sp_addextendedproperty N'MS_DiagramPaneCount', @xp, 'SCHEMA', N'dbo', 'VIEW', N'vw_ROSublets', NULL, NULL
GO
