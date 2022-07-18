CREATE TABLE [dbo].[REC_Services]
(
[id] [int] NOT NULL,
[created_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[updated_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[P_results_id] [int] NULL,
[title] [nvarchar] (92) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[completed] [bit] NULL,
[category_id] [int] NULL,
[canned_job_id] [int] NULL,
[comment] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[labor_rate_cents] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[REC_Services] ADD CONSTRAINT [PK__REC_Serv__3213E83F665E3BD4] PRIMARY KEY CLUSTERED ([id]) ON [PRIMARY]
GO
