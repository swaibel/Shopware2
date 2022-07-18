CREATE TABLE [dbo].[SRV_Inspections_TMP]
(
[id] [int] NULL,
[created_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[updated_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[P_results_id] [int] NULL,
[name] [nvarchar] (700) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[state] [nvarchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[detail] [nvarchar] (1020) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
