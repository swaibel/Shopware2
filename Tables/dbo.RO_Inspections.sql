CREATE TABLE [dbo].[RO_Inspections]
(
[id] [int] NOT NULL,
[created_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[updated_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[P_results_id] [int] NULL,
[P_results_services_id] [int] NULL,
[name] [nvarchar] (532) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[state] [nvarchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[detail] [nvarchar] (108) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RO_Inspections] ADD CONSTRAINT [PK__RO_Inspe__3213E83FE3F65E00] PRIMARY KEY CLUSTERED ([id]) ON [PRIMARY]
GO
