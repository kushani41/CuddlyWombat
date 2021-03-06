USE [CuddlyWombat]
GO
/****** Object:  Table [dbo].[OrderMenuItems]    Script Date: 24/05/2018 9:10:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderMenuItems](
	[OrderID] [int] NOT NULL,
	[MenuItemID] [int] NOT NULL,
	[Quntity] [int] NOT NULL,
 CONSTRAINT [PK_OrderMenuItems] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[MenuItemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[OrderMenuItems] ([OrderID], [MenuItemID], [Quntity]) VALUES (4, 8, 1)
INSERT [dbo].[OrderMenuItems] ([OrderID], [MenuItemID], [Quntity]) VALUES (4, 10, 1)
INSERT [dbo].[OrderMenuItems] ([OrderID], [MenuItemID], [Quntity]) VALUES (5, 8, 1)
INSERT [dbo].[OrderMenuItems] ([OrderID], [MenuItemID], [Quntity]) VALUES (6, 8, 1)
INSERT [dbo].[OrderMenuItems] ([OrderID], [MenuItemID], [Quntity]) VALUES (7, 8, 0)
INSERT [dbo].[OrderMenuItems] ([OrderID], [MenuItemID], [Quntity]) VALUES (7, 9, 0)
INSERT [dbo].[OrderMenuItems] ([OrderID], [MenuItemID], [Quntity]) VALUES (8, 1, 2)
INSERT [dbo].[OrderMenuItems] ([OrderID], [MenuItemID], [Quntity]) VALUES (8, 3, 3)
INSERT [dbo].[OrderMenuItems] ([OrderID], [MenuItemID], [Quntity]) VALUES (9, 1, 1)
INSERT [dbo].[OrderMenuItems] ([OrderID], [MenuItemID], [Quntity]) VALUES (14, 1, 5)
INSERT [dbo].[OrderMenuItems] ([OrderID], [MenuItemID], [Quntity]) VALUES (1002, 1, 1)
INSERT [dbo].[OrderMenuItems] ([OrderID], [MenuItemID], [Quntity]) VALUES (1002, 4, 1)
INSERT [dbo].[OrderMenuItems] ([OrderID], [MenuItemID], [Quntity]) VALUES (1002, 1011, 1)
INSERT [dbo].[OrderMenuItems] ([OrderID], [MenuItemID], [Quntity]) VALUES (1003, 2, 1)
INSERT [dbo].[OrderMenuItems] ([OrderID], [MenuItemID], [Quntity]) VALUES (1004, 1, 1)
INSERT [dbo].[OrderMenuItems] ([OrderID], [MenuItemID], [Quntity]) VALUES (2002, 1, 2)
INSERT [dbo].[OrderMenuItems] ([OrderID], [MenuItemID], [Quntity]) VALUES (2002, 11, 1)
INSERT [dbo].[OrderMenuItems] ([OrderID], [MenuItemID], [Quntity]) VALUES (2003, 2, 1)
INSERT [dbo].[OrderMenuItems] ([OrderID], [MenuItemID], [Quntity]) VALUES (2004, 1, 2)
INSERT [dbo].[OrderMenuItems] ([OrderID], [MenuItemID], [Quntity]) VALUES (2004, 11, 1)
INSERT [dbo].[OrderMenuItems] ([OrderID], [MenuItemID], [Quntity]) VALUES (2005, 1, 2)
INSERT [dbo].[OrderMenuItems] ([OrderID], [MenuItemID], [Quntity]) VALUES (2005, 11, 1)
INSERT [dbo].[OrderMenuItems] ([OrderID], [MenuItemID], [Quntity]) VALUES (3003, 10, 2)
INSERT [dbo].[OrderMenuItems] ([OrderID], [MenuItemID], [Quntity]) VALUES (3003, 1011, 1)
INSERT [dbo].[OrderMenuItems] ([OrderID], [MenuItemID], [Quntity]) VALUES (4002, 1011, 1)
INSERT [dbo].[OrderMenuItems] ([OrderID], [MenuItemID], [Quntity]) VALUES (4002, 1012, 2)
INSERT [dbo].[OrderMenuItems] ([OrderID], [MenuItemID], [Quntity]) VALUES (4003, 5, 1)
ALTER TABLE [dbo].[OrderMenuItems]  WITH CHECK ADD  CONSTRAINT [FK_OrderMenuItems_MenuItem] FOREIGN KEY([MenuItemID])
REFERENCES [dbo].[MenuItem] ([MenuItemID])
GO
ALTER TABLE [dbo].[OrderMenuItems] CHECK CONSTRAINT [FK_OrderMenuItems_MenuItem]
GO
ALTER TABLE [dbo].[OrderMenuItems]  WITH CHECK ADD  CONSTRAINT [FK_OrderMenuItems_Order] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([OrderID])
GO
ALTER TABLE [dbo].[OrderMenuItems] CHECK CONSTRAINT [FK_OrderMenuItems_Order]
GO
