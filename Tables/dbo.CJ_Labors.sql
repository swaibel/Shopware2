CREATE TABLE [dbo].[CJ_Labors]
(
[id] [int] NOT NULL,
[created_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[updated_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[name] [nvarchar] (576) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[taxable] [bit] NULL,
[hours] [float] NULL,
[P_results_id] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CJ_Labors] ADD CONSTRAINT [PK__CJ_Labor__3213E83FA6007335] PRIMARY KEY CLUSTERED ([id]) ON [PRIMARY]
GO
