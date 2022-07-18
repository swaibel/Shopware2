SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[vw_DailySalesDetailParts]
AS
SELECT        dbo.Shops.identifier AS shop_id, CONVERT(varchar(10), DATEADD(hour, - 7, dbo.RO_Repair_Orders.closed_at), 120) AS ClosedDate, DATEDIFF(d, 0, CONVERT(varchar(10), dbo.RO_Repair_Orders.closed_at, 120)) AS trans_date, 
                         DATEDIFF(d, 0, CONVERT(varchar(10), dbo.RO_Repair_Orders.closed_at, 120)) AS PHDrawerDate, dbo.RO_Repair_Orders.number AS RONumber, dbo.RO_Services.category_id AS JobCode, dbo.RO_Parts.number AS Part#, 
                         dbo.RO_Parts.quantity, ROUND(dbo.RO_Parts.quoted_price_cents * 1.0 / 100, 2) AS sell, ROUND(dbo.RO_Parts.quantity * dbo.RO_Parts.quoted_price_cents * 1.0 / 100, 2) AS Amount, 'N' AS priority, 'P' AS PHPosted, 
                         dbo.RO_Parts.description
FROM            dbo.RO_Repair_Orders INNER JOIN
                         dbo.Shops ON dbo.RO_Repair_Orders.shop_id = dbo.Shops.id INNER JOIN
                         dbo.RO_Services ON dbo.RO_Repair_Orders.id = dbo.RO_Services.P_results_id INNER JOIN
                         dbo.RO_Parts ON dbo.RO_Services.id = dbo.RO_Parts.P_results_services_id
WHERE        (dbo.RO_Repair_Orders.closed_at > '2021-07-18')
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
         Begin Table = "RO_Services"
            Begin Extent = 
               Top = 6
               Left = 547
               Bottom = 136
               Right = 731
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "RO_Parts"
            Begin Extent = 
               Top = 138
               Left = 38
               Bottom = 268
               Right = 234
            End
            DisplayFlags = 280
            TopColumn = 6
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
   ', 'SCHEMA', N'dbo', 'VIEW', N'vw_DailySalesDetailParts', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_DiagramPane2', N'   End
   End
End
', 'SCHEMA', N'dbo', 'VIEW', N'vw_DailySalesDetailParts', NULL, NULL
GO
DECLARE @xp int
SELECT @xp=2
EXEC sp_addextendedproperty N'MS_DiagramPaneCount', @xp, 'SCHEMA', N'dbo', 'VIEW', N'vw_DailySalesDetailParts', NULL, NULL
GO