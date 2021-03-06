USE [CuddlyWombat]
GO
/****** Object:  Table [dbo].[ReservationStatus]    Script Date: 24/05/2018 9:10:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReservationStatus](
	[ReservationStatusID] [int] NOT NULL,
	[Name] [varchar](255) NULL,
 CONSTRAINT [PK_ReservationStatus] PRIMARY KEY CLUSTERED 
(
	[ReservationStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ReservationStatus] ([ReservationStatusID], [Name]) VALUES (1, N'Pending')
INSERT [dbo].[ReservationStatus] ([ReservationStatusID], [Name]) VALUES (2, N'Canceled')
INSERT [dbo].[ReservationStatus] ([ReservationStatusID], [Name]) VALUES (3, N'Completed')
