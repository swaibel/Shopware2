CREATE TABLE [dbo].[Vehicles]
(
[id] [int] NOT NULL,
[created_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[updated_at] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[plate] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[detail] [nvarchar] (96) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[fleet_number] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[vin] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[year] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[make] [nvarchar] (52) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[model] [nvarchar] (88) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[engine] [nvarchar] (160) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[color] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[production_date] [nvarchar] (96) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[registration_exp_date] [nvarchar] (96) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[customer_ids] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Vehicles] ADD CONSTRAINT [PK__Vehicles__3213E83F7093AD47] PRIMARY KEY CLUSTERED ([id]) ON [PRIMARY]
GO
