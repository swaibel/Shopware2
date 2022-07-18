CREATE TABLE [dbo].[SRV_Parts_TMP]
(
[id] [int] NULL,
[created_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[updated_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[P_results_id] [int] NULL,
[brand] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[description] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[number] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[quoted_price_cents] [int] NULL,
[cost_cents] [int] NULL,
[part_inventory_id] [int] NULL,
[taxable] [bit] NULL,
[quantity] [float] NULL
) ON [PRIMARY]
GO
