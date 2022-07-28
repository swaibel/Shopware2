CREATE TABLE [dbo].[RO_Hazmats_TMP]
(
[id] [int] NULL,
[created_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[updated_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[P_results_id] [int] NULL,
[P_results_services_id] [int] NULL,
[name] [nvarchar] (1500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[taxable] [bit] NULL,
[fee_cents] [int] NULL,
[quantity] [float] NULL
) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Repair Orders Hazmats Temp table from the API', 'SCHEMA', N'dbo', 'TABLE', N'RO_Hazmats_TMP', NULL, NULL
GO
