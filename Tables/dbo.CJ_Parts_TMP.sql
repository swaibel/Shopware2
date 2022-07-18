CREATE TABLE [dbo].[CJ_Parts_TMP]
(
[id] [int] NULL,
[created_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[updated_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[part_inventory_id] [int] NULL,
[taxable] [bit] NULL,
[quantity] [float] NULL,
[P_results_id] [int] NULL
) ON [PRIMARY]
GO
