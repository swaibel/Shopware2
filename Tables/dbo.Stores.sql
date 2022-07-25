CREATE TABLE [dbo].[Stores]
(
[Company] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[StoreNum] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Description] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[State] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[StateTaxRate] [real] NULL,
[CityTaxRate] [real] NULL,
[StoreID] [nvarchar] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FlatRate] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ManualLaborProfit] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Store_id] [int] NULL
) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Internal store location table for reporting', 'SCHEMA', N'dbo', 'TABLE', N'Stores', NULL, NULL
GO
