CREATE TABLE [dbo].[Purchase_Lines_TMP]
(
[P_results_id] [int] NULL,
[inventory_id] [int] NULL,
[quantity] [float] NULL,
[list_price_cents] [int] NULL,
[cost_cents] [int] NULL,
[ecomm_integrator_part_id] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
