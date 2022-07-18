CREATE TABLE [dbo].[zRPT_ROTotals]
(
[id] [int] NULL,
[RONumber] [int] NULL,
[Shop_id] [int] NULL,
[ClosedDate] [date] NULL,
[LaborDollars] [decimal] (10, 2) NULL,
[LaborDiscountDollars] [decimal] (10, 2) NULL,
[PartsDollars] [decimal] (10, 2) NULL,
[PartDiscountDollars] [decimal] (10, 2) NULL,
[HazmatsDollars] [decimal] (10, 2) NULL,
[SubletDollars] [decimal] (10, 2) NULL,
[SalesTaxDollars] [decimal] (10, 2) NULL,
[ShopSuppliesDollars] [decimal] (10, 2) NULL,
[PaymentDollars] [decimal] (10, 2) NULL
) ON [PRIMARY]
GO
