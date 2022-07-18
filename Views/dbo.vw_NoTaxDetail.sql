SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[vw_NoTaxDetail]
AS
SELECT        dbo.RO_Repair_Orders.number AS RONumber, CONVERT(varchar(10), DATEADD(hour, - 7, dbo.RO_Repair_Orders.closed_at), 120) AS ClosedDate, dbo.Shops.identifier AS shop_id, 
                         dbo.vw_NoTax_Parts.NonTaxed + dbo.vw_NoTax_Labors.NonTaxed + dbo.vw_NoTax_Hazmats.NonTaxed + dbo.vw_NoTax_ShopSupplies.NonTaxed + dbo.vw_NoTax_Sublets.NonTaxed AS TotalNonTaxed
FROM            dbo.RO_Repair_Orders LEFT OUTER JOIN
                         dbo.vw_NoTax_Sublets ON dbo.RO_Repair_Orders.id = dbo.vw_NoTax_Sublets.P_results_id LEFT OUTER JOIN
                         dbo.vw_NoTax_ShopSupplies ON dbo.RO_Repair_Orders.id = dbo.vw_NoTax_ShopSupplies.P_results_id LEFT OUTER JOIN
                         dbo.vw_NoTax_Hazmats ON dbo.RO_Repair_Orders.id = dbo.vw_NoTax_Hazmats.P_results_id LEFT OUTER JOIN
                         dbo.vw_NoTax_Labors ON dbo.RO_Repair_Orders.id = dbo.vw_NoTax_Labors.P_results_id LEFT OUTER JOIN
                         dbo.Shops ON dbo.RO_Repair_Orders.shop_id = dbo.Shops.id LEFT OUTER JOIN
                         dbo.vw_NoTax_Parts ON dbo.RO_Repair_Orders.id = dbo.vw_NoTax_Parts.P_results_id
WHERE        (dbo.RO_Repair_Orders.closed_at IS NOT NULL)
GO
EXEC sp_addextendedproperty N'MS_DiagramPane1', N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[44] 4[18] 2[20] 3) )"
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
               Left = 16
               Bottom = 328
               Right = 247
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "vw_NoTax_Sublets"
            Begin Extent = 
               Top = 216
               Left = 485
               Bottom = 346
               Right = 655
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "vw_NoTax_ShopSupplies"
            Begin Extent = 
               Top = 202
               Left = 304
               Bottom = 332
               Right = 474
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "vw_NoTax_Hazmats"
            Begin Extent = 
               Top = 41
               Left = 414
               Bottom = 171
               Right = 584
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "vw_NoTax_Labors"
            Begin Extent = 
               Top = 27
               Left = 560
               Bottom = 157
               Right = 730
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Shops"
            Begin Extent = 
               Top = 138
               Left = 768
               Bottom = 268
               Right = 970
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "vw_NoTax_Parts"
            Begin Extent = 
               Top = 0
               Left = 778
               Bottom = 130
               Right =', 'SCHEMA', N'dbo', 'VIEW', N'vw_NoTaxDetail', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_DiagramPane2', N' 948
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
', 'SCHEMA', N'dbo', 'VIEW', N'vw_NoTaxDetail', NULL, NULL
GO
DECLARE @xp int
SELECT @xp=2
EXEC sp_addextendedproperty N'MS_DiagramPaneCount', @xp, 'SCHEMA', N'dbo', 'VIEW', N'vw_NoTaxDetail', NULL, NULL
GO
