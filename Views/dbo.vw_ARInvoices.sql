SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
/* Current ssis job*/
CREATE VIEW [dbo].[vw_ARInvoices]
AS
SELECT        dbo.RO_Repair_Orders.number AS InvoiceNo, dbo.Shops.identifier AS store_id, dbo.Customers.last_name AS ARCode, trim(dbo.Customers.first_name) AS CustomerName, CONVERT(varchar(10), DATEADD(hour, - 7, 
                         dbo.RO_Repair_Orders.closed_at), 120) AS ClosedDate, format(CONVERT(date, SWITCHOFFSET(CONVERT(DATETIMEOFFSET, dbo.RO_Repair_Orders.closed_at), DATENAME(TZOFFSET, SYSDATETIMEOFFSET()))), 'MM/dd/yyy') 
                         AS DrawerDate, 0 AS PO, CASE WHEN dbo.vw_ARDesc.ARDesc IS NULL THEN trim(dbo.Customers.first_name) ELSE trim(dbo.vw_ARDesc.ARDesc) END AS Description, CASE WHEN dbo.Customers.last_name IS NULL 
                         THEN LEFT(CAST(dbo.RO_Repair_Orders.number AS varchar) + ' - ' + dbo.Customers.first_name, 20) ELSE dbo.vw_ARDesc.shortDesc END AS ShortDesc, dbo.Stores.Company, CONVERT(varchar(10), DATEADD(hour, - 7, 
                         dbo.RO_Repair_Orders.closed_at), 120) AS InvDueDate, dbo.RO_Payments.amount_cents * 1.0 / 100 AS Amount, dbo.Customers.id, CONVERT(varchar(4), dbo.RO_Repair_Orders.closed_at, 120) + CONVERT(varchar(2), 
                         SUBSTRING(dbo.RO_Repair_Orders.closed_at, 6, 2), 120) + CONVERT(varchar(2), SUBSTRING(dbo.RO_Repair_Orders.closed_at, 9, 2), 120) AS batch, dbo.RO_Repair_Orders.number AS ControlNo, 
                         LEFT(dbo.RO_Payments.[payment_type_details.name], 20) AS PaymentType
FROM            dbo.Customers INNER JOIN
                         dbo.RO_Repair_Orders ON dbo.Customers.id = dbo.RO_Repair_Orders.customer_id INNER JOIN
                         dbo.RO_Payments ON dbo.RO_Repair_Orders.id = dbo.RO_Payments.P_results_id INNER JOIN
                         dbo.Shops ON dbo.RO_Repair_Orders.shop_id = dbo.Shops.id INNER JOIN
                         dbo.Stores ON dbo.Shops.identifier = dbo.Stores.StoreNum INNER JOIN
                         dbo.vw_ARDesc ON dbo.RO_Repair_Orders.id = dbo.vw_ARDesc.P_results_id
WHERE        (dbo.RO_Payments.[payment_type_details.name] = 'Fleet AR') OR
                         (dbo.RO_Payments.[payment_type_details.name] = 'Employee AR')
GO
EXEC sp_addextendedproperty N'MS_Description', N'AR Invoices used for importing into Sage', 'SCHEMA', N'dbo', 'VIEW', N'vw_ARInvoices', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_DiagramPane1', N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[50] 4[3] 2[33] 3) )"
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
         Begin Table = "Customers"
            Begin Extent = 
               Top = 12
               Left = 19
               Bottom = 214
               Right = 189
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "RO_Repair_Orders"
            Begin Extent = 
               Top = 6
               Left = 229
               Bottom = 275
               Right = 477
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "RO_Payments"
            Begin Extent = 
               Top = 6
               Left = 515
               Bottom = 267
               Right = 751
            End
            DisplayFlags = 280
            TopColumn = 3
         End
         Begin Table = "Shops"
            Begin Extent = 
               Top = 128
               Left = 502
               Bottom = 258
               Right = 704
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Stores"
            Begin Extent = 
               Top = 273
               Left = 792
               Bottom = 403
               Right = 980
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "vw_ARDesc"
            Begin Extent = 
               Top = 265
               Left = 501
               Bottom = 361
               Right = 671
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
      Begin ColumnWidths = 17
         Width = 284
         Width = 1500
         Width', 'SCHEMA', N'dbo', 'VIEW', N'vw_ARInvoices', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_DiagramPane2', N' = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1815
         Width = 2490
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
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
', 'SCHEMA', N'dbo', 'VIEW', N'vw_ARInvoices', NULL, NULL
GO
DECLARE @xp int
SELECT @xp=2
EXEC sp_addextendedproperty N'MS_DiagramPaneCount', @xp, 'SCHEMA', N'dbo', 'VIEW', N'vw_ARInvoices', NULL, NULL
GO
