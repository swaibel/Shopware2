CREATE TABLE [dbo].[GP_Exceptions]
(
[id] [int] NOT NULL,
[created_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[updated_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[name] [nvarchar] (52) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[shop_id] [int] NULL,
[percent] [float] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[GP_Exceptions] ADD CONSTRAINT [PK__GP_Excep__3213E83F7A7F3ADF] PRIMARY KEY CLUSTERED ([id]) ON [PRIMARY]
GO
