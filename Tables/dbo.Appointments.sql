CREATE TABLE [dbo].[Appointments]
(
[id] [int] NOT NULL,
[created_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[updated_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[staff_id] [int] NULL,
[title] [nvarchar] (140) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[description] [nvarchar] (848) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[shop_id] [int] NULL,
[start_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[end_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[repair_order_id] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Appointments] ADD CONSTRAINT [PK__Appointm__3213E83F95AF4A01] PRIMARY KEY CLUSTERED ([id]) ON [PRIMARY]
GO
