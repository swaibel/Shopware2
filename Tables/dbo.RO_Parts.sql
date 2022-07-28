CREATE TABLE [dbo].[RO_Parts]
(
[id] [int] NOT NULL,
[created_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[updated_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[P_results_id] [int] NULL,
[P_results_services_id] [int] NULL,
[taxable] [bit] NULL,
[brand] [nvarchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[description] [nvarchar] (1500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[number] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[quoted_price_cents] [int] NULL,
[cost_cents] [int] NULL,
[part_inventory_id] [int] NULL,
[quantity] [float] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RO_Parts] ADD CONSTRAINT [PK_RO_Parts] PRIMARY KEY CLUSTERED ([id]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Repair Orders Parts table from the API', 'SCHEMA', N'dbo', 'TABLE', N'RO_Parts', NULL, NULL
GO
