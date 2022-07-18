CREATE TABLE [dbo].[CJ_Parts]
(
[id] [int] NOT NULL,
[created_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[updated_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[part_inventory_id] [int] NULL,
[taxable] [bit] NULL,
[quantity] [float] NULL,
[P_results_id] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CJ_Parts] ADD CONSTRAINT [PK__CJ_Parts__3213E83FE560D3D5] PRIMARY KEY CLUSTERED ([id]) ON [PRIMARY]
GO
