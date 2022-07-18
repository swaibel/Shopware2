SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
/****** Script for SelectTopNRows command from SSMS  *****
Declare @MonthPart*/
CREATE VIEW [dbo].[vw_ARInvParseDate]
AS
SELECT        id AS P_results_id, CASE WHEN substring(CONVERT(varchar(10), DATEADD(hour, - 7, dbo.RO_Repair_Orders.closed_at), 120), 6, 2) = '01' THEN '1' WHEN substring(CONVERT(varchar(10), DATEADD(hour, - 7, 
                         dbo.RO_Repair_Orders.closed_at), 120), 6, 2) = '02' THEN '2' WHEN substring(CONVERT(varchar(10), DATEADD(hour, - 7, dbo.RO_Repair_Orders.closed_at), 120), 6, 2) = '03' THEN '3' WHEN substring(CONVERT(varchar(10), 
                         DATEADD(hour, - 7, dbo.RO_Repair_Orders.closed_at), 120), 6, 2) = '04' THEN '4' WHEN substring(CONVERT(varchar(10), DATEADD(hour, - 7, dbo.RO_Repair_Orders.closed_at), 120), 6, 2) 
                         = '05' THEN '5' WHEN substring(CONVERT(varchar(10), DATEADD(hour, - 7, dbo.RO_Repair_Orders.closed_at), 120), 6, 2) = '06' THEN '6' WHEN substring(CONVERT(varchar(10), DATEADD(hour, - 7, 
                         dbo.RO_Repair_Orders.closed_at), 120), 6, 2) = '07' THEN '7' WHEN substring(CONVERT(varchar(10), DATEADD(hour, - 7, dbo.RO_Repair_Orders.closed_at), 120), 6, 2) = '08' THEN '8' WHEN substring(CONVERT(varchar(10), 
                         DATEADD(hour, - 7, dbo.RO_Repair_Orders.closed_at), 120), 6, 2) = '09' THEN '9' ELSE substring(CONVERT(varchar(10), DATEADD(hour, - 7, dbo.RO_Repair_Orders.closed_at), 120), 6, 2) END AS MonthPart, 
                         CASE WHEN substring(CONVERT(varchar(10), DATEADD(hour, - 7, dbo.RO_Repair_Orders.closed_at), 120), 9, 2) = '01' THEN '1' WHEN substring(CONVERT(varchar(10), DATEADD(hour, - 7, dbo.RO_Repair_Orders.closed_at), 
                         120), 9, 2) = '02' THEN '2' WHEN substring(CONVERT(varchar(10), DATEADD(hour, - 7, dbo.RO_Repair_Orders.closed_at), 120), 9, 2) = '03' THEN '3' WHEN substring(CONVERT(varchar(10), DATEADD(hour, - 7, 
                         dbo.RO_Repair_Orders.closed_at), 120), 9, 2) = '04' THEN '4' WHEN substring(CONVERT(varchar(10), DATEADD(hour, - 7, dbo.RO_Repair_Orders.closed_at), 120), 9, 2) = '05' THEN '5' WHEN substring(CONVERT(varchar(10), 
                         DATEADD(hour, - 7, dbo.RO_Repair_Orders.closed_at), 120), 9, 2) = '06' THEN '6' WHEN substring(CONVERT(varchar(10), DATEADD(hour, - 7, dbo.RO_Repair_Orders.closed_at), 120), 9, 2) 
                         = '07' THEN '7' WHEN substring(CONVERT(varchar(10), DATEADD(hour, - 7, dbo.RO_Repair_Orders.closed_at), 120), 9, 2) = '08' THEN '8' WHEN substring(CONVERT(varchar(10), DATEADD(hour, - 7, 
                         dbo.RO_Repair_Orders.closed_at), 120), 9, 2) = '09' THEN '9' ELSE substring(CONVERT(varchar(10), DATEADD(hour, - 7, dbo.RO_Repair_Orders.closed_at), 120), 9, 2) END AS dayPart, LEFT(closed_at, 4) AS yearpart
FROM            dbo.RO_Repair_Orders
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
', 'SCHEMA', N'dbo', 'VIEW', N'vw_ARInvParseDate', NULL, NULL
GO
DECLARE @xp int
SELECT @xp=1
EXEC sp_addextendedproperty N'MS_DiagramPaneCount', @xp, 'SCHEMA', N'dbo', 'VIEW', N'vw_ARInvParseDate', NULL, NULL
GO
