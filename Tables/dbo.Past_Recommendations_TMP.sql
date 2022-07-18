CREATE TABLE [dbo].[Past_Recommendations_TMP]
(
[id] [int] NULL,
[created_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[updated_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[description] [nvarchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[approved] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[approver_id] [int] NULL,
[approval_type] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[imported] [bit] NULL,
[vehicle_id] [int] NULL,
[done] [bit] NULL,
[recommendation_id] [int] NULL,
[approval_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
