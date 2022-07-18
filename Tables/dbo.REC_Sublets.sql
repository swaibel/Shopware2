CREATE TABLE [dbo].[REC_Sublets]
(
[id] [int] NOT NULL,
[created_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[updated_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[P_results_id] [int] NULL,
[P_results_service_id] [int] NULL,
[taxable] [bit] NULL,
[name] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[price_cents] [int] NULL,
[cost_cents] [int] NULL,
[provider] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[invoice_number] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[description] [nvarchar] (1020) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[vendor_id] [int] NULL,
[invoice_date] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[REC_Sublets] ADD CONSTRAINT [PK__REC_Subl__3213E83FAAA5D1DB] PRIMARY KEY CLUSTERED ([id]) ON [PRIMARY]
GO
