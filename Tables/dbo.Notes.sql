CREATE TABLE [dbo].[Notes]
(
[id] [int] NOT NULL,
[created_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[updated_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[description] [nvarchar] (800) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[repair_order_id] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Notes] ADD CONSTRAINT [PK__Notes__3213E83F021684D1] PRIMARY KEY CLUSTERED ([id]) ON [PRIMARY]
GO
