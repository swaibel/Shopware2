CREATE TABLE [dbo].[GP_Exceptions_TMP]
(
[id] [int] NULL,
[created_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[updated_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[name] [nvarchar] (52) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[shop_id] [int] NULL,
[percent] [float] NULL
) ON [PRIMARY]
GO
