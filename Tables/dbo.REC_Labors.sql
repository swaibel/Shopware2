CREATE TABLE [dbo].[REC_Labors]
(
[id] [int] NOT NULL,
[created_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[updated_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[P_results_id] [int] NULL,
[P_results_service_id] [int] NULL,
[name] [nvarchar] (576) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[technician_id] [int] NULL,
[taxable] [bit] NULL,
[hours] [float] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[REC_Labors] ADD CONSTRAINT [PK__REC_Labo__3213E83F07112AC4] PRIMARY KEY CLUSTERED ([id]) ON [PRIMARY]
GO
