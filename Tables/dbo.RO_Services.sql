CREATE TABLE [dbo].[RO_Services]
(
[id] [int] NOT NULL,
[created_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[updated_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[P_results_id] [int] NULL,
[title] [nvarchar] (1500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[completed] [bit] NULL,
[category_id] [int] NULL,
[canned_job_id] [int] NULL,
[comment] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[labor_rate_cents] [int] NULL,
[completed_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[last_completed_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RO_Services] ADD CONSTRAINT [PK__RO_Servi__3213E83FDF0A0347] PRIMARY KEY CLUSTERED ([id]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Repair Orders Services table from the API', 'SCHEMA', N'dbo', 'TABLE', N'RO_Services', NULL, NULL
GO
