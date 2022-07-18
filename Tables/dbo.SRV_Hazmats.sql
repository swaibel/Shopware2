CREATE TABLE [dbo].[SRV_Hazmats]
(
[id] [int] NOT NULL,
[created_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[updated_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[P_results_id] [int] NULL,
[name] [nvarchar] (88) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[fee_cents] [int] NULL,
[taxable] [bit] NULL,
[quantity] [float] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SRV_Hazmats] ADD CONSTRAINT [PK__SRV_Hazm__3213E83FC05871E5] PRIMARY KEY CLUSTERED ([id]) ON [PRIMARY]
GO
