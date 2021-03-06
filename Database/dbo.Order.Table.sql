USE [CuddlyWombat]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 24/05/2018 9:10:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[TableID] [int] NULL,
	[CustomerID] [int] NULL,
	[OrderTypeID] [int] NOT NULL,
	[OrderStatusID] [int] NOT NULL,
	[TotalPrice] [decimal](6, 2) NOT NULL,
	[PickUpTime] [datetime] NULL,
	[IsPaid] [bit] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[DateModified] [datetime] NULL,
	[TotalPreparationTimeInMinutes] [int] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([OrderID], [TableID], [CustomerID], [OrderTypeID], [OrderStatusID], [TotalPrice], [PickUpTime], [IsPaid], [DateCreated], [DateModified], [TotalPreparationTimeInMinutes]) VALUES (4, NULL, 1, 2, 2, CAST(123.00 AS Decimal(6, 2)), CAST(N'2018-05-13T23:30:00.000' AS DateTime), 1, CAST(N'2018-05-13T12:30:43.617' AS DateTime), CAST(N'2018-05-15T23:06:35.927' AS DateTime), 5)
INSERT [dbo].[Order] ([OrderID], [TableID], [CustomerID], [OrderTypeID], [OrderStatusID], [TotalPrice], [PickUpTime], [IsPaid], [DateCreated], [DateModified], [TotalPreparationTimeInMinutes]) VALUES (5, NULL, 1, 2, 3, CAST(33.00 AS Decimal(6, 2)), CAST(N'2018-05-13T23:35:00.000' AS DateTime), 1, CAST(N'2018-05-13T12:35:27.087' AS DateTime), CAST(N'2018-05-15T23:06:53.760' AS DateTime), 5)
INSERT [dbo].[Order] ([OrderID], [TableID], [CustomerID], [OrderTypeID], [OrderStatusID], [TotalPrice], [PickUpTime], [IsPaid], [DateCreated], [DateModified], [TotalPreparationTimeInMinutes]) VALUES (6, 3, 1, 3, 1, CAST(33.00 AS Decimal(6, 2)), NULL, 1, CAST(N'2018-05-13T13:15:24.943' AS DateTime), NULL, 5)
INSERT [dbo].[Order] ([OrderID], [TableID], [CustomerID], [OrderTypeID], [OrderStatusID], [TotalPrice], [PickUpTime], [IsPaid], [DateCreated], [DateModified], [TotalPreparationTimeInMinutes]) VALUES (7, NULL, 1, 2, 1, CAST(482.00 AS Decimal(6, 2)), CAST(N'2018-05-15T18:30:00.000' AS DateTime), 1, CAST(N'2018-05-15T06:52:38.903' AS DateTime), NULL, 5)
INSERT [dbo].[Order] ([OrderID], [TableID], [CustomerID], [OrderTypeID], [OrderStatusID], [TotalPrice], [PickUpTime], [IsPaid], [DateCreated], [DateModified], [TotalPreparationTimeInMinutes]) VALUES (8, NULL, 1, 2, 1, CAST(14.25 AS Decimal(6, 2)), CAST(N'2018-05-15T22:48:00.000' AS DateTime), 1, CAST(N'2018-05-15T11:48:37.437' AS DateTime), NULL, 20)
INSERT [dbo].[Order] ([OrderID], [TableID], [CustomerID], [OrderTypeID], [OrderStatusID], [TotalPrice], [PickUpTime], [IsPaid], [DateCreated], [DateModified], [TotalPreparationTimeInMinutes]) VALUES (9, NULL, 2, 2, 1, CAST(3.00 AS Decimal(6, 2)), CAST(N'2018-05-15T23:18:00.000' AS DateTime), 1, CAST(N'2018-05-15T12:18:20.283' AS DateTime), NULL, 20)
INSERT [dbo].[Order] ([OrderID], [TableID], [CustomerID], [OrderTypeID], [OrderStatusID], [TotalPrice], [PickUpTime], [IsPaid], [DateCreated], [DateModified], [TotalPreparationTimeInMinutes]) VALUES (14, 6, NULL, 3, 1, CAST(15.00 AS Decimal(6, 2)), NULL, 1, CAST(N'2018-05-15T12:40:55.213' AS DateTime), NULL, 100)
INSERT [dbo].[Order] ([OrderID], [TableID], [CustomerID], [OrderTypeID], [OrderStatusID], [TotalPrice], [PickUpTime], [IsPaid], [DateCreated], [DateModified], [TotalPreparationTimeInMinutes]) VALUES (1002, NULL, 1, 2, 1, CAST(26.40 AS Decimal(6, 2)), CAST(N'2018-05-18T14:30:00.000' AS DateTime), 1, CAST(N'2018-05-18T02:53:47.727' AS DateTime), NULL, 20)
INSERT [dbo].[Order] ([OrderID], [TableID], [CustomerID], [OrderTypeID], [OrderStatusID], [TotalPrice], [PickUpTime], [IsPaid], [DateCreated], [DateModified], [TotalPreparationTimeInMinutes]) VALUES (1003, NULL, 1, 2, 3, CAST(2.50 AS Decimal(6, 2)), CAST(N'2018-05-18T14:01:00.000' AS DateTime), 1, CAST(N'2018-05-18T03:01:53.510' AS DateTime), CAST(N'2018-05-19T14:01:52.187' AS DateTime), 15)
INSERT [dbo].[Order] ([OrderID], [TableID], [CustomerID], [OrderTypeID], [OrderStatusID], [TotalPrice], [PickUpTime], [IsPaid], [DateCreated], [DateModified], [TotalPreparationTimeInMinutes]) VALUES (1004, 1, NULL, 3, 2, CAST(15.90 AS Decimal(6, 2)), NULL, 1, CAST(N'2018-05-18T03:03:58.747' AS DateTime), CAST(N'2018-05-19T14:01:28.383' AS DateTime), 20)
INSERT [dbo].[Order] ([OrderID], [TableID], [CustomerID], [OrderTypeID], [OrderStatusID], [TotalPrice], [PickUpTime], [IsPaid], [DateCreated], [DateModified], [TotalPreparationTimeInMinutes]) VALUES (2002, NULL, 1, 2, 2, CAST(40.70 AS Decimal(6, 2)), CAST(N'2018-05-19T11:30:00.000' AS DateTime), 1, CAST(N'2018-05-19T00:16:50.270' AS DateTime), CAST(N'2018-05-19T12:03:54.847' AS DateTime), 20)
INSERT [dbo].[Order] ([OrderID], [TableID], [CustomerID], [OrderTypeID], [OrderStatusID], [TotalPrice], [PickUpTime], [IsPaid], [DateCreated], [DateModified], [TotalPreparationTimeInMinutes]) VALUES (2003, NULL, 1, 2, 2, CAST(2.50 AS Decimal(6, 2)), CAST(N'2018-05-19T11:22:00.000' AS DateTime), 1, CAST(N'2018-05-19T00:22:34.187' AS DateTime), CAST(N'2018-05-19T12:09:16.407' AS DateTime), 15)
INSERT [dbo].[Order] ([OrderID], [TableID], [CustomerID], [OrderTypeID], [OrderStatusID], [TotalPrice], [PickUpTime], [IsPaid], [DateCreated], [DateModified], [TotalPreparationTimeInMinutes]) VALUES (2004, NULL, 1, 2, 2, CAST(40.70 AS Decimal(6, 2)), CAST(N'2018-05-19T11:30:00.000' AS DateTime), 1, CAST(N'2018-05-19T00:24:07.313' AS DateTime), CAST(N'2018-05-19T12:06:11.307' AS DateTime), 20)
INSERT [dbo].[Order] ([OrderID], [TableID], [CustomerID], [OrderTypeID], [OrderStatusID], [TotalPrice], [PickUpTime], [IsPaid], [DateCreated], [DateModified], [TotalPreparationTimeInMinutes]) VALUES (2005, NULL, 1, 2, 3, CAST(40.70 AS Decimal(6, 2)), CAST(N'2018-05-19T11:30:00.000' AS DateTime), 1, CAST(N'2018-05-19T00:24:50.617' AS DateTime), CAST(N'2018-05-19T14:01:45.143' AS DateTime), 20)
INSERT [dbo].[Order] ([OrderID], [TableID], [CustomerID], [OrderTypeID], [OrderStatusID], [TotalPrice], [PickUpTime], [IsPaid], [DateCreated], [DateModified], [TotalPreparationTimeInMinutes]) VALUES (3003, 4, NULL, 3, 2, CAST(32.30 AS Decimal(6, 2)), NULL, 1, CAST(N'2018-05-19T03:54:16.990' AS DateTime), CAST(N'2018-05-19T13:56:09.073' AS DateTime), 20)
INSERT [dbo].[Order] ([OrderID], [TableID], [CustomerID], [OrderTypeID], [OrderStatusID], [TotalPrice], [PickUpTime], [IsPaid], [DateCreated], [DateModified], [TotalPreparationTimeInMinutes]) VALUES (4002, 4, NULL, 3, 3, CAST(7.50 AS Decimal(6, 2)), NULL, 1, CAST(N'2018-05-24T08:40:51.593' AS DateTime), CAST(N'2018-05-24T20:24:13.820' AS DateTime), 10)
INSERT [dbo].[Order] ([OrderID], [TableID], [CustomerID], [OrderTypeID], [OrderStatusID], [TotalPrice], [PickUpTime], [IsPaid], [DateCreated], [DateModified], [TotalPreparationTimeInMinutes]) VALUES (4003, NULL, 1, 2, 2, CAST(9.90 AS Decimal(6, 2)), CAST(N'2018-05-24T19:50:00.000' AS DateTime), 1, CAST(N'2018-05-24T08:41:39.437' AS DateTime), CAST(N'2018-05-24T20:23:55.023' AS DateTime), 12)
SET IDENTITY_INSERT [dbo].[Order] OFF
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Customer] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Customer]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_OrderStatus] FOREIGN KEY([OrderStatusID])
REFERENCES [dbo].[OrderStatus] ([OrderStatusID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_OrderStatus]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_OrderType] FOREIGN KEY([OrderTypeID])
REFERENCES [dbo].[OrderType] ([OrderTypeID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_OrderType]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Table] FOREIGN KEY([TableID])
REFERENCES [dbo].[Table] ([TableID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Table]
GO
