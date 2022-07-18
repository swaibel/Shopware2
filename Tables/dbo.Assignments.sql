CREATE TABLE [dbo].[Assignments]
(
[id] [int] NOT NULL,
[created_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[updated_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[repair_order_id] [int] NULL,
[transfer_to_id] [int] NULL,
[transfer_from_id] [int] NULL,
[message] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[accepted_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[cancelled_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Assignments] ADD CONSTRAINT [PK__Assignme__3213E83FFAD9B9B4] PRIMARY KEY CLUSTERED ([id]) ON [PRIMARY]
GO
