USE [CuddlyWombat]
GO
/****** Object:  Table [dbo].[MenuMenuItems]    Script Date: 24/05/2018 9:10:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuMenuItems](
	[MenuID] [int] NOT NULL,
	[MenuItemID] [int] NOT NULL,
 CONSTRAINT [PK_MenuMenuItems] PRIMARY KEY CLUSTERED 
(
	[MenuID] ASC,
	[MenuItemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[MenuMenuItems] ([MenuID], [MenuItemID]) VALUES (1, 1)
INSERT [dbo].[MenuMenuItems] ([MenuID], [MenuItemID]) VALUES (1, 4)
INSERT [dbo].[MenuMenuItems] ([MenuID], [MenuItemID]) VALUES (1, 7)
INSERT [dbo].[MenuMenuItems] ([MenuID], [MenuItemID]) VALUES (1, 11)
INSERT [dbo].[MenuMenuItems] ([MenuID], [MenuItemID]) VALUES (1, 12)
INSERT [dbo].[MenuMenuItems] ([MenuID], [MenuItemID]) VALUES (2, 2)
INSERT [dbo].[MenuMenuItems] ([MenuID], [MenuItemID]) VALUES (2, 3)
INSERT [dbo].[MenuMenuItems] ([MenuID], [MenuItemID]) VALUES (2, 5)
INSERT [dbo].[MenuMenuItems] ([MenuID], [MenuItemID]) VALUES (2, 6)
INSERT [dbo].[MenuMenuItems] ([MenuID], [MenuItemID]) VALUES (2, 8)
INSERT [dbo].[MenuMenuItems] ([MenuID], [MenuItemID]) VALUES (2, 9)
INSERT [dbo].[MenuMenuItems] ([MenuID], [MenuItemID]) VALUES (2, 10)
INSERT [dbo].[MenuMenuItems] ([MenuID], [MenuItemID]) VALUES (2, 2011)
INSERT [dbo].[MenuMenuItems] ([MenuID], [MenuItemID]) VALUES (2, 3011)
INSERT [dbo].[MenuMenuItems] ([MenuID], [MenuItemID]) VALUES (1012, 1011)
INSERT [dbo].[MenuMenuItems] ([MenuID], [MenuItemID]) VALUES (1012, 1012)
INSERT [dbo].[MenuMenuItems] ([MenuID], [MenuItemID]) VALUES (1013, 5)
INSERT [dbo].[MenuMenuItems] ([MenuID], [MenuItemID]) VALUES (1013, 10)
INSERT [dbo].[MenuMenuItems] ([MenuID], [MenuItemID]) VALUES (2002, 1012)
ALTER TABLE [dbo].[MenuMenuItems]  WITH CHECK ADD  CONSTRAINT [FK_MenuMenuItems_Menu] FOREIGN KEY([MenuID])
REFERENCES [dbo].[Menu] ([MenuID])
GO
ALTER TABLE [dbo].[MenuMenuItems] CHECK CONSTRAINT [FK_MenuMenuItems_Menu]
GO
