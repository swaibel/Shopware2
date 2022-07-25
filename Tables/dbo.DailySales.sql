CREATE TABLE [dbo].[DailySales]
(
[Market] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Store_id] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DrawerDate] [date] NULL,
[Parts] [decimal] (10, 2) NULL,
[Labor] [decimal] (10, 2) NULL,
[ShopSupplies] [decimal] (10, 2) NULL,
[Hazmats] [decimal] (10, 2) NULL,
[Warranty] [decimal] (10, 2) NULL,
[Sublets] [decimal] (10, 2) NULL,
[PartsDiscount] [decimal] (10, 2) NULL,
[LaborDiscount] [decimal] (10, 2) NULL,
[CustSat] [decimal] (10, 2) NULL,
[NonTaxed] [decimal] (10, 2) NULL,
[SalesTaxTotal] [decimal] (10, 2) NULL,
[SalesTaxState] [decimal] (10, 2) NULL,
[SalesTaxCity] [decimal] (10, 2) NULL,
[Cash] [decimal] (10, 2) NULL,
[Credit] [decimal] (10, 2) NULL,
[EasyPay] [decimal] (10, 2) NULL,
[Synchrony] [decimal] (10, 2) NULL,
[ArFleet] [decimal] (10, 2) NULL,
[AR] [decimal] (10, 2) NULL,
[Other] [decimal] (10, 2) NULL,
[CarCount] [int] NULL,
[AREmployee] [decimal] (10, 2) NULL
) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Internal table for sales reporting', 'SCHEMA', N'dbo', 'TABLE', N'DailySales', NULL, NULL
GO
