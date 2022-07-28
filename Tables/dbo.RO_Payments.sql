CREATE TABLE [dbo].[RO_Payments]
(
[id] [int] NOT NULL,
[created_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[updated_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[P_results_id] [int] NULL,
[payment_type] [nvarchar] (72) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[payment_type_details.type] [nvarchar] (44) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[payment_type_details.name] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[notes] [nvarchar] (332) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[amount_cents] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RO_Payments] ADD CONSTRAINT [PK__RO_Payme__3213E83F572B8CF2] PRIMARY KEY CLUSTERED ([id]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Repair Orders Payments table from the API', 'SCHEMA', N'dbo', 'TABLE', N'RO_Payments', NULL, NULL
GO
