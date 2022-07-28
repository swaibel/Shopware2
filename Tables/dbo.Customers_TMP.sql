CREATE TABLE [dbo].[Customers_TMP]
(
[id] [int] NOT NULL,
[created_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[updated_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[first_name] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[last_name] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[phone] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[detail] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[address] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[city] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[state] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[zip] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[marketing_ok] [bit] NULL,
[shop_ids] [nvarchar] (44) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[email] [nvarchar] (124) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Customers_TMP] ADD CONSTRAINT [PK__Customer__3213E83FC722583E] PRIMARY KEY CLUSTERED ([id]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Customer table from the API', 'SCHEMA', N'dbo', 'TABLE', N'Customers_TMP', NULL, NULL
GO
