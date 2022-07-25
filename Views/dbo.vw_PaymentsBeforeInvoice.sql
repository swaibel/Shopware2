SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[vw_PaymentsBeforeInvoice]
AS
SELECT        dbo.vw_ROPayments.PaymentDate, dbo.vw_ROPayments.RONumber, dbo.vw_ROPayments.payment_type, dbo.vw_ROPayments.PaymentDollars AS PaymentAmount, dbo.Shops.identifier AS Store_id, 
                         dbo.RO_Repair_Orders.state, CASE WHEN dbo.Customers.last_name IS NOT NULL THEN LEFT(CAST(dbo.vw_ROPayments.RONumber AS varchar) + ' - ' + dbo.Customers.last_name, 20) 
                         WHEN dbo.Customers.first_name IS NOT NULL THEN LEFT(CAST(dbo.vw_ROPayments.RONumber AS varchar) + ' - ' + dbo.Customers.first_name, 20) ELSE CAST(dbo.vw_ROPayments.RONumber AS varchar) END AS ShortDesc,
                          dbo.vw_ROPayments.PaymentID
FROM            dbo.RO_Repair_Orders INNER JOIN
                         dbo.vw_ROPayments ON dbo.RO_Repair_Orders.number = dbo.vw_ROPayments.RONumber INNER JOIN
                         dbo.Shops ON dbo.RO_Repair_Orders.shop_id = dbo.Shops.id LEFT OUTER JOIN
                         dbo.Customers ON dbo.RO_Repair_Orders.customer_id = dbo.Customers.id
WHERE        (dbo.RO_Repair_Orders.state <> 'invoice') AND (dbo.vw_ROPayments.PaymentDate >= GETDATE() - 30)

GO
EXEC sp_addextendedproperty N'MS_Description', N'Get pre-payments made on a RO', 'SCHEMA', N'dbo', 'VIEW', N'vw_PaymentsBeforeInvoice', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_DiagramPane1', N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[15] 3) )"
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
               Top = 26
               Left = 420
               Bottom = 277
               Right = 651
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "vw_ROPayments"
            Begin Extent = 
               Top = 15
               Left = 68
               Bottom = 264
               Right = 304
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "Shops"
            Begin Extent = 
               Top = 112
               Left = 728
               Bottom = 242
               Right = 930
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Customers"
            Begin Extent = 
               Top = 30
               Left = 745
               Bottom = 160
               Right = 915
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
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 3330
         Width = 2370
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
         Or = 13', 'SCHEMA', N'dbo', 'VIEW', N'vw_PaymentsBeforeInvoice', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_DiagramPane2', N'50
      End
   End
End
', 'SCHEMA', N'dbo', 'VIEW', N'vw_PaymentsBeforeInvoice', NULL, NULL
GO
DECLARE @xp int
SELECT @xp=2
EXEC sp_addextendedproperty N'MS_DiagramPaneCount', @xp, 'SCHEMA', N'dbo', 'VIEW', N'vw_PaymentsBeforeInvoice', NULL, NULL
GO
