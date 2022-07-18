CREATE TABLE [dbo].[Shops_TMP]
(
[id] [int] NULL,
[created_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[updated_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[identifier] [nvarchar] (48) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[name] [nvarchar] (48) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[address] [nvarchar] (156) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[phone] [nvarchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[time_zone] [nvarchar] (108) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[service_desk_email] [nvarchar] (76) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[avg_labor_cost_cents] [int] NULL,
[part_tax_rate] [float] NULL,
[labor_tax_rate] [float] NULL,
[hazmat_tax_rate] [float] NULL,
[sublet_tax_rate] [float] NULL,
[supply_fee_rate] [float] NULL,
[supply_fee_name] [nvarchar] (52) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[supply_fee_cap_cents] [float] NULL,
[mycarfax_enabled] [bit] NULL
) ON [PRIMARY]
GO
