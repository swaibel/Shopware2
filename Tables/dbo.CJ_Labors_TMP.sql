CREATE TABLE [dbo].[CJ_Labors_TMP]
(
[id] [int] NULL,
[created_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[updated_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[name] [nvarchar] (576) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[taxable] [bit] NULL,
[hours] [float] NULL,
[P_results_id] [int] NULL
) ON [PRIMARY]
GO
