CREATE TABLE [dbo].[SRV_Services_TMP]
(
[id] [int] NULL,
[created_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[updated_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[title] [nvarchar] (96) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[completed] [bit] NULL,
[category_id] [int] NULL,
[canned_job_id] [int] NULL,
[comment] [nvarchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[labor_rate_cents] [int] NULL,
[repair_order_id] [int] NULL,
[completed_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[last_completed_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
