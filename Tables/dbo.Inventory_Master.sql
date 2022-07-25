CREATE TABLE [dbo].[Inventory_Master]
(
[PartNum] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ItemCodeDesc] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Location] [varchar] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[StdCost] [numeric] (6, 2) NULL,
[List] [numeric] (6, 2) NULL,
[UDF_MARKETS] [varchar] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MIN] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MAX] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Inventory_Master] ADD CONSTRAINT [PK_Inventory_Master] PRIMARY KEY CLUSTERED ([PartNum]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Internal Inventory table imported from Sage', 'SCHEMA', N'dbo', 'TABLE', N'Inventory_Master', NULL, NULL
GO
