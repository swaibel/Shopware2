SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[vw_DailyTaxTotals]
AS
SELECT        RO.shop_id, RO.ClosedDate, ROUND(PARTS.StateTax + LABOR.StateTax + HAZ.TotalStateTax + SHOP.TotalStateTax + PARTS.CityTax + LABOR.CityTax + HAZ.TotalCityTax + SHOP.TotalCityTax, 2) AS TotalTax, 
                         ROUND(PARTS.StateTax + LABOR.StateTax + HAZ.TotalStateTax + SHOP.TotalStateTax, 2) AS StateTax, ROUND(PARTS.CityTax + LABOR.CityTax + HAZ.TotalCityTax + SHOP.TotalCityTax, 2) AS CityTax
FROM            dbo.vw_ROShopsClosedDate AS RO LEFT OUTER JOIN
                         dbo.vw_DailyShopSuppTax AS SHOP ON RO.shop_id = SHOP.shop_id AND RO.ClosedDate = SHOP.ClosedDate LEFT OUTER JOIN
                         dbo.vw_DailyHazmatTax AS HAZ ON RO.shop_id = HAZ.shop_id AND RO.ClosedDate = HAZ.ClosedDate LEFT OUTER JOIN
                         dbo.vw_DailyTaxLaborTotals AS LABOR ON RO.shop_id = LABOR.Store_id AND RO.ClosedDate = LABOR.ClosedDate LEFT OUTER JOIN
                         dbo.vw_DailyTaxPartsTotals AS PARTS ON RO.shop_id = PARTS.shop_id AND RO.ClosedDate = PARTS.ClosedDate
GO
EXEC sp_addextendedproperty N'MS_Description', N'Totals all the taxes per store per day', 'SCHEMA', N'dbo', 'VIEW', N'vw_DailyTaxTotals', NULL, NULL
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
               Bottom = 102
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "SHOP"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 136
               Right = 416
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "HAZ"
            Begin Extent = 
               Top = 6
               Left = 454
               Bottom = 136
               Right = 624
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "LABOR"
            Begin Extent = 
               Top = 6
               Left = 662
               Bottom = 136
               Right = 832
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "PARTS"
            Begin Extent = 
               Top = 6
               Left = 870
               Bottom = 136
               Right = 1040
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
   End', 'SCHEMA', N'dbo', 'VIEW', N'vw_DailyTaxTotals', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_DiagramPane2', N'
End
', 'SCHEMA', N'dbo', 'VIEW', N'vw_DailyTaxTotals', NULL, NULL
GO
DECLARE @xp int
SELECT @xp=2
EXEC sp_addextendedproperty N'MS_DiagramPaneCount', @xp, 'SCHEMA', N'dbo', 'VIEW', N'vw_DailyTaxTotals', NULL, NULL
GO
