CREATE TABLE [dbo].[Purchase_TMP]
(
[id] [int] NULL,
[created_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[updated_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[shop_id] [int] NULL,
[invoice_number] [nvarchar] (84) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[vendor_id] [int] NULL,
[payment_type] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ecomm_integrator_order_id] [int] NULL,
[is_return] [bit] NULL
) ON [PRIMARY]
GO
