CREATE TABLE [dbo].[Inventory]
(
[id] [int] NOT NULL,
[created_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[updated_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[type] [nvarchar] (52) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[brand] [nvarchar] (156) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[description] [nvarchar] (160) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[number] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[list_price_cents] [int] NULL,
[cost_cents] [int] NULL,
[gp_price_cents] [nvarchar] (1020) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[quantity_on_hand] [float] NULL,
[location] [nvarchar] (1020) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[hazmat_rating] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[misc_info] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[part_terminology_id] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[core_inventory_id] [nvarchar] (1020) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[bosch_extra_points] [int] NULL,
[primary_vendor_id] [int] NULL,
[last_vendor_id] [int] NULL,
[shop_id] [int] NULL,
[gp_exception_id] [nvarchar] (1020) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[partstech_part_id] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[quantity_in_progress] [float] NULL,
[quantity_needed] [float] NULL,
[quantity_ordered] [float] NULL,
[quantity_ordered_for_stock] [float] NULL,
[quantity_returned] [float] NULL,
[min_stock] [float] NULL,
[max_stock] [float] NULL,
[gp_optimizer_active] [bit] NULL,
[tags] [nvarchar] (1500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Inventory] ADD CONSTRAINT [PK_Inventory] PRIMARY KEY CLUSTERED ([id]) ON [PRIMARY]
GO
