USE [CuddlyWombat]
GO
/****** Object:  Table [dbo].[OrderHistory]    Script Date: 24/05/2018 9:10:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderHistory](
	[OrderHistoryID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NOT NULL,
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
 CONSTRAINT [PK_OrderHistory] PRIMARY KEY CLUSTERED 
(
	[OrderHistoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[OrderHistory] ON 

INSERT [dbo].[OrderHistory] ([OrderHistoryID], [OrderID], [TableID], [CustomerID], [OrderTypeID], [OrderStatusID], [TotalPrice], [PickUpTime], [IsPaid], [DateCreated], [DateModified], [TotalPreparationTimeInMinutes]) VALUES (1, 4, NULL, 1, 2, 1, CAST(123.00 AS Decimal(6, 2)), CAST(N'2018-05-13T23:30:00.000' AS DateTime), 1, CAST(N'2018-05-13T12:30:43.617' AS DateTime), CAST(N'2018-05-15T23:06:35.927' AS DateTime), 10)
INSERT [dbo].[OrderHistory] ([OrderHistoryID], [OrderID], [TableID], [CustomerID], [OrderTypeID], [OrderStatusID], [TotalPrice], [PickUpTime], [IsPaid], [DateCreated], [DateModified], [TotalPreparationTimeInMinutes]) VALUES (2, 5, NULL, 1, 2, 1, CAST(33.00 AS Decimal(6, 2)), CAST(N'2018-05-13T23:35:00.000' AS DateTime), 1, CAST(N'2018-05-13T12:35:27.087' AS DateTime), CAST(N'2018-05-15T23:06:53.760' AS DateTime), 1)
INSERT [dbo].[OrderHistory] ([OrderHistoryID], [OrderID], [TableID], [CustomerID], [OrderTypeID], [OrderStatusID], [TotalPrice], [PickUpTime], [IsPaid], [DateCreated], [DateModified], [TotalPreparationTimeInMinutes]) VALUES (3, 5, NULL, 1, 2, 3, CAST(33.00 AS Decimal(6, 2)), CAST(N'2018-05-13T23:35:00.000' AS DateTime), 1, CAST(N'2018-05-13T12:35:27.087' AS DateTime), CAST(N'2018-05-15T23:06:53.760' AS DateTime), 1)
INSERT [dbo].[OrderHistory] ([OrderHistoryID], [OrderID], [TableID], [CustomerID], [OrderTypeID], [OrderStatusID], [TotalPrice], [PickUpTime], [IsPaid], [DateCreated], [DateModified], [TotalPreparationTimeInMinutes]) VALUES (1002, 2002, NULL, 1, 2, 1, CAST(40.70 AS Decimal(6, 2)), CAST(N'2018-05-19T11:30:00.000' AS DateTime), 1, CAST(N'2018-05-19T00:16:50.270' AS DateTime), CAST(N'2018-05-19T12:03:54.847' AS DateTime), 1)
INSERT [dbo].[OrderHistory] ([OrderHistoryID], [OrderID], [TableID], [CustomerID], [OrderTypeID], [OrderStatusID], [TotalPrice], [PickUpTime], [IsPaid], [DateCreated], [DateModified], [TotalPreparationTimeInMinutes]) VALUES (1003, 2004, NULL, 1, 2, 1, CAST(40.70 AS Decimal(6, 2)), CAST(N'2018-05-19T11:30:00.000' AS DateTime), 1, CAST(N'2018-05-19T00:24:07.313' AS DateTime), CAST(N'2018-05-19T12:06:11.307' AS DateTime), 1)
INSERT [dbo].[OrderHistory] ([OrderHistoryID], [OrderID], [TableID], [CustomerID], [OrderTypeID], [OrderStatusID], [TotalPrice], [PickUpTime], [IsPaid], [DateCreated], [DateModified], [TotalPreparationTimeInMinutes]) VALUES (1004, 2003, NULL, 1, 2, 1, CAST(2.50 AS Decimal(6, 2)), CAST(N'2018-05-19T11:22:00.000' AS DateTime), 1, CAST(N'2018-05-19T00:22:34.187' AS DateTime), CAST(N'2018-05-19T12:09:16.407' AS DateTime), 1)
INSERT [dbo].[OrderHistory] ([OrderHistoryID], [OrderID], [TableID], [CustomerID], [OrderTypeID], [OrderStatusID], [TotalPrice], [PickUpTime], [IsPaid], [DateCreated], [DateModified], [TotalPreparationTimeInMinutes]) VALUES (2002, 3003, 4, NULL, 3, 1, CAST(32.30 AS Decimal(6, 2)), NULL, 1, CAST(N'2018-05-19T03:54:16.990' AS DateTime), CAST(N'2018-05-19T13:56:09.073' AS DateTime), 1)
INSERT [dbo].[OrderHistory] ([OrderHistoryID], [OrderID], [TableID], [CustomerID], [OrderTypeID], [OrderStatusID], [TotalPrice], [PickUpTime], [IsPaid], [DateCreated], [DateModified], [TotalPreparationTimeInMinutes]) VALUES (2003, 3002, NULL, NULL, 3, 1, CAST(0.00 AS Decimal(6, 2)), NULL, 1, CAST(N'2018-05-19T03:47:11.523' AS DateTime), CAST(N'2018-05-19T14:01:07.163' AS DateTime), 1)
INSERT [dbo].[OrderHistory] ([OrderHistoryID], [OrderID], [TableID], [CustomerID], [OrderTypeID], [OrderStatusID], [TotalPrice], [PickUpTime], [IsPaid], [DateCreated], [DateModified], [TotalPreparationTimeInMinutes]) VALUES (2004, 1004, 1, NULL, 3, 1, CAST(15.90 AS Decimal(6, 2)), NULL, 1, CAST(N'2018-05-18T03:03:58.747' AS DateTime), CAST(N'2018-05-19T14:01:28.380' AS DateTime), 1)
INSERT [dbo].[OrderHistory] ([OrderHistoryID], [OrderID], [TableID], [CustomerID], [OrderTypeID], [OrderStatusID], [TotalPrice], [PickUpTime], [IsPaid], [DateCreated], [DateModified], [TotalPreparationTimeInMinutes]) VALUES (2005, 1004, 1, NULL, 3, 2, CAST(15.90 AS Decimal(6, 2)), NULL, 1, CAST(N'2018-05-18T03:03:58.747' AS DateTime), CAST(N'2018-05-19T14:01:28.383' AS DateTime), 1)
INSERT [dbo].[OrderHistory] ([OrderHistoryID], [OrderID], [TableID], [CustomerID], [OrderTypeID], [OrderStatusID], [TotalPrice], [PickUpTime], [IsPaid], [DateCreated], [DateModified], [TotalPreparationTimeInMinutes]) VALUES (2006, 2005, NULL, 1, 2, 1, CAST(40.70 AS Decimal(6, 2)), CAST(N'2018-05-19T11:30:00.000' AS DateTime), 1, CAST(N'2018-05-19T00:24:50.617' AS DateTime), CAST(N'2018-05-19T14:01:45.140' AS DateTime), 1)
INSERT [dbo].[OrderHistory] ([OrderHistoryID], [OrderID], [TableID], [CustomerID], [OrderTypeID], [OrderStatusID], [TotalPrice], [PickUpTime], [IsPaid], [DateCreated], [DateModified], [TotalPreparationTimeInMinutes]) VALUES (2007, 2005, NULL, 1, 2, 1, CAST(40.70 AS Decimal(6, 2)), CAST(N'2018-05-19T11:30:00.000' AS DateTime), 1, CAST(N'2018-05-19T00:24:50.617' AS DateTime), CAST(N'2018-05-19T14:01:45.140' AS DateTime), 1)
INSERT [dbo].[OrderHistory] ([OrderHistoryID], [OrderID], [TableID], [CustomerID], [OrderTypeID], [OrderStatusID], [TotalPrice], [PickUpTime], [IsPaid], [DateCreated], [DateModified], [TotalPreparationTimeInMinutes]) VALUES (2008, 2005, NULL, 1, 2, 3, CAST(40.70 AS Decimal(6, 2)), CAST(N'2018-05-19T11:30:00.000' AS DateTime), 1, CAST(N'2018-05-19T00:24:50.617' AS DateTime), CAST(N'2018-05-19T14:01:45.143' AS DateTime), 1)
INSERT [dbo].[OrderHistory] ([OrderHistoryID], [OrderID], [TableID], [CustomerID], [OrderTypeID], [OrderStatusID], [TotalPrice], [PickUpTime], [IsPaid], [DateCreated], [DateModified], [TotalPreparationTimeInMinutes]) VALUES (2009, 2005, NULL, 1, 2, 3, CAST(40.70 AS Decimal(6, 2)), CAST(N'2018-05-19T11:30:00.000' AS DateTime), 1, CAST(N'2018-05-19T00:24:50.617' AS DateTime), CAST(N'2018-05-19T14:01:45.143' AS DateTime), 1)
INSERT [dbo].[OrderHistory] ([OrderHistoryID], [OrderID], [TableID], [CustomerID], [OrderTypeID], [OrderStatusID], [TotalPrice], [PickUpTime], [IsPaid], [DateCreated], [DateModified], [TotalPreparationTimeInMinutes]) VALUES (2010, 1003, NULL, 1, 2, 1, CAST(2.50 AS Decimal(6, 2)), CAST(N'2018-05-18T14:01:00.000' AS DateTime), 1, CAST(N'2018-05-18T03:01:53.510' AS DateTime), CAST(N'2018-05-19T14:01:52.140' AS DateTime), 1)
INSERT [dbo].[OrderHistory] ([OrderHistoryID], [OrderID], [TableID], [CustomerID], [OrderTypeID], [OrderStatusID], [TotalPrice], [PickUpTime], [IsPaid], [DateCreated], [DateModified], [TotalPreparationTimeInMinutes]) VALUES (2011, 1003, NULL, 1, 2, 1, CAST(2.50 AS Decimal(6, 2)), CAST(N'2018-05-18T14:01:00.000' AS DateTime), 1, CAST(N'2018-05-18T03:01:53.510' AS DateTime), CAST(N'2018-05-19T14:01:52.140' AS DateTime), 1)
INSERT [dbo].[OrderHistory] ([OrderHistoryID], [OrderID], [TableID], [CustomerID], [OrderTypeID], [OrderStatusID], [TotalPrice], [PickUpTime], [IsPaid], [DateCreated], [DateModified], [TotalPreparationTimeInMinutes]) VALUES (2012, 1003, NULL, 1, 2, 1, CAST(2.50 AS Decimal(6, 2)), CAST(N'2018-05-18T14:01:00.000' AS DateTime), 1, CAST(N'2018-05-18T03:01:53.510' AS DateTime), CAST(N'2018-05-19T14:01:52.150' AS DateTime), 1)
INSERT [dbo].[OrderHistory] ([OrderHistoryID], [OrderID], [TableID], [CustomerID], [OrderTypeID], [OrderStatusID], [TotalPrice], [PickUpTime], [IsPaid], [DateCreated], [DateModified], [TotalPreparationTimeInMinutes]) VALUES (2013, 1003, NULL, 1, 2, 1, CAST(2.50 AS Decimal(6, 2)), CAST(N'2018-05-18T14:01:00.000' AS DateTime), 1, CAST(N'2018-05-18T03:01:53.510' AS DateTime), CAST(N'2018-05-19T14:01:52.150' AS DateTime), 1)
INSERT [dbo].[OrderHistory] ([OrderHistoryID], [OrderID], [TableID], [CustomerID], [OrderTypeID], [OrderStatusID], [TotalPrice], [PickUpTime], [IsPaid], [DateCreated], [DateModified], [TotalPreparationTimeInMinutes]) VALUES (2014, 1003, NULL, 1, 2, 3, CAST(2.50 AS Decimal(6, 2)), CAST(N'2018-05-18T14:01:00.000' AS DateTime), 1, CAST(N'2018-05-18T03:01:53.510' AS DateTime), CAST(N'2018-05-19T14:01:52.153' AS DateTime), 1)
INSERT [dbo].[OrderHistory] ([OrderHistoryID], [OrderID], [TableID], [CustomerID], [OrderTypeID], [OrderStatusID], [TotalPrice], [PickUpTime], [IsPaid], [DateCreated], [DateModified], [TotalPreparationTimeInMinutes]) VALUES (2015, 1003, NULL, 1, 2, 3, CAST(2.50 AS Decimal(6, 2)), CAST(N'2018-05-18T14:01:00.000' AS DateTime), 1, CAST(N'2018-05-18T03:01:53.510' AS DateTime), CAST(N'2018-05-19T14:01:52.160' AS DateTime), 1)
INSERT [dbo].[OrderHistory] ([OrderHistoryID], [OrderID], [TableID], [CustomerID], [OrderTypeID], [OrderStatusID], [TotalPrice], [PickUpTime], [IsPaid], [DateCreated], [DateModified], [TotalPreparationTimeInMinutes]) VALUES (2016, 1003, NULL, 1, 2, 3, CAST(2.50 AS Decimal(6, 2)), CAST(N'2018-05-18T14:01:00.000' AS DateTime), 1, CAST(N'2018-05-18T03:01:53.510' AS DateTime), CAST(N'2018-05-19T14:01:52.183' AS DateTime), 1)
INSERT [dbo].[OrderHistory] ([OrderHistoryID], [OrderID], [TableID], [CustomerID], [OrderTypeID], [OrderStatusID], [TotalPrice], [PickUpTime], [IsPaid], [DateCreated], [DateModified], [TotalPreparationTimeInMinutes]) VALUES (2017, 1003, NULL, 1, 2, 3, CAST(2.50 AS Decimal(6, 2)), CAST(N'2018-05-18T14:01:00.000' AS DateTime), 1, CAST(N'2018-05-18T03:01:53.510' AS DateTime), CAST(N'2018-05-19T14:01:52.187' AS DateTime), 1)
INSERT [dbo].[OrderHistory] ([OrderHistoryID], [OrderID], [TableID], [CustomerID], [OrderTypeID], [OrderStatusID], [TotalPrice], [PickUpTime], [IsPaid], [DateCreated], [DateModified], [TotalPreparationTimeInMinutes]) VALUES (3002, 4003, NULL, 1, 2, 1, CAST(9.90 AS Decimal(6, 2)), CAST(N'2018-05-24T19:50:00.000' AS DateTime), 1, CAST(N'2018-05-24T08:41:39.437' AS DateTime), CAST(N'2018-05-24T20:23:55.023' AS DateTime), NULL)
INSERT [dbo].[OrderHistory] ([OrderHistoryID], [OrderID], [TableID], [CustomerID], [OrderTypeID], [OrderStatusID], [TotalPrice], [PickUpTime], [IsPaid], [DateCreated], [DateModified], [TotalPreparationTimeInMinutes]) VALUES (3003, 4002, 4, NULL, 3, 1, CAST(7.50 AS Decimal(6, 2)), NULL, 1, CAST(N'2018-05-24T08:40:51.593' AS DateTime), CAST(N'2018-05-24T20:24:13.820' AS DateTime), NULL)
INSERT [dbo].[OrderHistory] ([OrderHistoryID], [OrderID], [TableID], [CustomerID], [OrderTypeID], [OrderStatusID], [TotalPrice], [PickUpTime], [IsPaid], [DateCreated], [DateModified], [TotalPreparationTimeInMinutes]) VALUES (3004, 4002, 4, NULL, 3, 1, CAST(7.50 AS Decimal(6, 2)), NULL, 1, CAST(N'2018-05-24T08:40:51.593' AS DateTime), CAST(N'2018-05-24T20:24:13.820' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[OrderHistory] OFF
