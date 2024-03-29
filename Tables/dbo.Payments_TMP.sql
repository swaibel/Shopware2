CREATE TABLE [dbo].[Payments_TMP]
(
[id] [int] NULL,
[created_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[updated_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[repair_order_id] [int] NULL,
[payment_type] [nvarchar] (72) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[notes] [nvarchar] (332) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[amount_cents] [int] NULL,
[payment_type_details.type] [nvarchar] (44) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[payment_type_details.name] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
