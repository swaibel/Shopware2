CREATE TABLE [dbo].[CJ_Sublets]
(
[id] [int] NOT NULL,
[created_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[updated_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[name] [nvarchar] (72) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[price_cents] [int] NULL,
[taxable] [bit] NULL,
[P_results_id] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CJ_Sublets] ADD CONSTRAINT [PK__CJ_Suble__3213E83F6FA4CAA5] PRIMARY KEY CLUSTERED ([id]) ON [PRIMARY]
GO
