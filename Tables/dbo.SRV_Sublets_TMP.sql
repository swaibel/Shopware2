CREATE TABLE [dbo].[SRV_Sublets_TMP]
(
[id] [int] NULL,
[created_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[updated_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[P_results_id] [int] NULL,
[name] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[price_cents] [int] NULL,
[cost_cents] [nvarchar] (1020) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[provider] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[invoice_number] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[description] [nvarchar] (1020) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[taxable] [bit] NULL,
[vendor_id] [int] NULL,
[invoice_date] [nvarchar] (1020) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
