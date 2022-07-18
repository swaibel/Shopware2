CREATE TABLE [dbo].[REC_Hazmats_TMP]
(
[id] [int] NULL,
[created_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[updated_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[P_results_id] [int] NULL,
[P_results_service_id] [int] NULL,
[taxable] [bit] NULL,
[quantity] [float] NULL,
[name] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[fee_cents] [int] NULL
) ON [PRIMARY]
GO
