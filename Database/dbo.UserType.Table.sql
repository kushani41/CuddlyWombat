USE [CuddlyWombat]
GO
/****** Object:  Table [dbo].[UserType]    Script Date: 24/05/2018 9:10:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserType](
	[UserTypeID] [int] NOT NULL,
	[Name] [varchar](100) NULL,
 CONSTRAINT [PK_UserType] PRIMARY KEY CLUSTERED 
(
	[UserTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[UserType] ([UserTypeID], [Name]) VALUES (1, N'Adminstrator')
INSERT [dbo].[UserType] ([UserTypeID], [Name]) VALUES (2, N'Kitchen Staff')
INSERT [dbo].[UserType] ([UserTypeID], [Name]) VALUES (3, N'Wait Staff')
