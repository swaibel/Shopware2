CREATE TABLE [dbo].[Purchase]
(
[id] [int] NOT NULL,
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
ALTER TABLE [dbo].[Purchase] ADD CONSTRAINT [PK__Purchase__3213E83F706F3DAA] PRIMARY KEY CLUSTERED ([id]) ON [PRIMARY]
GO
