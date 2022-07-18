CREATE TABLE [dbo].[Staff_TMP]
(
[id] [int] NULL,
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
