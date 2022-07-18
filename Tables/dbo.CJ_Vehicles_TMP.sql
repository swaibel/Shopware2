CREATE TABLE [dbo].[CJ_Vehicles_TMP]
(
[id] [int] NULL,
[created_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[updated_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[year] [nvarchar] (16) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[make] [nvarchar] (52) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[model] [nvarchar] (68) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[engine] [nvarchar] (184) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[P_results_id] [int] NULL
) ON [PRIMARY]
GO
