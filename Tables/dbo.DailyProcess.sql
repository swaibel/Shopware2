CREATE TABLE [dbo].[DailyProcess]
(
[Market] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CustomerName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Store_id] [int] NULL,
[RONumber] [int] NULL,
[ClosedDate] [date] NULL,
[Parts] [decimal] (10, 5) NULL,
[PartsDiscount] [decimal] (10, 5) NULL,
[Labor] [decimal] (10, 5) NULL,
[LaborDiscount] [decimal] (10, 5) NULL,
[ShopSupplies] [decimal] (10, 5) NULL,
[Hazmats] [decimal] (10, 5) NULL,
[NonTaxed] [decimal] (10, 5) NULL,
[SubTotal] [decimal] (10, 5) NULL,
[Total] [decimal] (10, 5) NULL,
[PaidOnClosedDate] [decimal] (10, 5) NULL,
[TotalPaid] [decimal] (10, 5) NULL,
[AmtDue] [decimal] (10, 5) NULL,
[TaxPartDiscounts] [decimal] (10, 5) NULL,
[TaxLaborDiscounts] [decimal] (10, 5) NULL,
[TaxHazmats] [decimal] (10, 5) NULL,
[TaxLabor] [decimal] (10, 5) NULL,
[TaxParts] [decimal] (10, 5) NULL,
[TaxShopSupplies] [decimal] (10, 5) NULL,
[TaxRateTotal] [real] NULL,
[TaxRateState] [real] NULL,
[TaxRateCity] [real] NULL,
[SalesTaxTotal] [decimal] (10, 5) NULL,
[SalesTaxStateTotal] [decimal] (10, 5) NULL,
[SalesTaxCityTotal] [decimal] (10, 5) NULL
) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Internal table for daily sales process', 'SCHEMA', N'dbo', 'TABLE', N'DailyProcess', NULL, NULL
GO
