CREATE TABLE [dbo].[RO_Sublets]
(
[id] [int] NOT NULL,
[created_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[updated_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[P_results_id] [int] NULL,
[P_results_services_id] [int] NULL,
[name] [nvarchar] (1500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[taxable] [bit] NULL,
[price_cents] [int] NULL,
[cost_cents] [int] NULL,
[provider] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[invoice_number] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[description] [nvarchar] (1500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[vendor_id] [int] NULL,
[invoice_date] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RO_Sublets] ADD CONSTRAINT [PK__RO_Suble__3213E83FB3BBB1D4] PRIMARY KEY CLUSTERED ([id]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Repair Orders Sublets table from the API', 'SCHEMA', N'dbo', 'TABLE', N'RO_Sublets', NULL, NULL
GO
