CREATE TABLE [dbo].[Status]
(
[id] [int] NOT NULL,
[created_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[updated_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[text] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Status] ADD CONSTRAINT [PK__Status__3213E83F54C93110] PRIMARY KEY CLUSTERED ([id]) ON [PRIMARY]
GO
