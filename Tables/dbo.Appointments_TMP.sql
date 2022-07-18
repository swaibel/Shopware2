CREATE TABLE [dbo].[Appointments_TMP]
(
[id] [int] NULL,
[created_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[updated_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[staff_id] [int] NULL,
[title] [nvarchar] (140) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[description] [nvarchar] (848) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[shop_id] [int] NULL,
[start_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[end_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[repair_order_id] [int] NULL
) ON [PRIMARY]
GO
