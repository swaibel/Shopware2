CREATE TABLE [dbo].[Payment_Transactions]
(
[id] [int] NOT NULL,
[created_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[updated_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[payment_id] [nvarchar] (1020) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[repair_order_id] [int] NULL,
[staff_id] [int] NULL,
[status] [nvarchar] (52) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[serial_number] [nvarchar] (16) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[mid] [nvarchar] (1020) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[requested_amount_cents] [int] NULL,
[amount_cents] [nvarchar] (1020) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[reference_number] [nvarchar] (76) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[account] [nvarchar] (1020) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[name] [nvarchar] (1020) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[currency] [nvarchar] (1020) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[response_code] [nvarchar] (1020) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[response_text] [nvarchar] (1020) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[bin_type] [nvarchar] (1020) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[entry_mode] [nvarchar] (1020) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[avs_response] [nvarchar] (1020) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[cvv_response] [nvarchar] (1020) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[authorization_code] [nvarchar] (1020) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Payment_Transactions] ADD CONSTRAINT [PK__Payment___3213E83F7A0D8B7F] PRIMARY KEY CLUSTERED ([id]) ON [PRIMARY]
GO
