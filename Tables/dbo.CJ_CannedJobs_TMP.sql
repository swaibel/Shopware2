CREATE TABLE [dbo].[CJ_CannedJobs_TMP]
(
[id] [int] NULL,
[created_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[updated_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[title] [nvarchar] (96) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[all_vehicles] [bit] NULL,
[frequency] [int] NULL,
[category_id] [int] NULL,
[auto_applied] [bit] NULL,
[shop_id] [int] NULL,
[optimizer_enabled] [bit] NULL
) ON [PRIMARY]
GO
