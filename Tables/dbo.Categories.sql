CREATE TABLE [dbo].[Categories]
(
[id] [int] NOT NULL,
[created_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[updated_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[text] [nvarchar] (44) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Categories] ADD CONSTRAINT [PK__Categori__3213E83F89A48A4D] PRIMARY KEY CLUSTERED ([id]) ON [PRIMARY]
GO
