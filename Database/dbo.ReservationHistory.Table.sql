USE [CuddlyWombat]
GO
/****** Object:  Table [dbo].[ReservationHistory]    Script Date: 24/05/2018 9:10:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReservationHistory](
	[ReservationHistoryID] [int] IDENTITY(1,1) NOT NULL,
	[ReservationID] [int] NOT NULL,
	[CustomerID] [int] NOT NULL,
	[NumberOfTables] [int] NOT NULL,
	[ReservationDate] [date] NOT NULL,
	[ReservationStatusID] [int] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[DateModified] [datetime] NULL,
 CONSTRAINT [PK_ReservationHistory] PRIMARY KEY CLUSTERED 
(
	[ReservationHistoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ReservationHistory] ON 

INSERT [dbo].[ReservationHistory] ([ReservationHistoryID], [ReservationID], [CustomerID], [NumberOfTables], [ReservationDate], [ReservationStatusID], [DateCreated], [DateModified]) VALUES (1, 2, 1, 2, CAST(N'2018-05-23' AS Date), 1, CAST(N'2018-05-10T00:00:00.000' AS DateTime), CAST(N'2018-05-12T22:40:40.423' AS DateTime))
INSERT [dbo].[ReservationHistory] ([ReservationHistoryID], [ReservationID], [CustomerID], [NumberOfTables], [ReservationDate], [ReservationStatusID], [DateCreated], [DateModified]) VALUES (2, 1005, 1, 3, CAST(N'2018-05-19' AS Date), 1, CAST(N'2018-05-12T22:40:11.677' AS DateTime), CAST(N'2018-05-12T22:40:40.433' AS DateTime))
INSERT [dbo].[ReservationHistory] ([ReservationHistoryID], [ReservationID], [CustomerID], [NumberOfTables], [ReservationDate], [ReservationStatusID], [DateCreated], [DateModified]) VALUES (3, 1003, 1, 4, CAST(N'2018-06-15' AS Date), 1, CAST(N'2018-05-10T00:00:00.000' AS DateTime), CAST(N'2018-05-12T22:45:04.473' AS DateTime))
INSERT [dbo].[ReservationHistory] ([ReservationHistoryID], [ReservationID], [CustomerID], [NumberOfTables], [ReservationDate], [ReservationStatusID], [DateCreated], [DateModified]) VALUES (4, 1007, 1, 12, CAST(N'2018-06-02' AS Date), 1, CAST(N'2018-05-12T22:44:39.270' AS DateTime), CAST(N'2018-05-12T22:45:04.477' AS DateTime))
INSERT [dbo].[ReservationHistory] ([ReservationHistoryID], [ReservationID], [CustomerID], [NumberOfTables], [ReservationDate], [ReservationStatusID], [DateCreated], [DateModified]) VALUES (5, 1002, 1, 1, CAST(N'2018-05-12' AS Date), 1, CAST(N'2018-05-10T00:00:00.000' AS DateTime), CAST(N'2018-05-12T23:20:15.293' AS DateTime))
INSERT [dbo].[ReservationHistory] ([ReservationHistoryID], [ReservationID], [CustomerID], [NumberOfTables], [ReservationDate], [ReservationStatusID], [DateCreated], [DateModified]) VALUES (6, 1004, 1, 10, CAST(N'2018-05-12' AS Date), 1, CAST(N'2018-05-10T00:00:00.000' AS DateTime), CAST(N'2018-05-12T23:21:06.190' AS DateTime))
INSERT [dbo].[ReservationHistory] ([ReservationHistoryID], [ReservationID], [CustomerID], [NumberOfTables], [ReservationDate], [ReservationStatusID], [DateCreated], [DateModified]) VALUES (1003, 2010, 1, 2, CAST(N'2018-05-22' AS Date), 1, CAST(N'2018-05-18T11:34:23.563' AS DateTime), CAST(N'2018-05-18T11:36:45.150' AS DateTime))
INSERT [dbo].[ReservationHistory] ([ReservationHistoryID], [ReservationID], [CustomerID], [NumberOfTables], [ReservationDate], [ReservationStatusID], [DateCreated], [DateModified]) VALUES (1004, 2011, 1, 1, CAST(N'2018-05-18' AS Date), 1, CAST(N'2018-05-18T11:36:31.973' AS DateTime), CAST(N'2018-05-18T11:36:45.150' AS DateTime))
INSERT [dbo].[ReservationHistory] ([ReservationHistoryID], [ReservationID], [CustomerID], [NumberOfTables], [ReservationDate], [ReservationStatusID], [DateCreated], [DateModified]) VALUES (1005, 2009, 1, 0, CAST(N'2018-05-18' AS Date), 1, CAST(N'2018-05-18T11:01:10.307' AS DateTime), CAST(N'2018-05-18T11:54:58.187' AS DateTime))
INSERT [dbo].[ReservationHistory] ([ReservationHistoryID], [ReservationID], [CustomerID], [NumberOfTables], [ReservationDate], [ReservationStatusID], [DateCreated], [DateModified]) VALUES (1006, 1006, 1, 1, CAST(N'2018-05-12' AS Date), 1, CAST(N'2018-05-12T22:42:20.210' AS DateTime), CAST(N'2018-05-18T14:32:14.510' AS DateTime))
INSERT [dbo].[ReservationHistory] ([ReservationHistoryID], [ReservationID], [CustomerID], [NumberOfTables], [ReservationDate], [ReservationStatusID], [DateCreated], [DateModified]) VALUES (1007, 1006, 1, 1, CAST(N'2018-05-12' AS Date), 1, CAST(N'2018-05-12T22:42:20.210' AS DateTime), CAST(N'2018-05-18T14:32:14.510' AS DateTime))
INSERT [dbo].[ReservationHistory] ([ReservationHistoryID], [ReservationID], [CustomerID], [NumberOfTables], [ReservationDate], [ReservationStatusID], [DateCreated], [DateModified]) VALUES (1008, 1006, 1, 1, CAST(N'2018-05-12' AS Date), 1, CAST(N'2018-05-12T22:42:20.210' AS DateTime), CAST(N'2018-05-18T14:32:14.510' AS DateTime))
INSERT [dbo].[ReservationHistory] ([ReservationHistoryID], [ReservationID], [CustomerID], [NumberOfTables], [ReservationDate], [ReservationStatusID], [DateCreated], [DateModified]) VALUES (1009, 2008, 1, 0, CAST(N'2018-05-18' AS Date), 1, CAST(N'2018-05-18T10:59:58.507' AS DateTime), CAST(N'2018-05-18T14:33:01.930' AS DateTime))
INSERT [dbo].[ReservationHistory] ([ReservationHistoryID], [ReservationID], [CustomerID], [NumberOfTables], [ReservationDate], [ReservationStatusID], [DateCreated], [DateModified]) VALUES (2003, 1008, 1, 1, CAST(N'2018-05-13' AS Date), 1, CAST(N'2018-05-12T23:20:08.547' AS DateTime), CAST(N'2018-05-19T13:42:33.123' AS DateTime))
INSERT [dbo].[ReservationHistory] ([ReservationHistoryID], [ReservationID], [CustomerID], [NumberOfTables], [ReservationDate], [ReservationStatusID], [DateCreated], [DateModified]) VALUES (2004, 1008, 1, 1, CAST(N'2018-05-13' AS Date), 2, CAST(N'2018-05-12T23:20:08.547' AS DateTime), CAST(N'2018-05-19T13:43:02.023' AS DateTime))
INSERT [dbo].[ReservationHistory] ([ReservationHistoryID], [ReservationID], [CustomerID], [NumberOfTables], [ReservationDate], [ReservationStatusID], [DateCreated], [DateModified]) VALUES (2005, 2013, 1, 2, CAST(N'2018-05-18' AS Date), 1, CAST(N'2018-05-18T11:56:42.923' AS DateTime), CAST(N'2018-05-19T13:43:02.027' AS DateTime))
SET IDENTITY_INSERT [dbo].[ReservationHistory] OFF
