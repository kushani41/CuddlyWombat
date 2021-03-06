USE [CuddlyWombat]
GO
/****** Object:  Table [dbo].[OrderStatus]    Script Date: 24/05/2018 9:10:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderStatus](
	[OrderStatusID] [int] NOT NULL,
	[Name] [varchar](100) NULL,
 CONSTRAINT [PK_OrderStatus] PRIMARY KEY CLUSTERED 
(
	[OrderStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[OrderStatus] ([OrderStatusID], [Name]) VALUES (1, N'Pending')
INSERT [dbo].[OrderStatus] ([OrderStatusID], [Name]) VALUES (2, N'Cancelled')
INSERT [dbo].[OrderStatus] ([OrderStatusID], [Name]) VALUES (3, N'Completed')
