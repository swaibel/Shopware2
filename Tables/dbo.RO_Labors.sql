CREATE TABLE [dbo].[RO_Labors]
(
[id] [int] NOT NULL,
[created_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[updated_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[P_results_id] [int] NULL,
[P_results_services_id] [int] NULL,
[name] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[technician_id] [int] NULL,
[taxable] [bit] NULL,
[hours] [float] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RO_Labors] ADD CONSTRAINT [PK_RO_Labors] PRIMARY KEY CLUSTERED ([id]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Repair Orders Labor table from the API', 'SCHEMA', N'dbo', 'TABLE', N'RO_Labors', NULL, NULL
GO
