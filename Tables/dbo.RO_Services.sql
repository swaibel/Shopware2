CREATE TABLE [dbo].[RO_Services]
(
[id] [int] NOT NULL,
[created_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[updated_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[P_results_id] [int] NULL,
[title] [nvarchar] (96) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[completed] [bit] NULL,
[category_id] [int] NULL,
[canned_job_id] [int] NULL,
[comment] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[labor_rate_cents] [int] NULL,
[completed_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[last_completed_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RO_Services] ADD CONSTRAINT [PK_RO_Services] PRIMARY KEY CLUSTERED ([id]) ON [PRIMARY]
GO
