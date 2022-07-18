CREATE TABLE [dbo].[REC_Inspections]
(
[id] [int] NOT NULL,
[created_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[updated_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[P_results_id] [int] NULL,
[P_results_service_id] [int] NULL,
[name] [nvarchar] (88) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[state] [nvarchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[detail] [nvarchar] (1020) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[REC_Inspections] ADD CONSTRAINT [PK__REC_Insp__3213E83F6C3D9F38] PRIMARY KEY CLUSTERED ([id]) ON [PRIMARY]
GO
