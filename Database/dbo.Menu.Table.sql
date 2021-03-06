USE [CuddlyWombat]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 24/05/2018 9:10:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[MenuID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[Description] [varchar](500) NULL,
	[IsUsed] [bit] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[MenuTypeID] [int] NOT NULL,
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[MenuID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Menu] ON 

INSERT [dbo].[Menu] ([MenuID], [Name], [Description], [IsUsed], [DateCreated], [MenuTypeID]) VALUES (1, N'Breakfast Menu', N'This is the Cuddly Wombats Breakfast Menu', 1, CAST(N'2018-05-06T22:08:01.437' AS DateTime), 1)
INSERT [dbo].[Menu] ([MenuID], [Name], [Description], [IsUsed], [DateCreated], [MenuTypeID]) VALUES (2, N'Lunch Menu', N'This is the Cuddly Wombat''s Lunch Menu', 1, CAST(N'2018-05-06T22:08:01.437' AS DateTime), 2)
INSERT [dbo].[Menu] ([MenuID], [Name], [Description], [IsUsed], [DateCreated], [MenuTypeID]) VALUES (1012, N'Drinks', N'', 1, CAST(N'2018-05-18T12:35:33.480' AS DateTime), 5)
INSERT [dbo].[Menu] ([MenuID], [Name], [Description], [IsUsed], [DateCreated], [MenuTypeID]) VALUES (1013, N'Dinner', N'', 1, CAST(N'2018-05-18T12:43:36.273' AS DateTime), 3)
INSERT [dbo].[Menu] ([MenuID], [Name], [Description], [IsUsed], [DateCreated], [MenuTypeID]) VALUES (2002, N'Test Menu', N'', 1, CAST(N'2018-05-19T13:01:10.327' AS DateTime), 4)
SET IDENTITY_INSERT [dbo].[Menu] OFF
ALTER TABLE [dbo].[Menu] ADD  CONSTRAINT [DF_Menu_IsUsed]  DEFAULT ((0)) FOR [IsUsed]
GO
ALTER TABLE [dbo].[Menu]  WITH CHECK ADD  CONSTRAINT [FK_Menu_MenuType] FOREIGN KEY([MenuTypeID])
REFERENCES [dbo].[MenuType] ([MenuTypeID])
GO
ALTER TABLE [dbo].[Menu] CHECK CONSTRAINT [FK_Menu_MenuType]
GO
