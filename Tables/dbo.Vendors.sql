CREATE TABLE [dbo].[Vendors]
(
[id] [int] NOT NULL,
[created_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[updated_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[name] [nvarchar] (108) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[phone] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[account_number] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[info] [nvarchar] (228) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[notes] [nvarchar] (400) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[website] [nvarchar] (156) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[shop_id] [int] NULL,
[active] [bit] NULL,
[preferred] [bit] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Vendors] ADD CONSTRAINT [PK__Vendors__3213E83FB97840BE] PRIMARY KEY CLUSTERED ([id]) ON [PRIMARY]
GO
