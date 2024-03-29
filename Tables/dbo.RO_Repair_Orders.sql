CREATE TABLE [dbo].[RO_Repair_Orders]
(
[id] [int] NOT NULL,
[created_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[updated_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[number] [int] NULL,
[odometer] [int] NULL,
[odometer_out] [int] NULL,
[state] [nvarchar] (44) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[customer_id] [int] NULL,
[technician_id] [int] NULL,
[advisor_id] [int] NULL,
[vehicle_id] [int] NULL,
[detail] [nvarchar] (1500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[preferred_contact_type] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[part_discount_cents] [int] NULL,
[labor_discount_cents] [int] NULL,
[shop_id] [int] NULL,
[status_id] [int] NULL,
[taxable] [bit] NULL,
[customer_source] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[supply_fee_cents] [int] NULL,
[part_discount_percentage] [nvarchar] (1020) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[labor_discount_percentage] [nvarchar] (1020) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[started_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[closed_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[picked_up_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[due_in_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[due_out_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[part_tax_rate] [float] NULL,
[labor_tax_rate] [float] NULL,
[hazmat_tax_rate] [float] NULL,
[sublet_tax_rate] [float] NULL,
[label] [nvarchar] (1020) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RO_Repair_Orders] ADD CONSTRAINT [PK__RO_Repai__3213E83F06710CE5] PRIMARY KEY CLUSTERED ([id]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Repair Orders HDR table from the API', 'SCHEMA', N'dbo', 'TABLE', N'RO_Repair_Orders', NULL, NULL
GO
