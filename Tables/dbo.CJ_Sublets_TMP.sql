CREATE TABLE [dbo].[CJ_Sublets_TMP]
(
[id] [int] NULL,
[created_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[updated_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[name] [nvarchar] (72) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[price_cents] [int] NULL,
[taxable] [bit] NULL,
[P_results_id] [int] NULL
) ON [PRIMARY]
GO
