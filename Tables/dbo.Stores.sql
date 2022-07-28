CREATE TABLE [dbo].[Stores]
(
[Company] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[StoreNum] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Description] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[State] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[StateTaxRate] [real] NULL,
[CityTaxRate] [real] NULL,
[StoreID] [nvarchar] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FlatRate] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ManualLaborProfit] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[APIToken] [nchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ProfileID] [nchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[store_id] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Stores] ADD CONSTRAINT [aaaaaStores1_PK] PRIMARY KEY NONCLUSTERED ([Company], [StoreNum]) WITH (FILLFACTOR=90) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Store tax rates.Used in DailyProcess Middleware, Flash Report, PowerBI', 'SCHEMA', N'dbo', 'TABLE', N'Stores', NULL, NULL
GO
