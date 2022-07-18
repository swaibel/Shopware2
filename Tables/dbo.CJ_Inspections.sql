CREATE TABLE [dbo].[CJ_Inspections]
(
[id] [int] NOT NULL,
[created_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[updated_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[name] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[P_results_id] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CJ_Inspections] ADD CONSTRAINT [PK__CJ_Inspe__3213E83F7D71AF5A] PRIMARY KEY CLUSTERED ([id]) ON [PRIMARY]
GO
