CREATE TABLE [dbo].[REC_Recommendations_TMP]
(
[id] [int] NULL,
[created_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[updated_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[description] [nvarchar] (92) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[approved] [nvarchar] (1020) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[approver_id] [nvarchar] (1020) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[approval_type] [nvarchar] (1020) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[imported] [bit] NULL,
[quick_price_cents] [nvarchar] (1020) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[repair_order_id] [int] NULL,
[approval_at] [nvarchar] (1020) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
