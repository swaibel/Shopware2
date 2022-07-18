CREATE TABLE [dbo].[RO_Labors_TMP]
(
[id] [int] NULL,
[created_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[updated_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[P_results_id] [int] NULL,
[P_results_services_id] [int] NULL,
[name] [nvarchar] (576) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[technician_id] [int] NULL,
[taxable] [bit] NULL,
[hours] [float] NULL
) ON [PRIMARY]
GO
