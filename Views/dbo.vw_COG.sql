SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[vw_COG]
AS
SELECT        dbo.Shops.identifier AS store_id, dbo.RO_Repair_Orders.number AS RONumber, RIGHT(dbo.RO_Parts.number, 25) AS part_no, CONVERT(varchar(10), DATEADD(hour, - 7, dbo.RO_Repair_Orders.closed_at), 120) AS ClosedDate, 
                         RIGHT(dbo.RO_Parts.description, 25) AS description, dbo.RO_Parts.quantity, CAST(dbo.RO_Parts.quoted_price_cents / 100.0 AS decimal(8, 2)) AS PartsSellEA_Dollars, 
                         CAST(dbo.RO_Parts.quoted_price_cents / 100.0 * dbo.RO_Parts.quantity AS decimal(8, 2)) AS PartsSellTotal_Dollars, CAST(dbo.RO_Parts.cost_cents / 100.0 AS decimal(8, 2)) AS PartCostEA_Dollars, 
                         CAST(dbo.RO_Parts.cost_cents / 100.0 * dbo.RO_Parts.quantity AS decimal(8, 2)) AS PartCostTotal_Dollars, dbo.Categories.text AS category, 'P' AS YesPosted
FROM            dbo.Categories INNER JOIN
                         dbo.RO_Services INNER JOIN
                         dbo.RO_Repair_Orders ON dbo.RO_Services.P_results_id = dbo.RO_Repair_Orders.id INNER JOIN
                         dbo.RO_Parts ON dbo.RO_Services.id = dbo.RO_Parts.P_results_services_id ON dbo.Categories.id = dbo.RO_Services.category_id INNER JOIN
                         dbo.Shops ON dbo.RO_Repair_Orders.shop_id = dbo.Shops.id
WHERE        (dbo.RO_Repair_Orders.closed_at > '2021-07-17')
GO
EXEC sp_addextendedproperty N'MS_DiagramPane1', N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[49] 4[3] 2[31] 3) )"
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
         Begin Table = "Categories"
            Begin Extent = 
               Top = 296
               Left = 396
               Bottom = 425
               Right = 566
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "RO_Services"
            Begin Extent = 
               Top = 23
               Left = 299
               Bottom = 273
               Right = 483
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "RO_Repair_Orders"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 217
               Right = 269
            End
            DisplayFlags = 280
            TopColumn = 9
         End
         Begin Table = "RO_Parts"
            Begin Extent = 
               Top = 0
               Left = 513
               Bottom = 300
               Right = 709
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Shops"
            Begin Extent = 
               Top = 281
               Left = 134
               Bottom = 411
               Right = 336
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
', 'SCHEMA', N'dbo', 'VIEW', N'vw_COG', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_DiagramPane2', N'         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 6210
         Alias = 1740
         Table = 2115
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
', 'SCHEMA', N'dbo', 'VIEW', N'vw_COG', NULL, NULL
GO
DECLARE @xp int
SELECT @xp=2
EXEC sp_addextendedproperty N'MS_DiagramPaneCount', @xp, 'SCHEMA', N'dbo', 'VIEW', N'vw_COG', NULL, NULL
GO
