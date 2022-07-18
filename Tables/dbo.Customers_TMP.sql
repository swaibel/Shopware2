CREATE TABLE [dbo].[Customers_TMP]
(
[id] [int] NULL,
[created_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[updated_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[first_name] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[last_name] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[phone] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[detail] [nvarchar] (1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[address] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[city] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[state] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[zip] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[marketing_ok] [bit] NULL,
[shop_ids] [nvarchar] (44) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[email] [nvarchar] (124) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
