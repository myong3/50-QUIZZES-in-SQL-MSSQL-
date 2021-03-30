USE [FIFTYTEST]
GO
/****** Object:  Table [dbo].[course]    Script Date: 2021/3/26 下午 04:05:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[course](
	[CId] [varchar](10) NULL,
	[Cname] [nvarchar](10) NULL,
	[TId] [varchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sc]    Script Date: 2021/3/26 下午 04:05:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sc](
	[SId] [varchar](10) NULL,
	[CId] [varchar](10) NULL,
	[score] [decimal](18, 1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[student]    Script Date: 2021/3/26 下午 04:05:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[student](
	[SId] [varchar](10) NULL,
	[Sname] [nvarchar](10) NULL,
	[Sage] [datetime] NULL,
	[Ssex] [nvarchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[teacher]    Script Date: 2021/3/26 下午 04:05:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[teacher](
	[TId] [varchar](10) NULL,
	[Tname] [nvarchar](10) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[course] ([CId], [Cname], [TId]) VALUES (N'01', N'語文', N'02')
GO
INSERT [dbo].[course] ([CId], [Cname], [TId]) VALUES (N'02', N'數學', N'01')
GO
INSERT [dbo].[course] ([CId], [Cname], [TId]) VALUES (N'03', N'英語', N'03')
GO
INSERT [dbo].[course] ([CId], [Cname], [TId]) VALUES (N'04', N'自然', N'04')
GO
INSERT [dbo].[sc] ([SId], [CId], [score]) VALUES (N'01', N'01', CAST(80.0 AS Decimal(18, 1)))
GO
INSERT [dbo].[sc] ([SId], [CId], [score]) VALUES (N'01', N'02', CAST(90.0 AS Decimal(18, 1)))
GO
INSERT [dbo].[sc] ([SId], [CId], [score]) VALUES (N'01', N'03', CAST(99.0 AS Decimal(18, 1)))
GO
INSERT [dbo].[sc] ([SId], [CId], [score]) VALUES (N'02', N'01', CAST(70.0 AS Decimal(18, 1)))
GO
INSERT [dbo].[sc] ([SId], [CId], [score]) VALUES (N'02', N'02', CAST(60.0 AS Decimal(18, 1)))
GO
INSERT [dbo].[sc] ([SId], [CId], [score]) VALUES (N'02', N'03', CAST(80.0 AS Decimal(18, 1)))
GO
INSERT [dbo].[sc] ([SId], [CId], [score]) VALUES (N'03', N'01', CAST(80.0 AS Decimal(18, 1)))
GO
INSERT [dbo].[sc] ([SId], [CId], [score]) VALUES (N'03', N'02', CAST(80.0 AS Decimal(18, 1)))
GO
INSERT [dbo].[sc] ([SId], [CId], [score]) VALUES (N'03', N'03', CAST(80.0 AS Decimal(18, 1)))
GO
INSERT [dbo].[sc] ([SId], [CId], [score]) VALUES (N'04', N'01', CAST(50.0 AS Decimal(18, 1)))
GO
INSERT [dbo].[sc] ([SId], [CId], [score]) VALUES (N'04', N'02', CAST(30.0 AS Decimal(18, 1)))
GO
INSERT [dbo].[sc] ([SId], [CId], [score]) VALUES (N'04', N'03', CAST(20.0 AS Decimal(18, 1)))
GO
INSERT [dbo].[sc] ([SId], [CId], [score]) VALUES (N'05', N'01', CAST(76.0 AS Decimal(18, 1)))
GO
INSERT [dbo].[sc] ([SId], [CId], [score]) VALUES (N'05', N'02', CAST(87.0 AS Decimal(18, 1)))
GO
INSERT [dbo].[sc] ([SId], [CId], [score]) VALUES (N'06', N'01', CAST(31.0 AS Decimal(18, 1)))
GO
INSERT [dbo].[sc] ([SId], [CId], [score]) VALUES (N'06', N'03', CAST(34.0 AS Decimal(18, 1)))
GO
INSERT [dbo].[sc] ([SId], [CId], [score]) VALUES (N'07', N'02', CAST(89.0 AS Decimal(18, 1)))
GO
INSERT [dbo].[sc] ([SId], [CId], [score]) VALUES (N'07', N'03', CAST(13.0 AS Decimal(18, 1)))
GO
INSERT [dbo].[sc] ([SId], [CId], [score]) VALUES (N'08', N'04', CAST(6.0 AS Decimal(18, 1)))
GO
INSERT [dbo].[sc] ([SId], [CId], [score]) VALUES (N'09', N'01', CAST(76.0 AS Decimal(18, 1)))
GO
INSERT [dbo].[sc] ([SId], [CId], [score]) VALUES (N'09', N'02', CAST(10.0 AS Decimal(18, 1)))
GO
INSERT [dbo].[sc] ([SId], [CId], [score]) VALUES (N'10', N'01', CAST(1.0 AS Decimal(18, 1)))
GO
INSERT [dbo].[sc] ([SId], [CId], [score]) VALUES (N'10', N'03', CAST(2.0 AS Decimal(18, 1)))
GO
INSERT [dbo].[sc] ([SId], [CId], [score]) VALUES (N'11', N'02', CAST(3.0 AS Decimal(18, 1)))
GO
INSERT [dbo].[sc] ([SId], [CId], [score]) VALUES (N'11', N'03', CAST(4.0 AS Decimal(18, 1)))
GO
INSERT [dbo].[sc] ([SId], [CId], [score]) VALUES (N'08', N'02', CAST(5.0 AS Decimal(18, 1)))
GO
INSERT [dbo].[sc] ([SId], [CId], [score]) VALUES (N'08', N'03', CAST(6.0 AS Decimal(18, 1)))
GO
INSERT [dbo].[student] ([SId], [Sname], [Sage], [Ssex]) VALUES (N'01', N'趙雷', CAST(N'1990-01-01T00:00:00.000' AS DateTime), N'男')
GO
INSERT [dbo].[student] ([SId], [Sname], [Sage], [Ssex]) VALUES (N'02', N'錢電', CAST(N'1990-12-21T00:00:00.000' AS DateTime), N'男')
GO
INSERT [dbo].[student] ([SId], [Sname], [Sage], [Ssex]) VALUES (N'03', N'孫風', CAST(N'1990-12-20T00:00:00.000' AS DateTime), N'男')
GO
INSERT [dbo].[student] ([SId], [Sname], [Sage], [Ssex]) VALUES (N'04', N'李雲', CAST(N'1990-03-21T00:00:00.000' AS DateTime), N'男')
GO
INSERT [dbo].[student] ([SId], [Sname], [Sage], [Ssex]) VALUES (N'05', N'周梅', CAST(N'1991-12-01T00:00:00.000' AS DateTime), N'女')
GO
INSERT [dbo].[student] ([SId], [Sname], [Sage], [Ssex]) VALUES (N'06', N'吳蘭', CAST(N'1992-01-01T00:00:00.000' AS DateTime), N'女')
GO
INSERT [dbo].[student] ([SId], [Sname], [Sage], [Ssex]) VALUES (N'07', N'鄭竹', CAST(N'1989-01-01T00:00:00.000' AS DateTime), N'女')
GO
INSERT [dbo].[student] ([SId], [Sname], [Sage], [Ssex]) VALUES (N'09', N'張三', CAST(N'2017-12-20T00:00:00.000' AS DateTime), N'女')
GO
INSERT [dbo].[student] ([SId], [Sname], [Sage], [Ssex]) VALUES (N'10', N'李四', CAST(N'2017-04-01T00:00:00.000' AS DateTime), N'女')
GO
INSERT [dbo].[student] ([SId], [Sname], [Sage], [Ssex]) VALUES (N'11', N'黃千', CAST(N'2012-06-06T00:00:00.000' AS DateTime), N'女')
GO
INSERT [dbo].[student] ([SId], [Sname], [Sage], [Ssex]) VALUES (N'12', N'趙六', CAST(N'2013-06-13T00:00:00.000' AS DateTime), N'女')
GO
INSERT [dbo].[student] ([SId], [Sname], [Sage], [Ssex]) VALUES (N'13', N'孫七', CAST(N'2014-06-01T00:00:00.000' AS DateTime), N'女')
GO
INSERT [dbo].[student] ([SId], [Sname], [Sage], [Ssex]) VALUES (N'08', N'周霸', CAST(N'1997-03-31T00:00:00.000' AS DateTime), N'男')
GO
INSERT [dbo].[teacher] ([TId], [Tname]) VALUES (N'01', N'張三')
GO
INSERT [dbo].[teacher] ([TId], [Tname]) VALUES (N'02', N'李四')
GO
INSERT [dbo].[teacher] ([TId], [Tname]) VALUES (N'03', N'王五')
GO
INSERT [dbo].[teacher] ([TId], [Tname]) VALUES (N'04', N'林蔡')
GO
