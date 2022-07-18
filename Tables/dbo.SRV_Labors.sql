CREATE TABLE [dbo].[SRV_Labors]
(
[id] [int] NOT NULL,
[created_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[updated_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[P_results_id] [int] NULL,
[name] [nvarchar] (576) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[technician_id] [int] NULL,
[taxable] [bit] NULL,
[hours] [float] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SRV_Labors] ADD CONSTRAINT [PK__SRV_Labo__3213E83FC0F5274D] PRIMARY KEY CLUSTERED ([id]) ON [PRIMARY]
GO
