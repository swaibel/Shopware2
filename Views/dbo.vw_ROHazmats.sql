SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[vw_ROHazmats]
AS
SELECT        dbo.RO_Repair_Orders.id AS P_results_id, dbo.Shops.identifier AS shop_id, dbo.RO_Repair_Orders.number AS RONumber, CONVERT(varchar(10), DATEADD(hour, - 7, dbo.RO_Repair_Orders.closed_at), 120) AS ClosedDate, 
                         dbo.RO_Hazmats.name, dbo.RO_Hazmats.fee_cents, CAST(dbo.RO_Hazmats.fee_cents * dbo.RO_Hazmats.quantity / 100.0 AS decimal(8, 2)) AS HazmatsDollars, dbo.RO_Repair_Orders.hazmat_tax_rate, 
                         CASE WHEN dbo.RO_Hazmats.taxable = 1 THEN CASE WHEN dbo.RO_Repair_Orders.hazmat_tax_rate > 0 THEN CASE WHEN (dbo.RO_Hazmats.fee_cents) > 0 THEN dbo.RO_Hazmats.quantity * (dbo.RO_Hazmats.fee_cents) 
                         * (dbo.RO_Repair_Orders.hazmat_tax_rate * .01) / 100 ELSE 0 END ELSE 0 END ELSE 0 END AS HazmatsTaxDollars, 
                         CASE WHEN dbo.RO_Hazmats.taxable = 1 THEN CASE WHEN dbo.RO_Repair_Orders.hazmat_tax_rate > 0 THEN CASE WHEN (dbo.RO_Hazmats.fee_cents) > 0 THEN dbo.RO_Hazmats.quantity * (dbo.RO_Hazmats.fee_cents) 
                         * (dbo.Stores.StateTaxRate * .01) / 100 ELSE 0 END ELSE 0 END ELSE 0 END AS StateTaxDollars, 
                         CASE WHEN dbo.RO_Hazmats.taxable = 1 THEN CASE WHEN dbo.RO_Repair_Orders.hazmat_tax_rate > 0 THEN CASE WHEN (dbo.RO_Hazmats.fee_cents) > 0 THEN dbo.RO_Hazmats.quantity * (dbo.RO_Hazmats.fee_cents) 
                         * (dbo.Stores.CityTaxRate * .01) / 100 ELSE 0 END ELSE 0 END ELSE 0 END AS CityTaxDollars, dbo.RO_Hazmats.taxable, dbo.Stores.StateTaxRate, dbo.Stores.CityTaxRate
FROM            dbo.RO_Repair_Orders INNER JOIN
                         dbo.RO_Services ON dbo.RO_Repair_Orders.id = dbo.RO_Services.P_results_id INNER JOIN
                         dbo.RO_Hazmats ON dbo.RO_Services.id = dbo.RO_Hazmats.P_results_services_id INNER JOIN
                         dbo.Shops ON dbo.RO_Repair_Orders.shop_id = dbo.Shops.id INNER JOIN
                         dbo.Stores ON dbo.Shops.identifier = dbo.Stores.StoreNum
WHERE        (dbo.RO_Repair_Orders.number > 199999)
GO
EXEC sp_addextendedproperty N'MS_Description', N'Gets the hazmats for a RO', 'SCHEMA', N'dbo', 'VIEW', N'vw_ROHazmats', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_DiagramPane1', N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[33] 4[3] 2[45] 3) )"
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
               Top = 5
               Left = 22
               Bottom = 277
               Right = 253
            End
            DisplayFlags = 280
            TopColumn = 20
         End
         Begin Table = "RO_Services"
            Begin Extent = 
               Top = 6
               Left = 291
               Bottom = 228
               Right = 475
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "RO_Hazmats"
            Begin Extent = 
               Top = 6
               Left = 519
               Bottom = 288
               Right = 715
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Shops"
            Begin Extent = 
               Top = 165
               Left = 280
               Bottom = 295
               Right = 482
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Stores"
            Begin Extent = 
               Top = 138
               Left = 753
               Bottom = 268
               Right = 941
            End
            DisplayFlags = 280
            TopColumn = 3
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
  ', 'SCHEMA', N'dbo', 'VIEW', N'vw_ROHazmats', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_DiagramPane2', N'       Width = 1500
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
', 'SCHEMA', N'dbo', 'VIEW', N'vw_ROHazmats', NULL, NULL
GO
DECLARE @xp int
SELECT @xp=2
EXEC sp_addextendedproperty N'MS_DiagramPaneCount', @xp, 'SCHEMA', N'dbo', 'VIEW', N'vw_ROHazmats', NULL, NULL
GO
