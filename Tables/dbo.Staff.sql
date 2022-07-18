CREATE TABLE [dbo].[Staff]
(
[id] [int] NOT NULL,
[created_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[updated_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[first_name] [nvarchar] (52) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[last_name] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[advisor] [bit] NULL,
[technician] [bit] NULL,
[active] [bit] NULL,
[email] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Staff] ADD CONSTRAINT [PK__Staff__3213E83F3B00663B] PRIMARY KEY CLUSTERED ([id]) ON [PRIMARY]
GO
