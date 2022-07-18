SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[vw_CustomerPayments]
AS
SELECT        CONVERT(varchar(10), DATEADD(hour, - 7, dbo.RO_Repair_Orders.closed_at), 120) AS ClosedDate, dbo.RO_Repair_Orders.number AS RONumber, dbo.Shops.identifier AS Store_id, dbo.Customers.id AS CustomerID, 
                         dbo.Customers.first_name, dbo.Customers.last_name, CAST(dbo.RO_Payments.amount_cents / 100.0 AS decimal(8, 2)) AS PaymentDollars, dbo.RO_Payments.payment_type
FROM            dbo.RO_Payments INNER JOIN
                         dbo.RO_Repair_Orders ON dbo.RO_Payments.P_results_id = dbo.RO_Repair_Orders.id INNER JOIN
                         dbo.Customers ON dbo.RO_Repair_Orders.customer_id = dbo.Customers.id INNER JOIN
                         dbo.Shops ON dbo.RO_Repair_Orders.shop_id = dbo.Shops.id
WHERE        (dbo.RO_Repair_Orders.closed_at IS NOT NULL)
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
         Begin Table = "RO_Payments"
            Begin Extent = 
               Top = 1
               Left = 395
               Bottom = 199
               Right = 631
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "RO_Repair_Orders"
            Begin Extent = 
               Top = 3
               Left = 77
               Bottom = 280
               Right = 308
            End
            DisplayFlags = 280
            TopColumn = 6
         End
         Begin Table = "Customers"
            Begin Extent = 
               Top = 115
               Left = 581
               Bottom = 344
               Right = 747
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Shops"
            Begin Extent = 
               Top = 204
               Left = 346
               Bottom = 334
               Right = 548
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
         Width = 2715
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
', 'SCHEMA', N'dbo', 'VIEW', N'vw_CustomerPayments', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_DiagramPane2', N'
      End
   End
End
', 'SCHEMA', N'dbo', 'VIEW', N'vw_CustomerPayments', NULL, NULL
GO
DECLARE @xp int
SELECT @xp=2
EXEC sp_addextendedproperty N'MS_DiagramPaneCount', @xp, 'SCHEMA', N'dbo', 'VIEW', N'vw_CustomerPayments', NULL, NULL
GO
