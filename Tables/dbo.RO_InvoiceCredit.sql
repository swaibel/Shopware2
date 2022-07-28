CREATE TABLE [dbo].[RO_InvoiceCredit]
(
[RONumber] [int] NOT NULL,
[Market] [nchar] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Shop_id] [int] NULL,
[LastPaymentDate] [date] NULL,
[ClosedDate] [date] NULL,
[InvoiceTotal] [decimal] (11, 2) NULL,
[TotalPaid] [decimal] (11, 2) NULL,
[OverUnder] [decimal] (12, 2) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RO_InvoiceCredit] ADD CONSTRAINT [PK_RO_InvoiceCredit] PRIMARY KEY CLUSTERED ([RONumber]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Internal table for Daily Process', 'SCHEMA', N'dbo', 'TABLE', N'RO_InvoiceCredit', NULL, NULL
GO
