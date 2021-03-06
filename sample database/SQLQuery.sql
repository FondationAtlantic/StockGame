USE [EmpCod_StockGame]
GO
/****** Object:  User [dbo]    Script Date: 2018-05-11 8:40:23 AM 

YLA ORIGINALLY all [dbo] were [EmpCod_StockGame]...

CREATE USER [EmpCod_StockGame] FOR LOGIN [EmpCod_StockGame] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [EmpCod_StockGame]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [EmpCod_StockGame]
GO
ALTER ROLE [db_datareader] ADD MEMBER [EmpCod_StockGame]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [EmpCod_StockGame]
******/
GO
/****** Object:  Schema [EmpCod_StockGame]    Script Date: 2018-05-11 8:40:24 AM ******/
CREATE SCHEMA [EmpCod_StockGame]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 2018-05-11 8:40:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ApplicationUser]    Script Date: 2018-05-11 8:40:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicationUser](
	[Id] [nvarchar](450) NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[FirstMidName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[ActiveGameId] [int] NULL,
	[ActiveTeamMemberId] [int] NULL,
	[OverrideActiveEpisodeIndex] [int] NULL,
 CONSTRAINT [PK_ApplicationUser] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 2018-05-11 8:40:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 2018-05-11 8:40:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 2018-05-11 8:40:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 2018-05-11 8:40:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 2018-05-11 8:40:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 2018-05-11 8:40:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 2018-05-11 8:40:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Episode]    Script Date: 2018-05-11 8:40:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Episode](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AllowTransactions] [bit] NOT NULL,
	[EpisodeIndex] [int] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[ScenarioId] [int] NOT NULL,
	[NewsDetail] [nvarchar](max) NULL,
	[NewsImgPath] [nvarchar](max) NULL,
	[NewsTitle] [nvarchar](max) NULL,
 CONSTRAINT [PK_Episode] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EpisodeEquityInfo]    Script Date: 2018-05-11 8:40:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EpisodeEquityInfo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AllowTransactions] [bit] NOT NULL,
	[AnnounceFinancialResults] [bit] NOT NULL,
	[Cash] [real] NULL,
	[CategoryId] [int] NOT NULL,
	[CostOfGoodsSold] [real] NULL,
	[Dividend] [real] NULL,
	[EarningPerShare] [real] NULL,
	[EpisodeId] [int] NOT NULL,
	[EquityId] [int] NOT NULL,
	[InterestExpense] [real] NULL,
	[InterestIncome] [real] NULL,
	[LongTermAssets] [real] NULL,
	[LongTermDebt] [real] NULL,
	[NewsDetail] [nvarchar](max) NULL,
	[NewsImgPath] [nvarchar](max) NULL,
	[NewsTitle] [nvarchar](max) NULL,
	[OtherIncome] [real] NULL,
	[Price] [real] NOT NULL,
	[ResearchDevelopmentExpense] [real] NULL,
	[Salaries] [real] NULL,
	[Sales] [real] NULL,
	[SellingGeneralAdministrativeExpense] [real] NULL,
	[ShortTermAssets] [real] NULL,
	[ShortTermLiabilities] [real] NULL,
	[Visible] [bit] NOT NULL,
	[OtherAssets] [real] NULL,
	[OutstandingShares] [int] NOT NULL,
	[Loans] [real] NULL,
 CONSTRAINT [PK_EpisodeEquityInfo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Equity]    Script Date: 2018-05-11 8:40:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Equity](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ImgPath] [nvarchar](max) NULL,
	[IndustryId] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[ThumbPath] [nvarchar](max) NULL,
	[DividendFrequency] [int] NOT NULL,
	[StatementPresentation] [int] NOT NULL,
 CONSTRAINT [PK_Equity] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Game]    Script Date: 2018-05-11 8:40:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Game](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AllowJoin] [bit] NOT NULL,
	[AllowJoinEpisodeRange_MaxIndex] [int] NOT NULL,
	[AllowJoinEpisodeRange_MinIndex] [int] NOT NULL,
	[CurrentEpisodeIndex] [int] NOT NULL,
	[InitialCash] [real] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[ScenarioId] [int] NOT NULL,
	[ShowPriceEarningsEpisodeRange_MaxIndex] [int] NOT NULL,
	[ShowPriceEarningsEpisodeRange_MinIndex] [int] NOT NULL,
	[ShowLeverageEpisodeRange_MaxIndex] [int] NOT NULL,
	[ShowLeverageEpisodeRange_MinIndex] [int] NOT NULL,
 CONSTRAINT [PK_Game] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GameGroup]    Script Date: 2018-05-11 8:40:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GameGroup](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[GameId] [int] NOT NULL,
	[GroupId] [int] NOT NULL,
 CONSTRAINT [PK_GameGroup] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Group]    Script Date: 2018-05-11 8:40:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AllowAutoCreateTeam] [bit] NOT NULL,
	[AllowJoin] [bit] NOT NULL,
	[AutoCreateTeamPassword] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[SchoolId] [int] NOT NULL,
	[TeacherUserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_Group] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Industry]    Script Date: 2018-05-11 8:40:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Industry](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_Industry] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Scenario]    Script Date: 2018-05-11 8:40:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Scenario](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[HistoricalEpisodeCount] [int] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[PlayableEpisodeCount] [int] NOT NULL,
 CONSTRAINT [PK_Scenario] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ScenarioEquity]    Script Date: 2018-05-11 8:40:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ScenarioEquity](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EquityId] [int] NOT NULL,
	[ScenarioId] [int] NOT NULL,
 CONSTRAINT [PK_ScenarioEquity] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[School]    Script Date: 2018-05-11 8:40:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[School](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_School] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Team]    Script Date: 2018-05-11 8:40:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Team](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AllowJoin] [bit] NOT NULL,
	[GroupId] [int] NOT NULL,
	[JoinPassword] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[OwnerUserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_Team] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TeamMember]    Script Date: 2018-05-11 8:40:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TeamMember](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TeamId] [int] NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_TeamMember] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TradingSession]    Script Date: 2018-05-11 8:40:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TradingSession](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EpisodeId] [int] NOT NULL,
	[GameId] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[StartTime] [datetime2](7) NULL,
 CONSTRAINT [PK_TradingSession] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transaction]    Script Date: 2018-05-11 8:40:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transaction](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Amount] [int] NOT NULL,
	[EquityId] [int] NOT NULL,
	[TeamMemberId] [int] NOT NULL,
	[TradingSessionId] [int] NOT NULL,
	[TransactionReasonId] [int] NOT NULL,
 CONSTRAINT [PK_Transaction] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TransactionReason]    Script Date: 2018-05-11 8:40:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransactionReason](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_TransactionReason] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180321004803_InitialCreate', N'2.0.1-rtm-125')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180326165732_Add_OtherAssets_OutstandingShares', N'2.0.1-rtm-125')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180329124507_SetNullDeleteBehavior_ApplicationUser_Game', N'2.0.1-rtm-125')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180331120204_Add_News_Episode', N'2.0.1-rtm-125')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180406201548_RemoveTbl_ActiveGameTeam_Add_DividendFrequency_Equity', N'2.0.1-rtm-125')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180409014504_Add_ShowPE_ShowLeverage_Game_Add_Loans_EpisodeEquityInfo', N'2.0.1-rtm-125')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180509142139_Add_OverrideActiveEpisodeIndex_ApplicationUser', N'2.0.1-rtm-125')
GO
INSERT [dbo].[ApplicationUser] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [FirstMidName], [LastName], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [ActiveGameId], [ActiveTeamMemberId], [OverrideActiveEpisodeIndex]) VALUES (N'16509ccf-ab2f-468e-844a-7e150c336cec', 0, N'd67d5eb8-f39c-473b-8662-f73375f6384e', N'remymorel1@gmail.com', 0, N'Rémy', N'Morel', 1, NULL, N'REMYMOREL1@GMAIL.COM', N'REMYMOREL1@GMAIL.COM', N'AQAAAAEAACcQAAAAEF9O2qZS064I2DfVbu5pVcAhgKmseE+sUjvnpn1/EXBX/OXeNj21+yEzaGVCSjJUUA==', NULL, 0, N'da55a7e9-c64c-41f1-bbfc-5d9d6c479ce3', 0, N'remymorel1@gmail.com', 2, 59, 10)
GO
INSERT [dbo].[ApplicationUser] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [FirstMidName], [LastName], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [ActiveGameId], [ActiveTeamMemberId], [OverrideActiveEpisodeIndex]) VALUES (N'2bba7dec-c376-4231-9514-0536997f4cc7', 1, N'6bd77081-39b9-49d5-9593-08a9eaff0318', N'benjaminroy0708@gmail.com', 0, NULL, NULL, 1, NULL, N'BENJAMINROY0708@GMAIL.COM', N'BENJAMINROY0708@GMAIL.COM', N'AQAAAAEAACcQAAAAELRhtXRGw8WpZe+anoTgJPwcCTE1Re/HEFFZNKrB1kmMMvAPhsAd+lN+4h4a9/Qt3w==', NULL, 0, N'47f74966-fba6-49ff-8b33-b153b9d07bd5', 0, N'benjaminroy0708@gmail.com', 2, 58, NULL)
GO
INSERT [dbo].[ApplicationUser] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [FirstMidName], [LastName], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [ActiveGameId], [ActiveTeamMemberId], [OverrideActiveEpisodeIndex]) VALUES (N'35909cb8-f63f-4e1a-aaf1-06b0a5ee7213', 0, N'c0775e13-65c1-4b7b-a969-7cb9ac90a36a', N'liuwei2441734052@gmail.com', 0, NULL, NULL, 1, NULL, N'LIUWEI2441734052@GMAIL.COM', N'LIUWEI2441734052@GMAIL.COM', N'AQAAAAEAACcQAAAAEJ5i49Zgy5FQKEnMSjjgKnjCIMPqROdi9iM5i/EEL+KEkNqC9yOn3cquPahoigcTgA==', NULL, 0, N'5bf06ca2-c6ce-4efb-8dfb-8356e128224d', 0, N'liuwei2441734052@gmail.com', 2, 57, NULL)
GO
INSERT [dbo].[ApplicationUser] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [FirstMidName], [LastName], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [ActiveGameId], [ActiveTeamMemberId], [OverrideActiveEpisodeIndex]) VALUES (N'38fd8c41-db6b-45d1-99e3-84d7c77ee7a9', 0, N'804d2354-d923-40ce-bf15-ffa5c3aaa287', N'pierrestar87@icloud.com', 0, NULL, NULL, 1, NULL, N'PIERRESTAR87@ICLOUD.COM', N'PIERRESTAR87@ICLOUD.COM', N'AQAAAAEAACcQAAAAEKdgKg2MaCAv0xVILFtQg7s40/7k6oIlSjFPmPYUmBSSQ5aOZ+stu4SKGrqGvB/jFg==', NULL, 0, N'c9ec027e-a785-4915-822a-acee057a4a02', 0, N'pierrestar87@icloud.com', 2, 69, NULL)
GO
INSERT [dbo].[ApplicationUser] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [FirstMidName], [LastName], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [ActiveGameId], [ActiveTeamMemberId], [OverrideActiveEpisodeIndex]) VALUES (N'3e9dfca1-ee2b-44d5-8ae8-64f82e99a79f', 0, N'd4eca4b5-5430-47c1-a546-fa41e6555d84', N'bassel.wahab2001@hotmail.fr', 0, NULL, NULL, 1, NULL, N'BASSEL.WAHAB2001@HOTMAIL.FR', N'BASSEL.WAHAB2001@HOTMAIL.FR', N'AQAAAAEAACcQAAAAEPUweQSpwanfnH7dhI6eFMdsH5JTNjMCoh1JMWMlnr+AX2cHT0uvT483lpgYsUZw1w==', NULL, 0, N'88d07ed3-986f-4e91-8e83-a5759709fb2e', 0, N'bassel.wahab2001@hotmail.fr', 2, 45, NULL)
GO
INSERT [dbo].[ApplicationUser] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [FirstMidName], [LastName], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [ActiveGameId], [ActiveTeamMemberId], [OverrideActiveEpisodeIndex]) VALUES (N'3f102c6b-709b-4eb9-a06a-01e606d2eb4c', 0, N'ec2fd2d9-75e4-41eb-a16f-1ab0b8b54a71', N'salut2@monsieur.com', 0, NULL, NULL, 1, NULL, N'SALUT2@MONSIEUR.COM', N'SALUT2@MONSIEUR.COM', N'AQAAAAEAACcQAAAAEFOpIxrqosGM9F5taPmglchrOIirSsLhMP712T8vlNcEqg0cBG0M4pzfFoZvxdjRzg==', NULL, 0, N'630c8f44-67b7-4fb3-bf5c-fa3059fa1ecc', 0, N'salut2@monsieur.com', 2, NULL, NULL)
GO
INSERT [dbo].[ApplicationUser] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [FirstMidName], [LastName], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [ActiveGameId], [ActiveTeamMemberId], [OverrideActiveEpisodeIndex]) VALUES (N'452c9c26-e0bd-4cd2-ab36-bdc639c705c8', 0, N'95a25727-3a0a-4a93-8730-e81c56419fe4', N'tahabeta45@gmail.com', 0, NULL, NULL, 1, NULL, N'TAHABETA45@GMAIL.COM', N'TAHABETA45@GMAIL.COM', N'AQAAAAEAACcQAAAAEJtMEJ9LAJah0omjt5gRK7wVmJbMv9PLBdCvCDdpwP6uA2sz78fTu5uoI7gP1dNEww==', NULL, 0, N'147b2969-cd02-4f4c-a3fc-95bfd1f58988', 0, N'tahabeta45@gmail.com', 2, 62, NULL)
GO
INSERT [dbo].[ApplicationUser] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [FirstMidName], [LastName], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [ActiveGameId], [ActiveTeamMemberId], [OverrideActiveEpisodeIndex]) VALUES (N'4eb4091b-a136-4020-9aaa-02e1e9a6b743', 0, N'4f391e91-881e-447e-bf95-b5e969e6d5b1', N'cathou2000@gmail.com', 0, NULL, NULL, 1, NULL, N'CATHOU2000@GMAIL.COM', N'CATHOU2000@GMAIL.COM', N'AQAAAAEAACcQAAAAECToCdYf+rVgjR7hrtsdyoBloajHDlXgkfDh6Ob7shnuWjn3hbQxDTMPvlavGAyw/A==', NULL, 0, N'333cca68-520c-4d7d-b963-f5b649e37de5', 0, N'cathou2000@gmail.com', 2, 59, NULL)
GO
INSERT [dbo].[ApplicationUser] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [FirstMidName], [LastName], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [ActiveGameId], [ActiveTeamMemberId], [OverrideActiveEpisodeIndex]) VALUES (N'5b0c1cd2-a005-47f0-9790-937155ba6418', 0, N'ac415bb9-e98f-405f-819e-b5665ee3d05f', N'adibakaaboun@yahoo.ca', 0, NULL, NULL, 1, NULL, N'ADIBAKAABOUN@YAHOO.CA', N'ADIBAKAABOUN@YAHOO.CA', N'AQAAAAEAACcQAAAAEMuuNpmTNlHCI0FgWG1ei0MrgRBziqeDnlGhjZ3xFzANI0k5Qz5QOGPBEniD0Uylhw==', NULL, 0, N'c09baa7f-7553-4bbb-8fc0-29b17804cf7c', 0, N'adibakaaboun@yahoo.ca', 2, 46, NULL)
GO
INSERT [dbo].[ApplicationUser] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [FirstMidName], [LastName], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [ActiveGameId], [ActiveTeamMemberId], [OverrideActiveEpisodeIndex]) VALUES (N'5d14b3a6-1d0f-4377-8817-3a6d93872547', 0, N'e791fdda-fd15-4afb-95da-1202ad4e1265', N'andremoutran1@gmail.com', 0, NULL, NULL, 1, NULL, N'ANDREMOUTRAN1@GMAIL.COM', N'ANDREMOUTRAN1@GMAIL.COM', N'AQAAAAEAACcQAAAAEKU6gpGlS1a2UQrolV4Y3GkMKLU8qUmeR4QUOON+4cT7PCw6DJp7U1OgkzjtxV5Hnw==', NULL, 0, N'82c86b5b-bdbd-47e5-8290-6aa78e310f1c', 0, N'andremoutran1@gmail.com', 2, 53, NULL)
GO
INSERT [dbo].[ApplicationUser] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [FirstMidName], [LastName], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [ActiveGameId], [ActiveTeamMemberId], [OverrideActiveEpisodeIndex]) VALUES (N'714d58fd-1944-496c-a5c9-e2a4b48ce99d', 0, N'c55bc4e7-6268-489d-8b40-6ddb6058030c', N'joepet@hotmail.ca', 0, NULL, NULL, 1, NULL, N'JOEPET@HOTMAIL.CA', N'JOEPET@HOTMAIL.CA', N'AQAAAAEAACcQAAAAEA/dYth7lNFPU/hWcHlTrayEgnU+hceqyJh+CWuaj7mEhCEDRrsvyEnAPVHyTYb53w==', NULL, 0, N'bc970ec2-afba-4281-a5ef-45cfcb2455d9', 0, N'joepet@hotmail.ca', 2, 43, NULL)
GO
INSERT [dbo].[ApplicationUser] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [FirstMidName], [LastName], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [ActiveGameId], [ActiveTeamMemberId], [OverrideActiveEpisodeIndex]) VALUES (N'8024957d-967f-4aae-b162-61a5d80bba84', 0, N'f5455e41-d671-495b-b248-9900e949976e', N'benjaminroy7@hotmail.com', 0, N'Benjamin', N'Roy St-André', 1, NULL, N'BENJAMINROY7@HOTMAIL.COM', N'BENJAMINROY7@HOTMAIL.COM', N'AQAAAAEAACcQAAAAEJjNDMONBgx/eco+1DxPFrHxyS7oJCGkWPNEHRONAel+w5goz6RTeGqRXnj7/1MiHA==', NULL, 0, N'018c6932-aa0c-46b1-8b0f-ced704bc8fc5', 0, N'benjaminroy7@hotmail.com', 2, 61, NULL)
GO
INSERT [dbo].[ApplicationUser] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [FirstMidName], [LastName], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [ActiveGameId], [ActiveTeamMemberId], [OverrideActiveEpisodeIndex]) VALUES (N'84ab70de-436a-46cb-90af-676a92d8b4a3', 0, N'8fa9fa40-a6d0-401e-86fc-492688587da5', N'anthony.garos@gmail.com', 0, NULL, NULL, 1, NULL, N'ANTHONY.GAROS@GMAIL.COM', N'ANTHONY.GAROS@GMAIL.COM', N'AQAAAAEAACcQAAAAEL8nR/02im7qUQtBEhrPN7eygqXHJisiCT0gy2pnrIxvt0bpJSjtXvsy2x2IbaKM5w==', NULL, 0, N'7a67c82b-7d84-40a1-b17f-3b3702faa34e', 0, N'anthony.garos@gmail.com', NULL, NULL, NULL)
GO
INSERT [dbo].[ApplicationUser] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [FirstMidName], [LastName], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [ActiveGameId], [ActiveTeamMemberId], [OverrideActiveEpisodeIndex]) VALUES (N'90003c88-9f13-41d0-8347-1742402db24c', 0, N'97660dd0-552a-4225-8388-f807f60f608c', N'bidon@gmail.com', 0, NULL, NULL, 1, NULL, N'BIDON@GMAIL.COM', N'BIDON@GMAIL.COM', N'AQAAAAEAACcQAAAAEKUR+ejO3iazuUtnPthaz2EF77aI3cczRYQw5qR9YB5UmgP91n8KFJOgylEaPSmYOQ==', NULL, 0, N'40e44ea3-f21f-4d8b-b323-16feedef1e93', 0, N'bidon@gmail.com', 2, NULL, NULL)
GO
INSERT [dbo].[ApplicationUser] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [FirstMidName], [LastName], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [ActiveGameId], [ActiveTeamMemberId], [OverrideActiveEpisodeIndex]) VALUES (N'9759286e-ca95-49ae-9a45-eb379895821c', 0, N'19a0513e-eaa8-486f-905e-1432e8dd66ed', N'kevinfunnyhockey@hotmail.com', 0, NULL, NULL, 1, NULL, N'KEVINFUNNYHOCKEY@HOTMAIL.COM', N'KEVINFUNNYHOCKEY@HOTMAIL.COM', N'AQAAAAEAACcQAAAAEHevlFr3KNHHdYezzvgEriYzCs1B2vr6zeikgp/hyPpwvXFMecqOgP9YcS3PsBMrQw==', NULL, 0, N'983c066f-3539-441e-8570-9d3f9a0ecffd', 0, N'kevinfunnyhockey@hotmail.com', 2, 52, NULL)
GO
INSERT [dbo].[ApplicationUser] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [FirstMidName], [LastName], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [ActiveGameId], [ActiveTeamMemberId], [OverrideActiveEpisodeIndex]) VALUES (N'97b51f2d-ed23-4fab-884f-84187b863054', 0, N'3731a7bd-0cba-4cb0-bb73-8a79f89e083a', N'andraos_andrew@hotmail.com', 0, NULL, NULL, 1, NULL, N'ANDRAOS_ANDREW@HOTMAIL.COM', N'ANDRAOS_ANDREW@HOTMAIL.COM', N'AQAAAAEAACcQAAAAEIqVdaduKI8By/qxQb2rb0SzUxEMh12IDM54O7036OiaRc/1+TYruyrt//skPkRm0A==', NULL, 0, N'6717724a-ba5c-4a3d-82bf-ec6342e24b69', 0, N'andraos_andrew@hotmail.com', 2, 48, NULL)
GO
INSERT [dbo].[ApplicationUser] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [FirstMidName], [LastName], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [ActiveGameId], [ActiveTeamMemberId], [OverrideActiveEpisodeIndex]) VALUES (N'98ab66b1-295d-4e8c-bfb4-bcc51999b8e6', 0, N'42702e1a-3344-416c-a2ae-05d4da4895e5', N'ienekeniw@gmail.com', 0, NULL, NULL, 1, NULL, N'IENEKENIW@GMAIL.COM', N'IENEKENIW@GMAIL.COM', N'AQAAAAEAACcQAAAAENFQD/lkqS8gOm8cxkXR3xbR2XhE2OJll348/x/Z1fj2EtNKm1gkvlVaZQLy9oF2Kw==', NULL, 0, N'e6c75b86-c8f1-40f9-812d-3ad99770cdc1', 0, N'ienekeniw@gmail.com', 2, 63, NULL)
GO
INSERT [dbo].[ApplicationUser] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [FirstMidName], [LastName], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [ActiveGameId], [ActiveTeamMemberId], [OverrideActiveEpisodeIndex]) VALUES (N'a17e760d-c983-49f7-90a1-7887cb32922b', 0, N'353924c1-2e4a-4171-a0bc-1efade87b9ec', N'defiextreme@hotmail.ca', 0, NULL, NULL, 1, NULL, N'DEFIEXTREME@HOTMAIL.CA', N'DEFIEXTREME@HOTMAIL.CA', N'AQAAAAEAACcQAAAAEIBz+z0+mugK141QajAw/APSmkpEqYkCC9+JlYAA49/IvP77NGrdCkXZ9/xhcnAZzA==', NULL, 0, N'2d83fd42-9284-48bf-baaa-f742a6e69af6', 0, N'defiextreme@hotmail.ca', 2, 54, NULL)
GO
INSERT [dbo].[ApplicationUser] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [FirstMidName], [LastName], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [ActiveGameId], [ActiveTeamMemberId], [OverrideActiveEpisodeIndex]) VALUES (N'a4d433e8-d17d-43e8-94c4-142f5f739bfa', 0, N'c828f60d-c6b4-4ed4-af3b-5f354bd506ca', N'francoisbarbin@hotmail.com', 0, N'François', N'Barbin', 1, NULL, N'FRANCOISBARBIN@HOTMAIL.COM', N'FRANCOISBARBIN@HOTMAIL.COM', N'AQAAAAEAACcQAAAAEMYyJBTdx5xcQ+4AVq2bSCSz6ljtS22mQTjJD9GJyGGFcLDbBmCEQlAbURwjrgDtJw==', NULL, 0, N'2de92b8f-cfb1-48f2-9d37-bdbf7efddaa8', 0, N'francoisbarbin@hotmail.com', NULL, NULL, NULL)
GO
INSERT [dbo].[ApplicationUser] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [FirstMidName], [LastName], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [ActiveGameId], [ActiveTeamMemberId], [OverrideActiveEpisodeIndex]) VALUES (N'aafe7928-b73d-4b03-a80c-c89932c108ba', 0, N'7a554576-d754-4826-99ba-eb42cb3883a0', N'timeteehee@gmail.com', 0, NULL, NULL, 1, NULL, N'TIMETEEHEE@GMAIL.COM', N'TIMETEEHEE@GMAIL.COM', N'AQAAAAEAACcQAAAAEMemAAluP9aP6wfnLGVZR779yUkY4iXf1lGI8PqAhgIfJyLUKoBhprZ3HFnbpvwBxg==', NULL, 0, N'cdbdb86c-23ab-4aeb-9b63-f786c6e19a41', 0, N'timeteehee@gmail.com', 2, 65, NULL)
GO
INSERT [dbo].[ApplicationUser] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [FirstMidName], [LastName], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [ActiveGameId], [ActiveTeamMemberId], [OverrideActiveEpisodeIndex]) VALUES (N'ac2c82d0-2252-4faa-90e2-00d7c766e82c', 3, N'8a38036d-593f-4855-a01b-578c8c4d14ef', N'labbee@college-pasteur.ca', 0, NULL, NULL, 1, NULL, N'LABBEE@COLLEGE-PASTEUR.CA', N'LABBEE@COLLEGE-PASTEUR.CA', N'AQAAAAEAACcQAAAAELvlE8SzCnr7AXBrzhDQhV8SFH7fJS1vM4CJC5H60vHKiAVlb9THc0t58uKvjQ35+A==', NULL, 0, N'22826612-eea6-4059-8506-7f210e3e9180', 0, N'labbee@college-pasteur.ca', 2, NULL, NULL)
GO
INSERT [dbo].[ApplicationUser] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [FirstMidName], [LastName], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [ActiveGameId], [ActiveTeamMemberId], [OverrideActiveEpisodeIndex]) VALUES (N'b1bac451-934c-40cd-89b2-7a84466fffae', 0, N'8081779f-cfe2-4f61-a132-c4f2e35f1c30', N'test@gmail.com', 0, NULL, NULL, 1, NULL, N'TEST@GMAIL.COM', N'TEST@GMAIL.COM', N'AQAAAAEAACcQAAAAEHvLHUA1Xwm+zLO/2ESo2kzSmyIXO72feJgBGnBKqp3q7FjrkNexxOwRNxCqywVa7w==', NULL, 0, N'f047405d-0360-42a4-b558-2dd8f871ffa4', 0, N'test@gmail.com', NULL, NULL, NULL)
GO
INSERT [dbo].[ApplicationUser] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [FirstMidName], [LastName], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [ActiveGameId], [ActiveTeamMemberId], [OverrideActiveEpisodeIndex]) VALUES (N'b3848f01-1d72-4030-8d05-de8fd0e3af02', 0, N'447e5b39-361d-44ad-b851-79ebf0e8ca2d', N'a@a.hotmail.com', 0, NULL, NULL, 1, NULL, N'A@A.HOTMAIL.COM', N'A@A.HOTMAIL.COM', N'AQAAAAEAACcQAAAAEA0+OQnlMprN6wOIetM6hQmoxm275j2mbpqDi2OPaswfnIzH2BBpBBaOdivnptVTXQ==', NULL, 0, N'2a2b5284-9a0a-4e7f-9cde-c74b6939b054', 0, N'a@a.hotmail.com', 2, 66, NULL)
GO
INSERT [dbo].[ApplicationUser] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [FirstMidName], [LastName], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [ActiveGameId], [ActiveTeamMemberId], [OverrideActiveEpisodeIndex]) VALUES (N'b65fd768-04b5-4453-8a2e-35ebabaa6c88', 0, N'8ab4bee7-00a0-48a1-ae25-4c65217d3025', N'nonololo.ram@hotmail.com', 0, NULL, NULL, 1, NULL, N'NONOLOLO.RAM@HOTMAIL.COM', N'NONOLOLO.RAM@HOTMAIL.COM', N'AQAAAAEAACcQAAAAENkSp76faJ838IXzgS1lYCutsOwAVxAXLqrnWvxBPP762C9a+KM7yOfX4SJ09Yvrdg==', NULL, 0, N'274404ce-539f-4e0e-88ee-467466eb4ab1', 0, N'nonololo.ram@hotmail.com', 2, 55, NULL)
GO
INSERT [dbo].[ApplicationUser] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [FirstMidName], [LastName], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [ActiveGameId], [ActiveTeamMemberId], [OverrideActiveEpisodeIndex]) VALUES (N'b8620cc8-a0c9-4bb3-8e58-b4e96f30726f', 0, N'fac9b662-2afa-4dd3-9ae3-9ed33b550d28', N'rawadroi@hotmail.com', 0, NULL, NULL, 1, NULL, N'RAWADROI@HOTMAIL.COM', N'RAWADROI@HOTMAIL.COM', N'AQAAAAEAACcQAAAAECAuPfDP4+RxXLMoDK06d2s+ugWyVwsv121OwpMPvOtybpy8SuJl3RQBBOEJChXqWQ==', NULL, 0, N'ed31b00d-10ae-4a7b-b1f4-1a0020c64770', 0, N'rawadroi@hotmail.com', 2, 47, NULL)
GO
INSERT [dbo].[ApplicationUser] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [FirstMidName], [LastName], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [ActiveGameId], [ActiveTeamMemberId], [OverrideActiveEpisodeIndex]) VALUES (N'bea44695-24c8-4518-a29e-fcf654c6fdd8', 0, N'c9f9b5e4-e4b1-4044-b1de-e583682422e8', N'yannick.letourneau@gmail.com', 0, N'Yannick', N'Létourneau-Aelbrecht', 1, NULL, N'YANNICK.LETOURNEAU@GMAIL.COM', N'YANNICK.LETOURNEAU@GMAIL.COM', N'AQAAAAEAACcQAAAAEHDz8zk/XZoVN2jEkzSv0WJXSBAZ2mIBtpg0kjaLPAWWCvxQabXqnbkhRDUrQIMVkQ==', NULL, 0, N'e609223a-f628-422f-a953-ee5e789a1eeb', 0, N'yannick.letourneau@gmail.com', 2, 62, 10)
GO
INSERT [dbo].[ApplicationUser] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [FirstMidName], [LastName], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [ActiveGameId], [ActiveTeamMemberId], [OverrideActiveEpisodeIndex]) VALUES (N'c06fb430-fe0b-4253-b22f-384da08b8c7f', 0, N'f397e974-9c44-4c64-ac17-1673228b4a7e', N'relmansouri01@gmail.com', 0, NULL, NULL, 1, NULL, N'RELMANSOURI01@GMAIL.COM', N'RELMANSOURI01@GMAIL.COM', N'AQAAAAEAACcQAAAAEB9eCnMURLQXcY86XTdUdPrZRdG1Ah+n+ZJmcMD8ZyYmlpvNTS/b/uvhsaFrrAjqfw==', NULL, 0, N'5507d4b3-65be-47ad-ba91-c95caaf62ce0', 0, N'relmansouri01@gmail.com', 2, 60, NULL)
GO
INSERT [dbo].[ApplicationUser] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [FirstMidName], [LastName], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [ActiveGameId], [ActiveTeamMemberId], [OverrideActiveEpisodeIndex]) VALUES (N'c4be7c4b-096e-422d-96c9-080233cc6ad2', 0, N'299dfdce-4c3b-4e75-b8df-1ee5333d67c8', N'labbee@ecolepasteur.qc.ca', 0, NULL, NULL, 1, NULL, N'LABBEE@ECOLEPASTEUR.QC.CA', N'LABBEE@ECOLEPASTEUR.QC.CA', N'AQAAAAEAACcQAAAAEMaPPhNFXSKgOhh5m18PhMwAFatQaQ2Qw8dF0v9uNqeAfsGjENTaa0tClbgSD89rEQ==', NULL, 0, N'094c33e6-4091-4f2a-b75b-1c05e31a0543', 0, N'labbee@ecolepasteur.qc.ca', NULL, NULL, NULL)
GO
INSERT [dbo].[ApplicationUser] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [FirstMidName], [LastName], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [ActiveGameId], [ActiveTeamMemberId], [OverrideActiveEpisodeIndex]) VALUES (N'df8ab9b2-ebd7-4308-895c-531bda309721', 0, N'ac21ed7f-2f3f-497a-885a-91cfc3abaf84', N'joe.aboudik@hotmail.com', 0, NULL, NULL, 1, NULL, N'JOE.ABOUDIK@HOTMAIL.COM', N'JOE.ABOUDIK@HOTMAIL.COM', N'AQAAAAEAACcQAAAAEIInZlgA5REtD0aUuvpgunioXODImGAWOoy4JWFCMUfuYx4TnGi7IBZgqMq05v1pPA==', NULL, 0, N'ab8c0515-c373-45e6-9d60-63794abdb676', 0, N'joe.aboudik@hotmail.com', 2, 64, NULL)
GO
INSERT [dbo].[ApplicationUser] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [FirstMidName], [LastName], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [ActiveGameId], [ActiveTeamMemberId], [OverrideActiveEpisodeIndex]) VALUES (N'e9d484d9-b50e-428b-b754-1f525d58f31d', 0, N'474e6e79-6479-4055-bf1d-b7668d7297ee', N'tommy-cao@hotmail.com', 0, NULL, NULL, 1, NULL, N'TOMMY-CAO@HOTMAIL.COM', N'TOMMY-CAO@HOTMAIL.COM', N'AQAAAAEAACcQAAAAEDxmQwvyAex2v21e6Lw3b9PiIUqFUeEoCOpxMaVoj68B2wfapbRDV1aNAdg2fcDxmw==', NULL, 0, N'185cd023-2cad-4604-ae4c-cd36b85fe2cf', 0, N'tommy-cao@hotmail.com', 2, 49, NULL)
GO
INSERT [dbo].[ApplicationUser] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [FirstMidName], [LastName], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [ActiveGameId], [ActiveTeamMemberId], [OverrideActiveEpisodeIndex]) VALUES (N'ec59c80a-e66f-4cf1-9874-450e9946e234', 0, N'95591159-34f9-456b-9061-68d3c6b0b13f', N'liuweijie5713@gmail.com', 0, NULL, NULL, 1, NULL, N'LIUWEIJIE5713@GMAIL.COM', N'LIUWEIJIE5713@GMAIL.COM', N'AQAAAAEAACcQAAAAEM1ijsve07ZG4lS22E6WMEhwOCJuu4yxQHc/ZxoxCTgGAHfaoJXVOYpO7pC240ADAw==', NULL, 0, N'1ed28557-31f2-48a3-ab82-b4db4191b3b9', 0, N'liuweijie5713@gmail.com', 2, 56, NULL)
GO
INSERT [dbo].[ApplicationUser] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [FirstMidName], [LastName], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [ActiveGameId], [ActiveTeamMemberId], [OverrideActiveEpisodeIndex]) VALUES (N'f20619a7-64fa-42d1-898e-7fc15a11d49f', 0, N'bf79194c-897c-4645-a0f2-0be7200f76e3', N'carlitools12@gmail.com', 0, NULL, NULL, 1, NULL, N'CARLITOOLS12@GMAIL.COM', N'CARLITOOLS12@GMAIL.COM', N'AQAAAAEAACcQAAAAEBZj3BK739DjDwUyjjRGeez9XjTBoMItZDBzX1WnQIupuDaIl2ee6Ti0Ez7DoN5P1A==', NULL, 0, N'e61481ae-00d9-4bed-87a9-8bea30100f7f', 0, N'carlitools12@gmail.com', 2, 44, NULL)
GO
INSERT [dbo].[ApplicationUser] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [FirstMidName], [LastName], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [ActiveGameId], [ActiveTeamMemberId], [OverrideActiveEpisodeIndex]) VALUES (N'f3e91e04-2545-4379-9814-e8f813536e90', 0, N'8d7ccecf-495c-4617-b211-4e5ebe9c404c', N'anthony-mn@hotmail.com', 0, NULL, NULL, 1, NULL, N'ANTHONY-MN@HOTMAIL.COM', N'ANTHONY-MN@HOTMAIL.COM', N'AQAAAAEAACcQAAAAEKeZMY5ciURkBi9xH65khvpTWjAcAcE+M/MCMOiuBifSOL/MHkEYuJAx4UAxQ9fADg==', NULL, 0, N'852ddd8d-9612-4188-b976-a1bbbf40594b', 0, N'anthony-mn@hotmail.com', 2, 68, NULL)
GO
INSERT [dbo].[ApplicationUser] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [FirstMidName], [LastName], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName], [ActiveGameId], [ActiveTeamMemberId], [OverrideActiveEpisodeIndex]) VALUES (N'f8a959b2-b233-4276-ba6a-b1bb000a14dc', 0, N'0fe6a05c-c713-4c03-a369-8a381f0d0300', N'aboutros45@gmail.com', 0, NULL, NULL, 1, NULL, N'ABOUTROS45@GMAIL.COM', N'ABOUTROS45@GMAIL.COM', N'AQAAAAEAACcQAAAAEOn9cFPl74uHNtVh7IsthxRl4jE8zBjv6+u2p619nn6HPJQt4Oc7f1KB+vaSHVs3MA==', NULL, 0, N'1510305b-93b0-431a-988d-a35192f7173c', 0, N'aboutros45@gmail.com', 2, 50, NULL)
GO
INSERT [dbo].[AspNetRoles] ([Id], [ConcurrencyStamp], [Name], [NormalizedName]) VALUES (N'174e4fa1-d821-4989-8393-04bff7b8c451', N'1bdf5abe-bdf3-471e-9376-9b31fb3c15bc', N'Admin', N'ADMIN')
GO
INSERT [dbo].[AspNetRoles] ([Id], [ConcurrencyStamp], [Name], [NormalizedName]) VALUES (N'3e445827-c552-48cf-9fc7-8ed9c78d3778', N'0c2853f2-616a-4026-9ec7-b0d24ad8fcaa', N'Student', N'STUDENT')
GO
INSERT [dbo].[AspNetRoles] ([Id], [ConcurrencyStamp], [Name], [NormalizedName]) VALUES (N'4bf29130-3dbf-4803-b194-bf898f679516', N'e77c3426-8851-4e3f-9840-2ca84207e2ff', N'Teacher', N'TEACHER')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'16509ccf-ab2f-468e-844a-7e150c336cec', N'174e4fa1-d821-4989-8393-04bff7b8c451')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'bea44695-24c8-4518-a29e-fcf654c6fdd8', N'174e4fa1-d821-4989-8393-04bff7b8c451')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'2bba7dec-c376-4231-9514-0536997f4cc7', N'3e445827-c552-48cf-9fc7-8ed9c78d3778')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'35909cb8-f63f-4e1a-aaf1-06b0a5ee7213', N'3e445827-c552-48cf-9fc7-8ed9c78d3778')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'38fd8c41-db6b-45d1-99e3-84d7c77ee7a9', N'3e445827-c552-48cf-9fc7-8ed9c78d3778')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3e9dfca1-ee2b-44d5-8ae8-64f82e99a79f', N'3e445827-c552-48cf-9fc7-8ed9c78d3778')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3f102c6b-709b-4eb9-a06a-01e606d2eb4c', N'3e445827-c552-48cf-9fc7-8ed9c78d3778')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'452c9c26-e0bd-4cd2-ab36-bdc639c705c8', N'3e445827-c552-48cf-9fc7-8ed9c78d3778')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'4eb4091b-a136-4020-9aaa-02e1e9a6b743', N'3e445827-c552-48cf-9fc7-8ed9c78d3778')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'5b0c1cd2-a005-47f0-9790-937155ba6418', N'3e445827-c552-48cf-9fc7-8ed9c78d3778')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'5d14b3a6-1d0f-4377-8817-3a6d93872547', N'3e445827-c552-48cf-9fc7-8ed9c78d3778')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'714d58fd-1944-496c-a5c9-e2a4b48ce99d', N'3e445827-c552-48cf-9fc7-8ed9c78d3778')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'8024957d-967f-4aae-b162-61a5d80bba84', N'3e445827-c552-48cf-9fc7-8ed9c78d3778')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'84ab70de-436a-46cb-90af-676a92d8b4a3', N'3e445827-c552-48cf-9fc7-8ed9c78d3778')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'90003c88-9f13-41d0-8347-1742402db24c', N'3e445827-c552-48cf-9fc7-8ed9c78d3778')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'9759286e-ca95-49ae-9a45-eb379895821c', N'3e445827-c552-48cf-9fc7-8ed9c78d3778')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'97b51f2d-ed23-4fab-884f-84187b863054', N'3e445827-c552-48cf-9fc7-8ed9c78d3778')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'98ab66b1-295d-4e8c-bfb4-bcc51999b8e6', N'3e445827-c552-48cf-9fc7-8ed9c78d3778')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'a17e760d-c983-49f7-90a1-7887cb32922b', N'3e445827-c552-48cf-9fc7-8ed9c78d3778')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'a4d433e8-d17d-43e8-94c4-142f5f739bfa', N'3e445827-c552-48cf-9fc7-8ed9c78d3778')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'aafe7928-b73d-4b03-a80c-c89932c108ba', N'3e445827-c552-48cf-9fc7-8ed9c78d3778')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ac2c82d0-2252-4faa-90e2-00d7c766e82c', N'3e445827-c552-48cf-9fc7-8ed9c78d3778')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'b1bac451-934c-40cd-89b2-7a84466fffae', N'3e445827-c552-48cf-9fc7-8ed9c78d3778')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'b3848f01-1d72-4030-8d05-de8fd0e3af02', N'3e445827-c552-48cf-9fc7-8ed9c78d3778')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'b65fd768-04b5-4453-8a2e-35ebabaa6c88', N'3e445827-c552-48cf-9fc7-8ed9c78d3778')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'b8620cc8-a0c9-4bb3-8e58-b4e96f30726f', N'3e445827-c552-48cf-9fc7-8ed9c78d3778')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c06fb430-fe0b-4253-b22f-384da08b8c7f', N'3e445827-c552-48cf-9fc7-8ed9c78d3778')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c4be7c4b-096e-422d-96c9-080233cc6ad2', N'3e445827-c552-48cf-9fc7-8ed9c78d3778')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'df8ab9b2-ebd7-4308-895c-531bda309721', N'3e445827-c552-48cf-9fc7-8ed9c78d3778')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e9d484d9-b50e-428b-b754-1f525d58f31d', N'3e445827-c552-48cf-9fc7-8ed9c78d3778')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ec59c80a-e66f-4cf1-9874-450e9946e234', N'3e445827-c552-48cf-9fc7-8ed9c78d3778')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'f20619a7-64fa-42d1-898e-7fc15a11d49f', N'3e445827-c552-48cf-9fc7-8ed9c78d3778')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'f3e91e04-2545-4379-9814-e8f813536e90', N'3e445827-c552-48cf-9fc7-8ed9c78d3778')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'f8a959b2-b233-4276-ba6a-b1bb000a14dc', N'3e445827-c552-48cf-9fc7-8ed9c78d3778')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'16509ccf-ab2f-468e-844a-7e150c336cec', N'4bf29130-3dbf-4803-b194-bf898f679516')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'bea44695-24c8-4518-a29e-fcf654c6fdd8', N'4bf29130-3dbf-4803-b194-bf898f679516')
GO
INSERT [dbo].[Category] ([Id], [Name]) VALUES (1, N'Blue Chips')
GO
INSERT [dbo].[Category] ([Id], [Name]) VALUES (2, N'Croissance')
GO
INSERT [dbo].[Category] ([Id], [Name]) VALUES (3, N'Cyclique')
GO
INSERT [dbo].[Category] ([Id], [Name]) VALUES (4, N'Turnaround')
GO
SET IDENTITY_INSERT [dbo].[Episode] ON 
GO
INSERT [dbo].[Episode] ([Id], [AllowTransactions], [EpisodeIndex], [Name], [ScenarioId], [NewsDetail], [NewsImgPath], [NewsTitle]) VALUES (1, 0, -7, N'2e trimestre 2016', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Episode] ([Id], [AllowTransactions], [EpisodeIndex], [Name], [ScenarioId], [NewsDetail], [NewsImgPath], [NewsTitle]) VALUES (2, 0, -4, N'1er trimestre 2017', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Episode] ([Id], [AllowTransactions], [EpisodeIndex], [Name], [ScenarioId], [NewsDetail], [NewsImgPath], [NewsTitle]) VALUES (3, 0, -3, N'2e trimestre 2017', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Episode] ([Id], [AllowTransactions], [EpisodeIndex], [Name], [ScenarioId], [NewsDetail], [NewsImgPath], [NewsTitle]) VALUES (4, 0, -2, N'3e trimestre 2017', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Episode] ([Id], [AllowTransactions], [EpisodeIndex], [Name], [ScenarioId], [NewsDetail], [NewsImgPath], [NewsTitle]) VALUES (5, 0, -1, N'4e trimestre 2017', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Episode] ([Id], [AllowTransactions], [EpisodeIndex], [Name], [ScenarioId], [NewsDetail], [NewsImgPath], [NewsTitle]) VALUES (6, 1, 0, N'1er trimestre 2018', 1, N'C''est maintenant le moment de constituer votre portefeuille d''actions. Analysez les données financières de chacune des entreprises, et effectuez des choix judicieux. 
À vos marques, prêts, investissez!', N'~/images/db/upload_news_img/3e131dad-e86f-43c6-aa19-0c7b29adc4d4.jpg', N'À vos calculatrices!')
GO
INSERT [dbo].[Episode] ([Id], [AllowTransactions], [EpisodeIndex], [Name], [ScenarioId], [NewsDetail], [NewsImgPath], [NewsTitle]) VALUES (7, 1, 1, N'2e trimestre 2018', 1, N'La direction entend verser une bonne partie de ses profits en dividendes, tout en maintenant un niveau d''endettement raisonnable.', N'~/images/db/upload_news_img/463d72f6-970f-4e7b-a308-0abefffe6128.jpg', N'Walmart entre en Bourse')
GO
INSERT [dbo].[Episode] ([Id], [AllowTransactions], [EpisodeIndex], [Name], [ScenarioId], [NewsDetail], [NewsImgPath], [NewsTitle]) VALUES (8, 1, 2, N'3e trimestre 2018', 1, N'La banque Royale procède à son premier appel d''offre au public. La société est réputée pour son approche prudente en matière de souscription de prêts. ', N'~/images/db/upload_news_img/ffcd6837-567e-4816-8a73-503f869b9aec.jpg', N'Nouvelle venue: Banque Royale')
GO
INSERT [dbo].[Episode] ([Id], [AllowTransactions], [EpisodeIndex], [Name], [ScenarioId], [NewsDetail], [NewsImgPath], [NewsTitle]) VALUES (9, 1, 3, N'4e trimestre 2018', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Episode] ([Id], [AllowTransactions], [EpisodeIndex], [Name], [ScenarioId], [NewsDetail], [NewsImgPath], [NewsTitle]) VALUES (10, 1, 4, N'1er trimestre 2019', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Episode] ([Id], [AllowTransactions], [EpisodeIndex], [Name], [ScenarioId], [NewsDetail], [NewsImgPath], [NewsTitle]) VALUES (11, 1, 5, N'2e trimestre 2019', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Episode] ([Id], [AllowTransactions], [EpisodeIndex], [Name], [ScenarioId], [NewsDetail], [NewsImgPath], [NewsTitle]) VALUES (12, 1, 6, N'3e trimestre 2019', 1, N'Canadan Tires fait son entrée en Bourse. La direction prévoit une croissance des profits de 10% par an. ', N'~/images/db/upload_news_img/04ef3b7a-f495-4443-b78b-28c566b326bc.jpg', N'Nouveau PAPE')
GO
INSERT [dbo].[Episode] ([Id], [AllowTransactions], [EpisodeIndex], [Name], [ScenarioId], [NewsDetail], [NewsImgPath], [NewsTitle]) VALUES (13, 1, 7, N'4e trimestre 2019', 1, N'Freenome Bioscience, la nouvelle coqueluche des analystes du secteur de la biotechnologie, entre en bourse aux États-Unis.', N'~/images/db/upload_news_img/158a50b1-8254-4e26-b2ea-2cfaad738202.jpeg', N'Freenome Bioscience arrive aux État-Unis!')
GO
INSERT [dbo].[Episode] ([Id], [AllowTransactions], [EpisodeIndex], [Name], [ScenarioId], [NewsDetail], [NewsImgPath], [NewsTitle]) VALUES (14, 0, -5, N'4e trimestre 2016', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Episode] ([Id], [AllowTransactions], [EpisodeIndex], [Name], [ScenarioId], [NewsDetail], [NewsImgPath], [NewsTitle]) VALUES (15, 1, 8, N'1er trimestre 2020', 1, N'Les États-Unis et le Canada sont entrés officiellement en récession. Le taux de chômage a grimpé de 3%. Les conditions s''annoncent difficiles pour les entreprises, mais les perspectives à long termes des entreprises demeurent bonnes.', N'~/images/db/upload_news_img/c26491f2-dbe4-4a5a-9f96-adccd1a7809e.jpg', N'Récession')
GO
INSERT [dbo].[Episode] ([Id], [AllowTransactions], [EpisodeIndex], [Name], [ScenarioId], [NewsDetail], [NewsImgPath], [NewsTitle]) VALUES (16, 1, 10, N'3e trimestre 2020', 1, N'La récession a pris officiellement fin. Le produit intérieur brut des États-Unis et du Canada augmente à nouveau. ', N'~/images/db/upload_news_img/9cc48969-d9f4-4637-a20d-74661280a100.jpg', N'Fin de la récession')
GO
INSERT [dbo].[Episode] ([Id], [AllowTransactions], [EpisodeIndex], [Name], [ScenarioId], [NewsDetail], [NewsImgPath], [NewsTitle]) VALUES (17, 1, 11, N'4e trimestre 2020', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Episode] ([Id], [AllowTransactions], [EpisodeIndex], [Name], [ScenarioId], [NewsDetail], [NewsImgPath], [NewsTitle]) VALUES (18, 1, 12, N'1er trimestre 2021', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Episode] ([Id], [AllowTransactions], [EpisodeIndex], [Name], [ScenarioId], [NewsDetail], [NewsImgPath], [NewsTitle]) VALUES (19, 1, 13, N'2e trimestre 2021', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Episode] ([Id], [AllowTransactions], [EpisodeIndex], [Name], [ScenarioId], [NewsDetail], [NewsImgPath], [NewsTitle]) VALUES (20, 1, 14, N'3e trimestre 2021', 1, N'Suite à la bonne tenue de la bourse, les analystes se montrent très optimistes. L''économie va bien et les indices boursiers se transigent au-dessus de leur moyenne historique.', N'~/images/db/upload_news_img/27fa969d-70d9-47f6-bcd6-0a6d23a42e69.jpg', N'Euphorie boursière')
GO
INSERT [dbo].[Episode] ([Id], [AllowTransactions], [EpisodeIndex], [Name], [ScenarioId], [NewsDetail], [NewsImgPath], [NewsTitle]) VALUES (21, 1, 15, N'4e trimestre 2021', 1, N'Donald Trump fait des menaces sur Twitter au dirigeant de la Corée du Nord. Les observateurs craignent une escalade militaire. La bourse qui avait atteint un niveau strastosphérique chute violemment.', N'~/images/db/upload_news_img/bf6c3cc5-74f7-47a5-b76f-45a13aadf6a1.jpg', N'La crainte d''un conflit engendre une correction boursière')
GO
INSERT [dbo].[Episode] ([Id], [AllowTransactions], [EpisodeIndex], [Name], [ScenarioId], [NewsDetail], [NewsImgPath], [NewsTitle]) VALUES (22, 1, 16, N'1er trimestre 2022', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Episode] ([Id], [AllowTransactions], [EpisodeIndex], [Name], [ScenarioId], [NewsDetail], [NewsImgPath], [NewsTitle]) VALUES (23, 1, 17, N'2e trimestre 2022', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Episode] ([Id], [AllowTransactions], [EpisodeIndex], [Name], [ScenarioId], [NewsDetail], [NewsImgPath], [NewsTitle]) VALUES (24, 1, 18, N'3e trimestre 2022', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Episode] ([Id], [AllowTransactions], [EpisodeIndex], [Name], [ScenarioId], [NewsDetail], [NewsImgPath], [NewsTitle]) VALUES (25, 1, 19, N'4e trimestre 2022', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Episode] ([Id], [AllowTransactions], [EpisodeIndex], [Name], [ScenarioId], [NewsDetail], [NewsImgPath], [NewsTitle]) VALUES (26, 1, 20, N'1er trimestre 2023', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Episode] ([Id], [AllowTransactions], [EpisodeIndex], [Name], [ScenarioId], [NewsDetail], [NewsImgPath], [NewsTitle]) VALUES (27, 1, 21, N'2e trimestre 2023', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Episode] ([Id], [AllowTransactions], [EpisodeIndex], [Name], [ScenarioId], [NewsDetail], [NewsImgPath], [NewsTitle]) VALUES (28, 1, 9, N'2e trimestre 2020', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Episode] ([Id], [AllowTransactions], [EpisodeIndex], [Name], [ScenarioId], [NewsDetail], [NewsImgPath], [NewsTitle]) VALUES (29, 0, -6, N'3e trimestre 2016', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Episode] ([Id], [AllowTransactions], [EpisodeIndex], [Name], [ScenarioId], [NewsDetail], [NewsImgPath], [NewsTitle]) VALUES (30, 1, 23, N'4e trimestre 2023', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Episode] ([Id], [AllowTransactions], [EpisodeIndex], [Name], [ScenarioId], [NewsDetail], [NewsImgPath], [NewsTitle]) VALUES (31, 0, -8, N'1er trimestre 2016', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Episode] ([Id], [AllowTransactions], [EpisodeIndex], [Name], [ScenarioId], [NewsDetail], [NewsImgPath], [NewsTitle]) VALUES (32, 1, 22, N'3e trimestre 2023', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Episode] ([Id], [AllowTransactions], [EpisodeIndex], [Name], [ScenarioId], [NewsDetail], [NewsImgPath], [NewsTitle]) VALUES (40, 0, -12, N'1er trimestre 2015', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Episode] ([Id], [AllowTransactions], [EpisodeIndex], [Name], [ScenarioId], [NewsDetail], [NewsImgPath], [NewsTitle]) VALUES (41, 0, -11, N'2e trimestre 2015', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Episode] ([Id], [AllowTransactions], [EpisodeIndex], [Name], [ScenarioId], [NewsDetail], [NewsImgPath], [NewsTitle]) VALUES (42, 0, -10, N'3e trimestre 2015', 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Episode] ([Id], [AllowTransactions], [EpisodeIndex], [Name], [ScenarioId], [NewsDetail], [NewsImgPath], [NewsTitle]) VALUES (43, 0, -9, N'4e trimestre 2015', 1, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Episode] OFF
GO
SET IDENTITY_INSERT [dbo].[EpisodeEquityInfo] ON 
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (2, 1, 0, NULL, 1, NULL, 0.42, NULL, 28, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 78, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (3, 1, 0, NULL, 1, NULL, 0, NULL, 28, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 330, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (4, 1, 0, NULL, 1, NULL, 0.53, NULL, 28, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 46, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (5, 1, 0, NULL, 1, NULL, 0.17, NULL, 28, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12.5, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (6, 1, 1, 1.645E+09, 1, NULL, 0.25, 1.71, 28, 5, NULL, NULL, NULL, 5.556E+09, NULL, NULL, NULL, NULL, 26, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1.5076E+10, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (7, 1, 0, NULL, 1, NULL, 0, NULL, 28, 6, NULL, NULL, NULL, NULL, N'Face aux importantes pertes sur prêt dûes à la récession, Citigroup doit déclarer banqueroute et subir une restructuration. La nouvelle direction anticipe une forte perte aux prochains résultats, mais indique que les profits ajustés seront de 11 cents par action.', N'~/images/db/upload_news_img/a028d667-0011-480b-8511-ce600c0eac44.jpg', N'La récession a raison de Citigroup', NULL, 3.67, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (8, 1, 0, NULL, 1, NULL, NULL, NULL, 28, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1256, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (9, 1, 0, NULL, 1, NULL, 0, NULL, 28, 8, NULL, NULL, NULL, NULL, N'Les créanciers prennent le contrôle de la société par le biais   d''une importante émission d''actions. La dette est effacée. General Electric peut opérer sans le fardeau de la dette, et ne conserve que ses divisions les plus rentables.', N'~/images/db/upload_news_img/1442405f-39b6-4500-8b64-261a287cfec8.jpg', N'Importante restructuration de l''actionnariat', NULL, 2.13, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (11, 1, 0, NULL, 1, NULL, 0.2, NULL, 28, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 32, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (12, 1, 0, NULL, 1, NULL, NULL, NULL, 28, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 345, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (13, 1, 0, NULL, 1, NULL, 0.4, NULL, 28, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 44, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (14, 1, 0, NULL, 1, NULL, NULL, NULL, 28, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 188, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (15, 1, 0, NULL, 1, NULL, NULL, NULL, 28, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4.98, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (16, 1, 0, NULL, 1, NULL, 0.05, NULL, 28, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2.11, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (18, 1, 0, NULL, 1, NULL, 0.42, NULL, 16, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 84, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (19, 1, 1, 7.6E+09, 1, NULL, 0, 19.5, 16, 2, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 343, NULL, NULL, NULL, NULL, NULL, NULL, 1, 9.06E+10, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (20, 1, 1, 8.29E+09, 1, NULL, 0.55, 3.9, 28, 10, NULL, NULL, NULL, 2.1E+09, NULL, NULL, NULL, NULL, 68, NULL, NULL, NULL, NULL, NULL, NULL, 1, 8.06E+09, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (21, 1, 0, NULL, 1, NULL, 0.53, NULL, 16, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 49, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (22, 1, 1, 1.5E+07, 1, NULL, 0.05, 0.19, 15, 15, NULL, NULL, NULL, 3.16E+09, NULL, NULL, NULL, NULL, 2.41, NULL, NULL, NULL, NULL, NULL, NULL, 1, 6.615E+09, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (23, 1, 1, 1.0333E+10, 1, NULL, NULL, 7.49, 15, 13, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 183, NULL, NULL, NULL, NULL, NULL, NULL, 1, 7.7467E+10, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (24, 1, 0, NULL, 1, NULL, NULL, NULL, 13, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 335, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (25, 1, 0, NULL, 1, NULL, 0.4, NULL, 13, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 45, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (26, 1, 0, NULL, 1, NULL, NULL, NULL, 13, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 180, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (27, 1, 0, NULL, 1, NULL, NULL, NULL, 13, 14, NULL, NULL, NULL, NULL, N'Freenome Bioscience, une société britannique en démarrage, entre en bourse aux USA pour faciliter son accès aux capitaux.  La compagnie a l''intention de commencer les tests cliniques en vue de l''approbation de son test de dépistage du cancer de la prostate par la FDA (Food & Drugs Administration). Ce test révolutionnaire permettrait de détecter le cancer sans recourir aux procédures invasives habituelles.  L''entreprise souhaite profiter du potentiel énorme du marché américain d''ici quelques années.', N'~/images/db/upload_news_img/a4e036ad-cc41-4b02-af2d-1fb27fe4cf73.jpg', N'Nouvelle entreprise!', NULL, 5.47, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (28, 1, 0, NULL, 1, NULL, 0.05, NULL, 13, 15, NULL, NULL, NULL, NULL, N'L''analyste Anthou Ziast de la firme new-yorkaise P.-O. Verty estime que le gain de 14% depuis 6 mois devrait donner confiance aux investisseurs. Il entrevoit un prix bien plus élevé  dans un an. ', N'~/images/db/upload_news_img/c33cb57e-ada1-4dd9-aa8e-41913fd30e25.png', N'Le titre Bombardier recommandé par M. Ziast.', NULL, 2.61, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (30, 1, 1, 8.25E+09, 1, NULL, 0.42, 6.57, 15, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 95, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1.16505E+11, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (31, 1, 0, NULL, 1, NULL, 0, NULL, 15, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 329, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (32, 1, 1, 2E+07, 1, NULL, NULL, -0.42, 15, 14, NULL, NULL, NULL, 1.5E+07, NULL, NULL, NULL, NULL, 5.74, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2.786E+07, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (33, 1, 0, NULL, 1, NULL, 0.53, NULL, 15, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 49, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (34, 1, 0, NULL, 1, NULL, 0.25, NULL, 15, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 29, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (35, 1, 0, NULL, 1, NULL, 0.55, NULL, 15, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (36, 1, 0, NULL, 1, NULL, NULL, NULL, 15, 7, NULL, NULL, NULL, NULL, N'Les investisseurs se sont rués sur le titre de Berkshire Hathaway, vu comme une valeur refuge en temps de récession.  Le dirigeant Warren Buffet tente de rassurer les investisseurs que les récessions sont normales, et que l''économie devrait rebondir éventuellement.', N'~/images/db/upload_news_img/1c322593-b538-4ced-aa95-0c0a3d154308.jpg', N'Warren Buffet se veut rassurant', NULL, 1237, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (37, 1, 0, NULL, 1, NULL, 0, NULL, 15, 8, NULL, NULL, NULL, NULL, N'Les créanciers de General Electric annoncent que les conditions d''emprunt ne sont pas respectées, étant donné l''absence de profits. Ils sont en droit de forcer la liquidation de la société, et songent à le faire.', N'~/images/db/upload_news_img/82ef5c00-9780-4fd6-bff1-c50472e2455c.jpg', N'Les créanciers s''impatientent', NULL, 13, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (38, 1, 0, NULL, 1, NULL, 0.2, NULL, 15, 9, NULL, NULL, NULL, NULL, N'La direction prévoit une charge pour pertes sur prêts de 3,00$ par action. Sans cette perte, les profits auraient crû de 0,51$ par action.', N'~/images/db/upload_news_img/a7422831-d9b9-45e0-96c5-c576a055d42e.jpg', N'Annonce de charge sur les prêts', NULL, 28, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (39, 1, 0, NULL, 1, NULL, 0.4, NULL, 15, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 74, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (40, 1, 1, 1.05E+10, 1, NULL, NULL, 0.09, 15, 11, NULL, NULL, NULL, 8E+09, N'La mise en production du Modèle 3 s''avérant plus onéreuse que prévu, la compagnie émet des actions afin de financer l''optimisation de sa chaine de montage. Celle-ci occasionnera une dilution de 20% des actionnaires. Le côté positif est que le produit demeure un succès auprès des consommateurs et la compagnie n''arrive pas à fournir la demande.', N'~/images/db/upload_news_img/53ca90f6-7f85-4a93-b91e-8013fd7e76e5.jpg', N'La production du Modèle 3 est un défi de taille', NULL, 340, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1.040065E+10, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (41, 1, 0, NULL, 1, NULL, 0.4, NULL, 15, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 46, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (42, 1, 0, NULL, 1, NULL, 0.17, NULL, 15, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13.5, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (43, 1, 0, NULL, 1, NULL, 0.4, NULL, 13, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 82, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (44, 1, 1, 1.1398E+08, 1, NULL, 0.17, 1.02, 16, 4, NULL, NULL, NULL, 1.96E+09, N'L''analyste E.D. Oswood de la firme P.O. Verty n''a plus confiance au titre. Il lui assigne un prix de 9$. ', N'~/images/db/upload_news_img/02b00634-6b6c-4168-9e73-7b68d7dce2af.jpg', N'Changement de cap chez un analyste', NULL, 13.5, NULL, NULL, NULL, NULL, NULL, NULL, 1, 7.75602E+09, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (45, 1, 0, NULL, 1, NULL, 0, NULL, 16, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3.72, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (46, 1, 0, NULL, 1, NULL, NULL, NULL, 17, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 199, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (47, 1, 0, NULL, 1, NULL, NULL, NULL, 17, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4.78, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (48, 1, 0, NULL, 1, NULL, 0.05, NULL, 17, 15, NULL, NULL, NULL, NULL, N'La récession a amené l''entreprise à beaucoup s''endetter. Le gouvernement du Québec injecte un montant d''argent important dans la société, en acquérant des actions ordinaires, afin de permettre à Bombardier de rembourser la moitié de sa dette. Étant donné la dilution, on prévoit des profits de 0,17$ par action le 1er trimestre 2021.', N'~/images/db/upload_news_img/062cf8b1-07ca-4e70-ad5e-d5800e076c17.jpg', N'Québec investit dans Bombardier', NULL, 1.35, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (50, 1, 1, 7.4E+09, 1, NULL, 0.52, 6.02, 18, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 101, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1.39055E+11, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (51, 1, 0, NULL, 1, NULL, 0, NULL, 18, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 435, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (52, 1, 0, NULL, 1, NULL, 0.53, NULL, 18, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 49, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (53, 1, 0, NULL, 1, NULL, 0.17, NULL, 18, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (54, 1, 0, NULL, 1, NULL, 0.4, NULL, 17, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 41, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (55, 1, 0, NULL, 1, NULL, 0.55, NULL, 18, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (56, 1, 0, NULL, 1, NULL, NULL, NULL, 18, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1276, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (57, 1, 0, NULL, 1, NULL, 0, NULL, 18, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4.28, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (58, 1, 0, NULL, 1, NULL, 0.25, NULL, 18, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 43, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (59, 1, 0, NULL, 1, NULL, 0.55, NULL, 18, 10, NULL, NULL, NULL, NULL, N'Apple prévient les investisseurs qu''une importante charge de 3,50$ par action affecteront ses prochains résultats (2e trimestre 2021), dû au problème survenu avec ses piles dans les cellulaires', N'~/images/db/upload_news_img/c9ebfb33-d92f-481b-84d4-ecaf8496d8d9.jpg', N'Charge à prévoir aux prochains résultats', NULL, 52, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (60, 1, 1, 4E+09, 1, NULL, NULL, 5.55, 18, 11, NULL, NULL, NULL, 8.5E+09, NULL, NULL, NULL, NULL, 400, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1.851065E+10, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (61, 1, 0, NULL, 1, NULL, 0.4, NULL, 18, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 41, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (62, 1, 1, 1.271E+10, 1, NULL, NULL, 8.92, 18, 13, NULL, NULL, NULL, 0, N'En tant que grand numéro 2 dans le monde de la publicité en ligne (après Google), Facebook cherche à augmenter ses parts de marchés. La compétition étant plus intense, la direction s''attend à un taux de croissance deux fois moins élevé dans le futur que celui enregistré historiquement.', N'~/images/db/upload_news_img/7c3b7d4e-1e81-40be-a32d-0ac5e17d88b3.png', N'Taux de croissance révisé', NULL, 168, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1.0185E+11, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (63, 1, 1, 1.5E+07, 1, NULL, NULL, -1.76, 18, 14, NULL, NULL, NULL, 2.17E+07, NULL, NULL, NULL, NULL, 4.2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4.184E+07, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (64, 1, 0, NULL, 1, NULL, 0, NULL, 18, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3.87, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (65, 1, 0, NULL, 1, NULL, 0.25, NULL, 16, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 25, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (66, 1, 0, NULL, 1, NULL, NULL, NULL, 17, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 367, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (67, 1, 1, 1.865E+10, 1, NULL, 0.25, -1.15, 17, 9, NULL, NULL, NULL, 3.59E+11, NULL, NULL, NULL, NULL, 40, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, 3.7985E+11)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (68, 1, 0, NULL, 1, NULL, NULL, NULL, 16, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1210, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (69, 1, 1, 4.5E+08, 1, NULL, 0, 0.35, 16, 8, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2.67, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1.75E+09, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (70, 1, 0, NULL, 1, NULL, 0.2, NULL, 16, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 36, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (71, 1, 0, NULL, 1, NULL, 0.55, NULL, 16, 10, NULL, NULL, NULL, NULL, N'Problème de fabrication: certains piles ont explosé durant la recharge de nos cellulaires. Un grand nombre de piles devront être changées, et des compensations sont à prévoir pour les personnes victimes des explosions.', N'~/images/db/upload_news_img/5b271306-7555-467c-8f98-10f26e934a8b.jpg', N'Cauchemar explosif chez Apple!', NULL, 49, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (72, 1, 0, NULL, 1, NULL, NULL, NULL, 16, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 378, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (73, 1, 1, 7.6456E+07, 1, NULL, 0.4, 2.87, 16, 12, NULL, NULL, NULL, 1.369E+09, NULL, NULL, NULL, NULL, 43, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4.021544E+09, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (74, 1, 0, NULL, 1, NULL, NULL, NULL, 16, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 195, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (75, 1, 0, NULL, 1, NULL, NULL, NULL, 16, 14, NULL, NULL, NULL, NULL, N'Afin de financer ses essais cliniques aux États-Unis, l''entreprise émet de nouvelles actions, causant une dilution de l''actionnariat de 60%.', N'~/images/db/upload_news_img/d66dc962-11f9-46c4-9ae7-fa682df50de7.png', N'Émission d''actions', NULL, 4.12, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (76, 1, 0, NULL, 1, NULL, 0.55, NULL, 17, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 51, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (77, 1, 0, NULL, 1, NULL, 0.05, NULL, 16, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1.99, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (78, 1, 0, NULL, 1, NULL, 0.42, NULL, 17, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 92, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (79, 1, 0, NULL, 1, NULL, 0, NULL, 17, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 408, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (80, 1, 1, 1.77E+09, 1, NULL, 0.53, 2.9, 17, 3, NULL, NULL, NULL, 1.0112E+10, NULL, NULL, NULL, NULL, 53, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2.8657E+10, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (81, 1, 0, NULL, 1, NULL, 0.17, NULL, 17, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (82, 1, 0, NULL, 1, NULL, 0.25, NULL, 17, 5, NULL, NULL, NULL, NULL, N'Malgré la récession terminée, la direction s''attend à des profits décevants aux prochains résultats. Une baisse non négligeable est à prévoir. 
', N'~/images/db/upload_news_img/9df443ab-c3e6-4d1d-ae2d-c446a61083d7.jpg', N'Des profits moindres à prévoir', NULL, 26, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (83, 1, 1, 6.5E+07, 1, NULL, 0, -12.35, 17, 6, NULL, NULL, NULL, 1.378E+11, NULL, NULL, NULL, NULL, 3.78, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, 1.62235E+11)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (84, 1, 1, 9.725E+09, 1, NULL, NULL, 72.4, 17, 7, NULL, NULL, NULL, 6.846E+10, NULL, NULL, NULL, NULL, 1255, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2.180625E+11, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (85, 1, 0, NULL, 1, NULL, 0, NULL, 17, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3.57, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (87, 1, 1, 1.3E+08, 1, NULL, 0.01, 0.17, 18, 15, NULL, NULL, NULL, 1.55E+09, NULL, NULL, NULL, NULL, 1.65, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4.83E+09, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (88, 1, 1, 1.75E+10, 1, NULL, 0.2, 2.34, 13, 9, NULL, NULL, NULL, 4.31E+11, NULL, NULL, NULL, NULL, 36, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, 4.5945E+11)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (89, 1, 1, 2.1514E+10, 1, NULL, NULL, 80.26, 13, 7, NULL, NULL, NULL, 6.275E+10, NULL, NULL, NULL, NULL, 1032, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1.824635E+11, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (90, 1, 1, 1.458E+10, 1, NULL, 0.17, 2.05, 9, 9, NULL, NULL, NULL, 3.9E+11, NULL, NULL, NULL, NULL, 31, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, 4.1675E+11)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (91, 1, 0, NULL, 1, NULL, 0.38, NULL, 9, 10, NULL, NULL, NULL, NULL, N'La société annonce qu''étant donné son surplus d''encaisse, elle versera au 2e trimestre 2019 un dividende spécial de 3$ par action en sus de son dividende régulier annuel de 1.52$.', N'~/images/db/upload_news_img/6503123a-cdac-48ab-b530-4805a6aec2c9.jpg', N'Dividende spécial', NULL, 77, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (92, 0, 0, NULL, 1, NULL, NULL, NULL, 9, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 288, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (93, 0, 0, NULL, 1, NULL, 0.37, NULL, 9, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 54, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (94, 1, 0, NULL, 1, NULL, NULL, NULL, 9, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 133, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (95, 0, 0, NULL, 1, NULL, NULL, NULL, 9, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4.03, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (96, 1, 0, NULL, 1, NULL, 0.04, NULL, 9, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2.37, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (98, 1, 0, NULL, 1, NULL, 0, NULL, 9, 8, NULL, NULL, NULL, NULL, N'La société coupe son dividende: elle préfère affecter 100% de ses profits au remboursement de sa dette, étant donné la détérioration récente de ses résultats. ', N'~/images/db/upload_news_img/2bb45edd-1c50-4b1f-a3e6-0166abc811d1.jpg', N'Coupe de dividende', NULL, 35, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (99, 1, 1, 6.225E+09, 1, NULL, 0.36, 6.04, 10, 1, NULL, NULL, NULL, 1.52E+09, NULL, NULL, NULL, NULL, 72, NULL, NULL, NULL, NULL, NULL, NULL, 1, 9.44E+10, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (100, 1, 0, NULL, 1, NULL, 0.51, NULL, 10, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 54, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (101, 1, 0, NULL, 1, NULL, 0.16, NULL, 10, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (102, 1, 0, NULL, 1, NULL, 0.23, NULL, 10, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 22, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (103, 0, 0, NULL, 1, NULL, 0.49, NULL, 10, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (104, 1, 0, NULL, 1, NULL, NULL, NULL, 10, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1105, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (105, 1, 0, NULL, 1, NULL, 0, NULL, 10, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 37, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (106, 1, 0, NULL, 1, NULL, 0.17, NULL, 10, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 32, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (107, 1, 0, NULL, 1, NULL, 0.38, NULL, 10, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 75, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (108, 1, 0, NULL, 1, NULL, 0, NULL, 10, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 225, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (109, 0, 1, 1.5E+09, 1, NULL, NULL, -8.59, 10, 11, NULL, NULL, NULL, 1.06E+10, NULL, NULL, NULL, NULL, 290, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1.148265E+10, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (110, 1, 1, 1.588E+10, 1, NULL, NULL, 73.25, 9, 7, NULL, NULL, NULL, 4.265E+10, NULL, NULL, NULL, NULL, 985, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1.479325E+11, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (111, 1, 0, NULL, 1, NULL, 0.23, NULL, 9, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (112, 1, 0, NULL, 1, NULL, 0.5, NULL, 8, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (113, 1, 1, 1.312E+08, 1, NULL, 0.16, 0.9, 8, 4, NULL, NULL, NULL, 1.251E+09, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, NULL, NULL, 1, 6.2498E+09, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (114, 0, 0, NULL, 1, NULL, 0.23, NULL, 8, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (115, 0, 0, NULL, 1, NULL, 0.42, NULL, 8, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (116, 1, 0, NULL, 1, NULL, NULL, NULL, 8, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 880, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (117, 1, 1, 3.25E+08, 1, NULL, 1, 3.9, 8, 8, NULL, NULL, NULL, 5.1788E+10, NULL, NULL, NULL, NULL, 37, NULL, NULL, NULL, NULL, NULL, NULL, 1, 7.9003E+10, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (118, 1, 0, NULL, 1, NULL, 0.15, NULL, 8, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 28, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (119, 1, 0, NULL, 1, NULL, 0.38, NULL, 8, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 76, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (120, 0, 1, 7.65E+09, 1, NULL, 0.49, 2.52, 9, 6, NULL, NULL, NULL, 1.125E+12, NULL, NULL, NULL, NULL, 25, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 1.2009E+12)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (121, 0, 0, NULL, 1, NULL, NULL, NULL, 8, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 278, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (122, 1, 0, NULL, 1, NULL, NULL, NULL, 8, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 126, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (123, 0, 0, NULL, 1, NULL, NULL, NULL, 8, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3.51, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (124, 0, 0, NULL, 1, NULL, 0.04, NULL, 8, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2.35, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (126, 1, 0, NULL, 1, NULL, 0.34, NULL, 9, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 63, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (127, 1, 0, NULL, 1, NULL, 0, NULL, 9, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 195, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (128, 1, 1, 2.755E+09, 1, NULL, 0.51, 2.87, 9, 3, NULL, NULL, NULL, 8.9E+09, NULL, NULL, NULL, NULL, 55, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2.446E+10, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (129, 1, 0, NULL, 1, NULL, 0.16, NULL, 9, 4, NULL, NULL, NULL, NULL, N'L''analyste E.D. Oswood de la firme P.-O. Verty pense que le titre vaut au moins 28$. ', N'~/images/db/upload_news_img/f868d3ec-39d9-464c-a5ac-0bfdedf0d70d.jpg', N'Le titre de Starbucks attire l''attention d''un analyste bien connu', NULL, 17, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (130, 0, 1, 1.028E+08, 1, NULL, 0.37, 2.99, 8, 12, NULL, NULL, NULL, 1.075E+09, NULL, NULL, NULL, NULL, 56, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3.4032E+09, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (131, 1, 0, NULL, 1, NULL, 0, NULL, 13, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (132, 0, 0, NULL, 1, NULL, 0.37, NULL, 10, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 47, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (133, 0, 1, 2.5E+07, 1, NULL, NULL, -0.35, 10, 14, NULL, NULL, NULL, 1.302E+07, NULL, NULL, NULL, NULL, 5.01, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2.802E+07, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (134, 1, 0, NULL, 1, NULL, 0.25, NULL, 12, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (135, 0, 0, NULL, 1, NULL, 0.49, NULL, 12, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 23, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (136, 1, 0, NULL, 1, NULL, NULL, NULL, 12, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1076, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (137, 1, 1, 1.05E+08, 1, NULL, 0, -1.22, 12, 8, NULL, NULL, NULL, 5.8103E+10, N'La direction tente de rassurer ses investisseurs. Elle s''attend à un rebondissement de ses profits d''ici un an. ', N'~/images/db/upload_news_img/1f639e15-d461-4288-bd67-a0d465168041.jpg', N'Message de la direction', NULL, 28, NULL, NULL, NULL, NULL, NULL, NULL, 1, 8.3318E+10, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (138, 1, 0, NULL, 1, NULL, 0.17, NULL, 12, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 33, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (139, 1, 0, NULL, 1, NULL, 0.4, NULL, 12, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 74, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (140, 1, 0, NULL, 1, NULL, NULL, NULL, 12, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 318, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (141, 1, 1, 1.372E+08, 1, NULL, 0.4, 3.19, 12, 12, NULL, NULL, NULL, 1.214E+09, NULL, NULL, NULL, NULL, 41, NULL, NULL, NULL, NULL, NULL, NULL, 1, 3.6788E+09, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (142, 1, 1, 1.438E+08, 1, NULL, 0.17, 1.08, 12, 4, NULL, NULL, NULL, 1.115E+09, NULL, NULL, NULL, NULL, 17, NULL, NULL, NULL, NULL, NULL, NULL, 1, 6.5412E+09, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (143, 1, 0, NULL, 1, NULL, NULL, NULL, 12, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 172, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (144, 1, 0, NULL, 1, NULL, 0.05, NULL, 12, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2.41, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (146, 1, 0, NULL, 1, NULL, 0.36, NULL, 13, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 97, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (147, 1, 0, NULL, 1, NULL, 0, NULL, 13, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 303, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (148, 1, 1, 1.888E+09, 1, NULL, 0.53, 3.04, 13, 3, NULL, NULL, NULL, 9.225E+09, NULL, NULL, NULL, NULL, 52, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2.6652E+10, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (149, 1, 0, NULL, 1, NULL, 0.17, NULL, 13, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (150, 1, 0, NULL, 1, NULL, 0.25, NULL, 13, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (151, 1, 1, 1.364E+10, 1, NULL, 0.55, 3.6, 13, 6, NULL, NULL, NULL, 1.38E+12, N'La direction est très optimiste quant à la croissance de son portefeuille de prêt. Elle prévoit des profits en forte hausse et ne comprend pas pourquoi son titre est boudé en Bourse. ', N'~/images/db/upload_news_img/f67a677a-d7bc-4e24-b6bc-2bac80a7922d.jpg', N'Message de la direction', NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, 1.45811E+12)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (152, 0, 0, NULL, 1, NULL, NULL, NULL, 12, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5.21, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (153, 1, 1, 8.9E+09, 1, NULL, NULL, 1.03, 10, 13, NULL, NULL, NULL, 0, N'Le géant des réseaux sociaux a été pris en faute ,en manquant de contrôle sur un grand nombre de données, conduisant à leur mauvaise utilisation par une firme indépendante. Une pénalité de 5$ par action est à prévoir.', N'~/images/db/upload_news_img/ee70e093-dfb8-47c7-9cda-7babf3613846.jpg', N'Importante amende à payer pour Facebook', NULL, 123, NULL, NULL, NULL, NULL, NULL, NULL, 1, 5.643E+10, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (154, 1, 0, NULL, 1, NULL, 0.51, NULL, 12, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 53, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (155, 1, 0, NULL, 1, NULL, 0.36, NULL, 12, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 84, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (156, 1, 1, 9.73E+07, 1, NULL, 0.05, 0.24, 10, 15, NULL, NULL, NULL, 2.335E+09, NULL, NULL, NULL, NULL, 2.34, NULL, NULL, NULL, NULL, NULL, NULL, 1, 5.7277E+09, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (158, 1, 0, NULL, 1, NULL, 0.36, NULL, 11, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 77, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (159, 1, 0, NULL, 1, NULL, 0, NULL, 11, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 231, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (160, 1, 0, NULL, 1, NULL, 0.51, NULL, 11, 3, NULL, NULL, NULL, NULL, N'La direction fait une présentation aux investisseurs. Elle prévoit un profit par action entre 3,01 et 3,07$ à ses prochains résultats.', N'~/images/db/upload_news_img/514db775-d350-4763-877f-b00b47a70456.jpg', N'On annonce les profits d''avance chez Walmart', NULL, 55, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (161, 1, 0, NULL, 1, NULL, 0.16, NULL, 11, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (162, 1, 1, 1.715E+09, 1, NULL, 0.25, 1.85, 11, 5, NULL, NULL, NULL, 4.54E+09, NULL, NULL, NULL, NULL, 24, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1.328E+10, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (163, 0, 0, NULL, 1, NULL, 0.49, NULL, 11, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 22, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (164, 1, 1, 6.98E+09, 1, NULL, 0, 15.9, 12, 2, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 270, NULL, NULL, NULL, NULL, NULL, NULL, 1, 7.172E+10, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (165, 1, 0, NULL, 1, NULL, NULL, NULL, 11, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1077, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (166, 1, 0, NULL, 1, NULL, 0.17, NULL, 11, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 32, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (167, 1, 1, 7.58E+09, 1, NULL, 4.45, 3.45, 11, 10, NULL, NULL, NULL, 2.3E+09, NULL, NULL, NULL, NULL, 77, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1.072E+10, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (168, 1, 0, NULL, 1, NULL, NULL, NULL, 11, 11, NULL, NULL, NULL, NULL, N'Elon Musk, le charismatique PDG de Tesla, est très optimiste que la société parviendra à atteindre son objectif ambitieux de produire 250000 voitures par année.  Les analystes demeurent sceptiques compte tenu des échéances farfelues et des retards que la compagnie a connus dans le passé.', N'~/images/db/upload_news_img/6d447d18-29a8-48d3-a676-a3ffce4769c5.jpg', N'Elon Musk enthousiaste pour le Modèle 3', NULL, 301, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (169, 0, 0, NULL, 1, NULL, 0.37, NULL, 11, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 43, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (170, 1, 0, NULL, 1, NULL, NULL, NULL, 11, 13, NULL, NULL, NULL, NULL, N'Le géant des réseaux sociaux avait été pris en faute, en manquant de contrôle sur un grand nombre de données, conduisant à leur mauvaise utilisation par une firme indépendante. Les résultats précédemment publiés incorporent une pénalité de 5$ par action.  La direction estime que cet épisode est maintenant du passé et que les mesures nécessaires ont été mises en place pour éviter qu''une telle chose se reproduise à l''avenir.', N'~/images/db/upload_news_img/ee70e093-dfb8-47c7-9cda-7babf3613846.jpg', N'Facebook veut faire oublier ses fautes', NULL, 140, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (171, 0, 0, NULL, 1, NULL, NULL, NULL, 11, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6.33, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (172, 1, 0, NULL, 1, NULL, 0.05, NULL, 11, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2.29, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (174, 1, 0, NULL, 1, NULL, 0, NULL, 11, 8, NULL, NULL, NULL, NULL, N'Pressée par les investisseurs de réinstaurer un dividende, la direction de la société réitère qu''elle préfère affecter 100% de ses profits au remboursement de sa dette. ', N'~/images/db/upload_news_img/1d9f46de-4ff0-4f45-8e63-64d99680329b.jpg', N'Les investisseurs s''impatientent', NULL, 36, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (175, 1, 1, 6.26E+09, 1, NULL, 0, 12.5, 8, 2, NULL, NULL, NULL, 0, N'Les profits ont progressé de 26%, mais les analystes s''attendaient à 32%.', N'~/images/db/upload_news_img/8e1f4b9b-2461-4910-b652-1f24bcf0b21f.jpg', N'Profits moindre que prévus', NULL, 180, NULL, NULL, NULL, NULL, NULL, NULL, 1, 5.654E+10, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (177, 1, 0, NULL, 1, NULL, 0, NULL, 19, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 461, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (178, 1, 1, 7.77E+09, 1, NULL, 0.88, 7.77, 26, 1, NULL, NULL, NULL, 1.25E+08, NULL, NULL, NULL, NULL, 116, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1.9041E+11, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (179, 1, 0, NULL, 1, NULL, 0, NULL, 26, 2, NULL, NULL, NULL, NULL, N'Google gagne du terrain contre Bing (Microsoft). La direction prévoit une croissance des profits d''environ 20%. ', N'~/images/db/upload_news_img/60cae39a-5a3c-437c-b765-390242cca177.jpg', N'Alphabet prend des parts de marché', NULL, 411, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (180, 1, 0, NULL, 1, NULL, 0.57, NULL, 26, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (181, 1, 0, NULL, 1, NULL, 0.22, NULL, 26, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 23, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (182, 1, 0, NULL, 1, NULL, 0.28, NULL, 26, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 25, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (183, 1, 0, NULL, 1, NULL, 0.1, NULL, 26, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10.12, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (184, 1, 0, NULL, 1, NULL, NULL, NULL, 26, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1501, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (185, 1, 0, NULL, 1, NULL, 0.09, NULL, 26, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (187, 1, 0, NULL, 1, NULL, 0.3, NULL, 26, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 51, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (188, 1, 1, 8E+09, 1, NULL, NULL, 7, 26, 11, NULL, NULL, NULL, 1.35E+10, NULL, NULL, NULL, NULL, 405, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2.146665E+10, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (189, 1, 0, NULL, 1, NULL, 0.43, NULL, 26, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 56, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (190, 1, 1, 7.77E+09, 1, NULL, 1.69, 11.29, 26, 13, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 152, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1.3178E+11, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (191, 1, 1, 5.3E+08, 1, NULL, NULL, -3.56, 26, 14, NULL, NULL, NULL, 5E+07, NULL, NULL, NULL, NULL, 2.26, NULL, NULL, NULL, NULL, NULL, NULL, 1, -5.1588E+08, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (192, 1, 1, 5.3E+08, 1, NULL, 0.05, 0.27, 26, 15, NULL, NULL, NULL, 1.35E+09, NULL, NULL, NULL, NULL, 3.15, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4.87E+09, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (194, 1, 0, NULL, 1, NULL, 0.88, NULL, 27, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 118, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (195, 1, 0, NULL, 1, NULL, 0, NULL, 27, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 473, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (196, 1, 0, NULL, 1, NULL, 0.9, NULL, 26, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 126, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (197, 1, 0, NULL, 1, NULL, 0.57, NULL, 27, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 57, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (198, 1, 0, NULL, 1, NULL, 0.04, NULL, 25, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3.11, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (199, 1, 0, NULL, 1, NULL, 3.25, NULL, 25, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 127, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (200, 1, 0, NULL, 1, NULL, NULL, NULL, 24, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 360, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (201, 1, 1, 9.756E+07, 1, NULL, 0.43, 3.47, 24, 12, NULL, NULL, NULL, 1.342E+09, NULL, NULL, NULL, NULL, 48, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4.30944E+09, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (202, 1, 0, NULL, 1, NULL, 3.25, NULL, 24, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 131, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (203, 1, 0, NULL, 1, NULL, NULL, NULL, 24, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2.26, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (204, 1, 0, NULL, 1, NULL, 0.04, NULL, 24, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3.08, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (206, 1, 0, NULL, 1, NULL, 0.63, NULL, 25, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 117, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (207, 1, 0, NULL, 1, NULL, 0, NULL, 25, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 390, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (208, 1, 0, NULL, 1, NULL, NULL, NULL, 25, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2.26, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (209, 1, 1, 2.41E+09, 1, NULL, 0.57, 3.52, 25, 3, NULL, NULL, NULL, 1.1227E+10, NULL, NULL, NULL, NULL, 46, NULL, NULL, NULL, NULL, NULL, NULL, 1, 3.1642E+10, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (210, 1, 0, NULL, 1, NULL, 0.28, NULL, 25, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 29, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (211, 1, 1, 9.18E+09, 1, NULL, 0.1, 0.69, 25, 6, NULL, NULL, NULL, 2.574E+11, NULL, NULL, NULL, NULL, 9.95, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, 2.7837E+11)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (212, 1, 1, 1.766E+10, 1, NULL, NULL, 99.42, 25, 7, NULL, NULL, NULL, 6.99E+10, NULL, NULL, NULL, NULL, 1470, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2.59235E+11, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (213, 1, 0, NULL, 1, NULL, 0.09, NULL, 25, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9.13, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (214, 1, 1, 2.9567E+10, 1, NULL, 0.3, 3.45, 25, 9, NULL, NULL, NULL, 4.6598E+11, NULL, NULL, NULL, NULL, 47, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, 4.87793E+11)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (215, 1, 0, NULL, 1, NULL, 0.9, NULL, 25, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 125, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (216, 1, 0, NULL, 1, NULL, NULL, NULL, 25, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 405, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (217, 1, 0, NULL, 1, NULL, 0.43, NULL, 25, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 55, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (218, 1, 0, NULL, 1, NULL, 0.22, NULL, 25, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (219, 1, 0, NULL, 1, NULL, 0.9, NULL, 24, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 118, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (220, 1, 0, NULL, 1, NULL, 0.22, NULL, 27, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (221, 1, 0, NULL, 1, NULL, 0.1, NULL, 27, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10.75, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (222, 1, 0, NULL, 1, NULL, 1.69, NULL, 32, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 178, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (223, 1, 0, NULL, 1, NULL, NULL, NULL, 32, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2.26, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (224, 1, 0, NULL, 1, NULL, 0.05, NULL, 32, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3.44, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (226, 1, 0, NULL, 1, NULL, 0.88, NULL, 30, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 117, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (227, 1, 0, NULL, 1, NULL, 0, NULL, 30, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 574, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (228, 1, 1, 2.756E+09, 1, NULL, 0.6, 3.75, 30, 3, NULL, NULL, NULL, 1.238E+10, NULL, NULL, NULL, NULL, 57, NULL, NULL, NULL, NULL, NULL, NULL, 1, 3.3919E+10, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (229, 1, 0, NULL, 1, NULL, 0.25, NULL, 30, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 25, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (230, 1, 1, 8.305E+07, 1, NULL, 0.46, 3.68, 32, 12, NULL, NULL, NULL, 1.277E+09, NULL, NULL, NULL, NULL, 57, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4.45495E+09, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (231, 1, 0, NULL, 1, NULL, 0.32, NULL, 30, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 37, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (232, 1, 1, 2.0158E+10, 1, NULL, NULL, 131.56, 30, 7, NULL, NULL, NULL, 8.2293E+10, NULL, NULL, NULL, NULL, 1588, NULL, NULL, NULL, NULL, NULL, NULL, 1, 3.0202E+11, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (233, 1, 0, NULL, 1, NULL, 0.1, NULL, 30, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (234, 1, 1, 1.28E+09, 1, NULL, 0.32, 3.76, 30, 9, NULL, NULL, NULL, 3.111E+09, NULL, NULL, NULL, NULL, 51, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, 6.3531E+10)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (235, 1, 0, NULL, 1, NULL, 0.95, NULL, 30, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 132, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (236, 1, 0, NULL, 1, NULL, NULL, NULL, 30, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 405, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (237, 1, 0, NULL, 1, NULL, 0.46, NULL, 30, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 56, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (238, 1, 0, NULL, 1, NULL, 1.69, NULL, 30, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 177, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (239, 1, 0, NULL, 1, NULL, NULL, NULL, 30, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2.26, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (240, 1, 1, 1.23E+10, 1, NULL, 0.12, 0.78, 30, 6, NULL, NULL, NULL, 2.759E+11, NULL, NULL, NULL, NULL, 10.65, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, 2.9565E+11)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (241, 1, 1, 1.55E+09, 1, NULL, 0.32, 2.25, 27, 5, NULL, NULL, NULL, 6.233E+09, N'Costco prévoit une hausse des profits d''environ 40% sur un an. 
', N'~/images/db/upload_news_img/f959137e-a2a8-456f-a314-aa45023a10a2.jpg', N'Révision à la hausse des bénéfices', NULL, 30, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1.7668E+10, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (242, 1, 0, NULL, 1, NULL, NULL, NULL, 32, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 405, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (243, 1, 0, NULL, 1, NULL, 0.3, NULL, 32, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 52, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (244, 1, 0, NULL, 1, NULL, NULL, NULL, 27, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1525, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (245, 1, 0, NULL, 1, NULL, 0.09, NULL, 27, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (246, 1, 0, NULL, 1, NULL, 0.3, NULL, 27, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 52, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (247, 1, 1, 7.73E+09, 1, NULL, 0.95, 6.22, 27, 10, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 124, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1.117E+10, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (248, 1, 0, NULL, 1, NULL, NULL, NULL, 27, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 405, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (249, 1, 0, NULL, 1, NULL, 0.43, NULL, 27, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 55, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (250, 1, 0, NULL, 1, NULL, 1.69, NULL, 27, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 166, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (251, 1, 0, NULL, 1, NULL, NULL, NULL, 27, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2.26, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (252, 1, 0, NULL, 1, NULL, 0.95, NULL, 32, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 130, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (253, 1, 0, NULL, 1, NULL, 0.05, NULL, 27, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3.22, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (254, 1, 0, NULL, 1, NULL, 0.88, NULL, 32, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 117, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (255, 1, 1, 2.78E+10, 1, NULL, 0, 28, 32, 2, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 545, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1.469E+11, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (256, 1, 0, NULL, 1, NULL, 0.57, NULL, 32, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (257, 1, 1, 2.8745E+08, 1, NULL, 0.25, 1.61, 32, 4, NULL, NULL, NULL, 3.112E+09, NULL, NULL, NULL, NULL, 25, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1.067455E+10, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (258, 1, 0, NULL, 1, NULL, 0.32, NULL, 32, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 34, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (259, 1, 0, NULL, 1, NULL, 0.1, NULL, 32, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10.56, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (260, 1, 0, NULL, 1, NULL, NULL, NULL, 32, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1502, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (261, 1, 1, 6.4E+08, 1, NULL, 0.1, 0.43, 32, 8, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2.15E+09, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (263, 1, 0, NULL, 1, NULL, 0.52, NULL, 19, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 99, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (264, 1, 0, NULL, 1, NULL, 0.26, NULL, 24, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (265, 1, 0, NULL, 1, NULL, NULL, NULL, 24, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1475, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (266, 1, 0, NULL, 1, NULL, 0.25, NULL, 20, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 45, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (267, 1, 0, NULL, 1, NULL, 0.56, NULL, 20, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 75, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (268, 1, 0, NULL, 1, NULL, NULL, NULL, 20, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 450, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (269, 1, 1, 8.9456E+07, 1, NULL, 0.4, 3.09, 20, 12, NULL, NULL, NULL, 1.205E+09, NULL, NULL, NULL, NULL, 48, NULL, NULL, NULL, NULL, NULL, NULL, 1, 3.993544E+09, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (270, 1, 0, NULL, 1, NULL, NULL, NULL, 20, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 162, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (271, 1, 0, NULL, 1, NULL, NULL, NULL, 20, 14, NULL, NULL, NULL, NULL, N'Les dirigeants de l''entreprise innovante sont très confiants qu''une nouvelle étude permettra de confirmer l''efficacité du test de dépistage. Le marché potentiel pour ce test est gigantesque à l''échelle mondiale.', N'~/images/db/upload_news_img/20cafb46-0352-4709-a1cc-30f2ac831a66.jpg', N'Nouvelle étude clinique', NULL, 3.5, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (272, 1, 0, NULL, 1, NULL, 0.01, NULL, 20, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2.62, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (274, 1, 1, 7.05E+08, 1, NULL, 0.06, 0.37, 20, 8, NULL, NULL, NULL, 0, N'Étant donné la bonne tenue des affaires de la société, on réinstaure un dividende régulier, au montant de 0,25$ par action, par trimestre. ', N'~/images/db/upload_news_img/ff18f942-ce97-4722-bd0e-f4bce5e767cf.jpg', N'Retour du dividende pour General Electric', NULL, 5.73, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1.865E+09, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (275, 1, 0, NULL, 1, NULL, 0.52, NULL, 21, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 88, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (276, 1, 1, 2.36E+09, 1, NULL, 0.55, 3.31, 21, 3, NULL, NULL, NULL, 1.0333E+10, NULL, NULL, NULL, NULL, 52, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2.9478E+10, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (277, 1, 0, NULL, 1, NULL, 0.19, NULL, 21, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (278, 1, 0, NULL, 1, NULL, 0.27, NULL, 21, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 22, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (279, 1, 1, 6.7E+09, 1, NULL, 0, 0.22, 21, 6, NULL, NULL, NULL, 2.108E+11, N'La nouvelle direction de Citigroup entrevoit un accroissement important de la rentabilité, et table sur un profit par action entre 0,55 et 0,60 l''an prochain. Elle compte réinstaurer un dividende bientôt. ', N'~/images/db/upload_news_img/45cf8e1f-6283-4ad0-8b25-0f0c1aa51230.jpg', N'Hausse des profits en vue pour Citigroup', NULL, 3.85, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, 2.316E+11)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (280, 1, 1, 1.291E+10, 1, NULL, NULL, 91.25, 21, 7, NULL, NULL, NULL, 6.242E+10, N'Opportuniste, Buffett annonce qu''il a profité de la baisse des marchés pour effectuer plusieurs grosses acquisitions.', N'~/images/db/upload_news_img/fcdec3e3-ebff-4e0b-877d-a220951911e9.jpg', N'Warren Buffet sort son chéquier', NULL, 1260, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2.3165E+11, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (281, 1, 0, NULL, 1, NULL, 0.06, NULL, 21, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4.58, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (282, 1, 1, 2.578E+10, 1, NULL, 0.26, 2.75, 21, 9, NULL, NULL, NULL, 3.95E+11, NULL, NULL, NULL, NULL, 42, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, 4.1385E+11)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (283, 1, 0, NULL, 1, NULL, 0.56, NULL, 21, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 69, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (284, 1, 0, NULL, 1, NULL, 0, NULL, 21, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 440, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (285, 1, 0, NULL, 1, NULL, NULL, NULL, 21, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 321, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (286, 1, 0, NULL, 1, NULL, NULL, NULL, 20, 7, NULL, NULL, NULL, NULL, N'Buffett craint une surchauffe des marchés. Les aubaines se faisant plus rares, il décide de laisser l''encaisse de la compagnie s''accumuler en attente de meilleures opportunités.', N'~/images/db/upload_news_img/2e442044-ca0c-4917-9851-280398d13d92.JPG', N'Warren Buffet prône la prudence', NULL, 1280, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (287, 1, 0, NULL, 1, NULL, 0.27, NULL, 20, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 23, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (288, 1, 0, NULL, 1, NULL, 0.53, NULL, 19, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 48, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (289, 1, 0, NULL, 1, NULL, 0.17, NULL, 19, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (290, 1, 1, 1.918E+09, 1, NULL, 0.27, 1.45, 19, 5, NULL, NULL, NULL, 5.322E+09, NULL, NULL, NULL, NULL, 22, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1.4719E+10, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (291, 1, 0, NULL, 1, NULL, 0, NULL, 19, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3.94, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (292, 1, 0, NULL, 1, NULL, NULL, NULL, 19, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1270, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (293, 1, 0, NULL, 1, NULL, 0, NULL, 19, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4.85, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (294, 1, 0, NULL, 1, NULL, 0.25, NULL, 19, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 43, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (295, 1, 1, 7.855E+09, 1, NULL, 0.56, 1.12, 19, 10, NULL, NULL, NULL, 1.925E+09, NULL, NULL, NULL, NULL, 55, NULL, NULL, NULL, NULL, NULL, NULL, 1, 7.24E+09, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (296, 1, 0, NULL, 1, NULL, 0, NULL, 20, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4.19, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (297, 1, 0, NULL, 1, NULL, NULL, NULL, 19, 11, NULL, NULL, NULL, NULL, N'L''entreprise procède à l''émission d''obligations afin de financer le développement de son nouveau Modèle Y, un véhicule utilitaire compact entièrement électrique.', N'~/images/db/upload_news_img/5b94071f-880f-4e42-b37d-bde88602fbd5.png', N'Émission de dette pour le Modèle Y', NULL, 390, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (298, 1, 0, NULL, 1, NULL, NULL, NULL, 19, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 151, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (299, 1, 0, NULL, 1, NULL, NULL, NULL, 19, 14, NULL, NULL, NULL, NULL, N'Les résultats de l''étude clinique révèlent que le test de dépistage a un taux de détection inférieur aux attentes. L''action chute.  Les dirigeants demeurent optimistes et annoncent une émission d''actions afin de financer une nouvelle étude clinique.', N'~/images/db/upload_news_img/7e9197e0-bc2e-4c5b-82a2-9314fed2e1d7.jpg', N'Résultats décevants de l''étude clinique', NULL, 2.69, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (300, 1, 0, NULL, 1, NULL, 0.01, NULL, 19, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2.09, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (302, 1, 0, NULL, 1, NULL, 0.52, NULL, 20, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 96, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (303, 1, 1, 1.158E+10, 1, NULL, 0, 23.5, 20, 2, NULL, NULL, NULL, 0, N'Les dirigeants annoncent la possibilité d''un ralentissement de la croissance à venir. La compétition contre Facebook dans le monde de la publicité en ligne est devenue féroce. ', N'~/images/db/upload_news_img/484cc597-d1e9-4fd1-9bd0-9f0e0c5e11f5.jpg', N'Ralentissement de la croissance', NULL, 482, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1.1012E+11, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (304, 1, 0, NULL, 1, NULL, 0.53, NULL, 20, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 49, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (305, 1, 1, 1.57E+08, 1, NULL, 0.19, 1.26, 20, 4, NULL, NULL, NULL, 2.35E+09, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, NULL, NULL, 1, 8.683E+09, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (306, 1, 0, NULL, 1, NULL, 0.4, NULL, 19, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 40, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (307, 1, 1, 8.1E+08, 1, NULL, 0.09, 0.39, 24, 8, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 8.06, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1.91E+09, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (308, 1, 0, NULL, 1, NULL, 0.4, NULL, 21, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 44, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (309, 1, 0, NULL, 1, NULL, NULL, NULL, 21, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3.2, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (310, 1, 1, 2.18E+09, 1, NULL, 0.28, 1.62, 23, 5, NULL, NULL, NULL, 5.98E+09, NULL, NULL, NULL, NULL, 25, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1.5655E+10, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (311, 1, 0, NULL, 1, NULL, 0.08, NULL, 23, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6.89, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (312, 1, 0, NULL, 1, NULL, NULL, NULL, 23, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1425, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (313, 1, 0, NULL, 1, NULL, 0.06, NULL, 23, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6.12, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (314, 1, 0, NULL, 1, NULL, 0.26, NULL, 23, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 47, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (315, 1, 1, 7.485E+09, 1, NULL, 0.9, 5.35, 23, 10, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 102, NULL, NULL, NULL, NULL, NULL, NULL, 1, 8.795E+09, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (316, 1, 0, NULL, 1, NULL, NULL, NULL, 23, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 360, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (317, 1, 0, NULL, 1, NULL, 0.4, NULL, 23, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 52, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (318, 1, 0, NULL, 1, NULL, 0.19, NULL, 23, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (319, 1, 0, NULL, 1, NULL, 3.25, NULL, 23, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 145, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (320, 1, 0, NULL, 1, NULL, 0.04, NULL, 23, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2.96, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (322, 1, 0, NULL, 1, NULL, 0.63, NULL, 24, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 115, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (323, 1, 1, 1.745E+10, 1, NULL, 0, 25, 24, 2, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 402, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1.2925E+11, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (324, 1, 0, NULL, 1, NULL, 0.55, NULL, 24, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 41, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (325, 1, 1, 2.137E+08, 1, NULL, 0.22, 1.39, 24, 4, NULL, NULL, NULL, 2.552E+09, NULL, NULL, NULL, NULL, 22, NULL, NULL, NULL, NULL, NULL, NULL, 1, 9.4583E+09, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (326, 1, 0, NULL, 1, NULL, 0.28, NULL, 24, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 26, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (327, 1, 0, NULL, 1, NULL, 0.08, NULL, 24, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9.02, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (328, 1, 0, NULL, 1, NULL, NULL, NULL, 23, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2.26, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (329, 1, 0, NULL, 1, NULL, NULL, NULL, 21, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 118, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (330, 1, 0, NULL, 1, NULL, 0.55, NULL, 23, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 49, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (331, 1, 0, NULL, 1, NULL, 0.63, NULL, 23, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 102, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (332, 1, 0, NULL, 1, NULL, 0.01, NULL, 21, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2.35, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (334, 1, 1, 7.15E+09, 1, NULL, 0.63, 7.15, 22, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 90, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1.64655E+11, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (335, 1, 0, NULL, 1, NULL, 0, NULL, 22, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 477, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (336, 1, 0, NULL, 1, NULL, 0.55, NULL, 22, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 51, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (337, 1, 0, NULL, 1, NULL, 0.19, NULL, 22, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (338, 1, 0, NULL, 1, NULL, 0.27, NULL, 22, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 23, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (339, 1, 0, NULL, 1, NULL, 0, NULL, 22, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5.11, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (340, 1, 0, NULL, 1, NULL, 0, NULL, 23, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 465, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (341, 1, 0, NULL, 1, NULL, NULL, NULL, 22, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1401, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (342, 1, 0, NULL, 1, NULL, 0.26, NULL, 22, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 45, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (343, 1, 0, NULL, 1, NULL, 0.56, NULL, 22, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 83, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (344, 1, 1, 5E+09, 1, NULL, NULL, 2.78, 22, 11, NULL, NULL, NULL, 1.3E+10, NULL, NULL, NULL, NULL, 390, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2.256665E+10, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (345, 1, 0, NULL, 1, NULL, 0.4, NULL, 22, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (346, 1, 1, 1.3515E+10, 1, NULL, 3.25, 10.04, 22, 13, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 139, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1.31165E+11, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (347, 1, 1, 2.1E+07, 1, NULL, NULL, -1.5, 22, 14, NULL, NULL, NULL, 1.0143E+07, NULL, NULL, NULL, NULL, 2.26, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1.3783E+07, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (348, 1, 1, 4.7E+08, 1, NULL, 0.04, 0.25, 22, 15, NULL, NULL, NULL, 1.4E+09, NULL, NULL, NULL, NULL, 2.75, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4.76E+09, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (350, 1, 0, NULL, 1, NULL, 0.06, NULL, 22, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5.22, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (351, 1, 0, NULL, 1, NULL, 0.34, NULL, 8, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 55, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (353, 0, 0, NULL, 1, NULL, 0.04, NULL, 7, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2.49, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (371, 0, 1, 3E+09, 1, NULL, 0.25, 4.12, 40, 1, NULL, NULL, NULL, 2.995E+09, NULL, NULL, NULL, NULL, 50, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2.01E+10, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (373, 0, 0, NULL, 1, NULL, NULL, NULL, 40, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 95, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (396, 0, 0, NULL, 1, NULL, NULL, NULL, 40, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 36, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (397, 0, 0, NULL, 1, NULL, NULL, NULL, 40, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 26, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (398, 0, 0, NULL, 1, NULL, NULL, NULL, 41, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (399, 0, 0, NULL, 1, NULL, NULL, NULL, 41, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 65, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (400, 0, 1, NULL, 1, NULL, NULL, -0.25, 41, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1.2, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (401, 0, 0, NULL, 1, NULL, NULL, NULL, 41, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1.85, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (403, 0, 0, NULL, 1, NULL, 0.25, NULL, 42, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 47, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (404, 0, 1, 3.7E+09, 1, NULL, 0, 6.5, 42, 2, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 112, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2.88E+10, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (405, 0, 0, NULL, 1, NULL, NULL, NULL, 42, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 42, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (406, 0, 0, NULL, 1, NULL, NULL, NULL, 41, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 243, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (407, 0, 1, 1.02E+08, 1, NULL, 0.1, 0.63, 42, 4, NULL, NULL, NULL, 8.15E+08, NULL, NULL, NULL, NULL, 13, NULL, NULL, NULL, NULL, NULL, NULL, 0, 4.863E+09, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (408, 0, 0, NULL, 1, NULL, 0.17, NULL, 42, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11.21, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (409, 0, 0, NULL, 1, NULL, NULL, NULL, 42, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 770, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (410, 0, 1, 1E+08, 1, NULL, 0.62, 2.5, 42, 8, NULL, NULL, NULL, 2.98E+10, NULL, NULL, NULL, NULL, 40, NULL, NULL, NULL, NULL, NULL, NULL, 0, 5.54E+10, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (411, 0, 0, NULL, 1, NULL, NULL, NULL, 42, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (412, 0, 0, NULL, 1, NULL, 0.25, NULL, 42, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 43, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (413, 0, 0, NULL, 1, NULL, NULL, NULL, 42, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 233, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (414, 0, 1, 5.065E+07, 1, NULL, 0.31, 2.51, 42, 12, NULL, NULL, NULL, 8.11E+08, NULL, NULL, NULL, NULL, 56, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2.74035E+09, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (415, 0, 0, NULL, 1, NULL, NULL, NULL, 42, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 78, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (416, 0, 0, NULL, 1, NULL, 0.19, NULL, 42, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 28, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (417, 0, 0, NULL, 1, NULL, NULL, NULL, 40, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (418, 0, 1, 4.8E+09, 1, NULL, 0.25, 1.9, 41, 10, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 38, NULL, NULL, NULL, NULL, NULL, NULL, 0, 4.7E+09, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (419, 0, 0, NULL, 1, NULL, NULL, NULL, 41, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 39, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (420, 0, 0, NULL, 1, NULL, 0.17, NULL, 40, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9.55, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (421, 0, 0, NULL, 1, NULL, NULL, NULL, 40, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 710, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (422, 0, 0, NULL, 1, NULL, NULL, NULL, 40, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 37, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (423, 0, 0, NULL, 1, NULL, NULL, NULL, 40, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (424, 0, 0, NULL, 1, NULL, NULL, NULL, 40, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 37, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (425, 0, 0, NULL, 1, NULL, NULL, NULL, 40, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 240, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (426, 0, 0, NULL, 1, NULL, NULL, NULL, 40, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 57, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (427, 0, 1, 3.8E+09, 1, NULL, NULL, 2.53, 40, 13, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 56, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2.298E+10, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (428, 0, 0, NULL, 1, NULL, NULL, NULL, 41, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (429, 0, 0, NULL, 1, NULL, NULL, NULL, 40, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.98, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (431, 0, 0, NULL, 1, NULL, 0.25, NULL, 41, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 48, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (432, 0, 0, NULL, 1, NULL, NULL, NULL, 41, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 108, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (433, 0, 0, NULL, 1, NULL, NULL, NULL, 41, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 39, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (434, 0, 0, NULL, 1, NULL, NULL, NULL, 41, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (435, 0, 1, 1.88E+09, 1, NULL, 0.19, 1.4, 41, 5, NULL, NULL, NULL, 2.855E+09, NULL, NULL, NULL, NULL, 27, NULL, NULL, NULL, NULL, NULL, NULL, 0, 8.09E+09, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (436, 0, 0, NULL, 1, NULL, 0.17, NULL, 41, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10.11, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (437, 0, 0, NULL, 1, NULL, NULL, NULL, 41, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 712, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (438, 0, 0, NULL, 1, NULL, NULL, NULL, 40, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1.57, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (439, 0, 0, NULL, 1, NULL, NULL, NULL, 42, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1.02, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (527, 0, 0, NULL, 1, NULL, NULL, NULL, 42, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1.53, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (529, 0, 0, NULL, 1, NULL, 0.25, NULL, 43, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 48, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (530, 0, 0, NULL, 1, NULL, 0.3, NULL, 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 40, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (531, 0, 1, 5.115E+09, 1, NULL, 0, 9.8, 4, 2, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 190, NULL, NULL, NULL, NULL, NULL, NULL, 0, 4.5185E+10, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (532, 0, 0, NULL, 1, NULL, 0.47, NULL, 4, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 55, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (533, 0, 1, 1.25E+08, 1, NULL, 0.14, 0.8, 4, 4, NULL, NULL, NULL, 9.59E+08, NULL, NULL, NULL, NULL, 16, NULL, NULL, NULL, NULL, NULL, NULL, 0, 5.624E+09, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (534, 0, 0, NULL, 1, NULL, 0.22, NULL, 4, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 31, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (535, 0, 0, NULL, 1, NULL, 0.35, NULL, 4, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (536, 0, 0, NULL, 1, NULL, NULL, NULL, 4, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 729, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (537, 0, 1, 5.5E+08, 1, NULL, 1, 4.2, 4, 8, NULL, NULL, NULL, 4.2654E+10, NULL, NULL, NULL, NULL, 59, NULL, NULL, NULL, NULL, NULL, NULL, 0, 6.9744E+10, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (539, 0, 0, NULL, 1, NULL, 0.12, NULL, 4, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 26, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (540, 0, 0, NULL, 1, NULL, NULL, NULL, 4, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 278, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (541, 0, 1, 7.85E+07, 1, NULL, 0.35, 2.82, 4, 12, NULL, NULL, NULL, 9.428E+08, NULL, NULL, NULL, NULL, 67, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3.1363E+09, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (542, 0, 0, NULL, 1, NULL, NULL, NULL, 4, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 98, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (543, 0, 0, NULL, 1, NULL, NULL, NULL, 4, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2.98, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (544, 0, 0, NULL, 1, NULL, 0.04, NULL, 4, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2.37, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (546, 0, 0, NULL, 1, NULL, 0.3, NULL, 5, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 39, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (547, 0, 0, NULL, 1, NULL, 0, NULL, 5, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 212, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (548, 0, 0, NULL, 1, NULL, 0.34, NULL, 4, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 59, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (549, 0, 1, 1.89E+09, 1, NULL, 0.5, 2.71, 5, 3, NULL, NULL, NULL, 6.7E+09, NULL, NULL, NULL, NULL, 61, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2.2255E+10, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (550, 0, 0, NULL, 1, NULL, 0.04, NULL, 3, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2.05, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (551, 0, 0, NULL, 1, NULL, NULL, NULL, 3, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 101, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (552, 0, 1, 3.5E+09, 1, NULL, NULL, -4.68, 2, 11, NULL, NULL, NULL, 5.9E+09, NULL, NULL, NULL, NULL, 213, NULL, NULL, NULL, NULL, NULL, NULL, 0, 6.75E+09, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (553, 0, 0, NULL, 1, NULL, 0.33, NULL, 2, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 72, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (554, 0, 1, 4.78E+09, 1, NULL, NULL, 3.88, 2, 13, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 93, NULL, NULL, NULL, NULL, NULL, NULL, 0, 4.303E+10, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (555, 0, 1, NULL, 1, NULL, NULL, -0.3, 2, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1.76, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (556, 0, 1, 1.2E+08, 1, NULL, 0.04, 0.17, 2, 15, NULL, NULL, NULL, 7.5E+08, NULL, NULL, NULL, NULL, 1.9, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3.86E+09, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (558, 0, 0, NULL, 1, NULL, 0.3, NULL, 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 42, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (559, 0, 0, NULL, 1, NULL, 0, NULL, 3, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 185, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (560, 0, 0, NULL, 1, NULL, NULL, NULL, 3, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2.45, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (561, 0, 0, NULL, 1, NULL, 0.47, NULL, 3, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 57, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (562, 0, 1, 2.28E+09, 1, NULL, 0.22, 1.63, 3, 5, NULL, NULL, NULL, 3.78E+09, NULL, NULL, NULL, NULL, 33, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1.0175E+10, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (563, 0, 0, NULL, 1, NULL, 0.35, NULL, 3, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (564, 0, 0, NULL, 1, NULL, NULL, NULL, 3, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 749, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (565, 0, 0, NULL, 1, NULL, 0.82, NULL, 3, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 52, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (566, 0, 0, NULL, 1, NULL, 0.12, NULL, 3, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 25, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (567, 0, 1, 7.56E+09, 1, NULL, 0.34, 2.75, 3, 10, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 53, NULL, NULL, NULL, NULL, NULL, NULL, 0, 4.87E+09, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (568, 0, 0, NULL, 1, NULL, NULL, NULL, 3, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 251, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (569, 0, 0, NULL, 1, NULL, 0.33, NULL, 3, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 68, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (570, 0, 0, NULL, 1, NULL, 0.12, NULL, 3, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (571, 0, 0, NULL, 1, NULL, 0.28, NULL, 2, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 51, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (572, 0, 0, NULL, 1, NULL, 0.14, NULL, 5, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (573, 0, 1, 4.8E+09, 1, NULL, 0.42, 2.15, 5, 6, NULL, NULL, NULL, 9.68E+11, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 1.04255E+12)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (574, 1, 1, 7.66E+09, 1, NULL, NULL, 4.81, 6, 13, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 93, NULL, NULL, NULL, NULL, NULL, NULL, 1, 5.458E+10, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (575, 0, 1, NULL, 1, NULL, NULL, -0.34, 6, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4.21, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (576, 0, 1, 1.6E+08, 1, NULL, 0.04, 0.21, 6, 15, NULL, NULL, NULL, 9.1E+08, NULL, NULL, NULL, NULL, 2.85, NULL, NULL, NULL, NULL, NULL, NULL, 0, 4.08E+09, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (578, 1, 0, NULL, 1, NULL, 0.34, NULL, 7, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 48, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (579, 1, 0, NULL, 1, NULL, 0, NULL, 7, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 225, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (580, 1, 0, NULL, 1, NULL, 0.5, NULL, 7, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 60, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (581, 1, 0, NULL, 1, NULL, 0.14, NULL, 7, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (582, 0, 0, NULL, 1, NULL, 0.35, NULL, 6, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 66, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (583, 0, 1, 1.89E+09, 1, NULL, 0.23, 1.73, 7, 5, NULL, NULL, NULL, 4.15E+09, NULL, NULL, NULL, NULL, 24, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1.1785E+10, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (584, 1, 0, NULL, 1, NULL, NULL, NULL, 7, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 785, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (585, 1, 0, NULL, 1, NULL, 1, NULL, 7, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 44, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (586, 0, 0, NULL, 1, NULL, 0.15, NULL, 7, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 29, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (587, 1, 1, 8.61E+09, 1, NULL, 0.38, 3, 7, 10, NULL, NULL, NULL, 2.1E+09, NULL, NULL, NULL, NULL, 80, NULL, NULL, NULL, NULL, NULL, NULL, 1, 7.56E+09, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (588, 0, 0, NULL, 1, NULL, NULL, NULL, 7, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 310, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (589, 0, 0, NULL, 1, NULL, 0.35, NULL, 7, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (590, 1, 0, NULL, 1, NULL, NULL, NULL, 7, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 120, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (591, 0, 0, NULL, 1, NULL, NULL, NULL, 7, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3.97, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (592, 0, 0, NULL, 1, NULL, 0.42, NULL, 7, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (593, 0, 0, NULL, 1, NULL, 0.22, NULL, 5, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 28, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (594, 0, 1, 3.55E+09, 1, NULL, NULL, -11.8, 6, 11, NULL, NULL, NULL, 9.400001E+09, NULL, NULL, NULL, NULL, 311, NULL, NULL, NULL, NULL, NULL, NULL, 0, 9.65E+09, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (595, 0, 0, NULL, 1, NULL, 0.15, NULL, 6, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (596, 0, 1, 1.38E+10, 1, NULL, NULL, 66.95, 5, 7, NULL, NULL, NULL, 2.754E+10, NULL, NULL, NULL, NULL, 735, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1.1659E+11, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (597, 0, 0, NULL, 1, NULL, 1, NULL, 5, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (598, 0, 1, 1.35E+09, 1, NULL, 0.15, 1.82, 5, 9, NULL, NULL, NULL, 3.15E+11, NULL, NULL, NULL, NULL, 25, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 3.5087E+11)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (599, 0, 0, NULL, 1, NULL, 0.34, NULL, 5, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 66, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (600, 0, 0, NULL, 1, NULL, NULL, NULL, 5, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 299, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (601, 0, 0, NULL, 1, NULL, 0.35, NULL, 5, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 65, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (602, 0, 0, NULL, 1, NULL, NULL, NULL, 5, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 91, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (603, 0, 0, NULL, 1, NULL, NULL, NULL, 5, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3.89, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (604, 1, 0, NULL, 1, NULL, 0.34, NULL, 6, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 79, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (605, 0, 0, NULL, 1, NULL, 0.04, NULL, 5, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2.69, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (606, 1, 1, 7.63E+09, 1, NULL, 0.34, 5.25, 6, 1, NULL, NULL, NULL, 3.285E+09, NULL, NULL, NULL, NULL, 42, NULL, NULL, NULL, NULL, NULL, NULL, 1, 7.136E+10, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (607, 1, 0, NULL, 1, NULL, 0, NULL, 6, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 233, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (608, 0, 0, NULL, 1, NULL, 0.5, NULL, 6, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 62, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (609, 1, 0, NULL, 1, NULL, 0.14, NULL, 6, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (610, 0, 0, NULL, 1, NULL, 0.22, NULL, 6, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (611, 0, 0, NULL, 1, NULL, 0.42, NULL, 6, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 22, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (612, 1, 0, NULL, 1, NULL, NULL, NULL, 6, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 729, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (613, 1, 0, NULL, 1, NULL, 1, NULL, 6, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 54, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (615, 0, 0, NULL, 1, NULL, 0.12, NULL, 2, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 23, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (616, 0, 0, NULL, 1, NULL, 0.82, NULL, 2, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 47, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (617, 0, 0, NULL, 1, NULL, NULL, NULL, 2, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 757, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (618, 0, 0, NULL, 1, NULL, 0.62, NULL, 31, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 44, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (619, 0, 0, NULL, 1, NULL, 0.1, NULL, 31, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 22, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (620, 0, 0, NULL, 1, NULL, 0.25, NULL, 31, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 42, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (621, 0, 1, 1.2E+09, 1, NULL, NULL, -6.93, 31, 11, NULL, NULL, NULL, 2E+09, NULL, NULL, NULL, NULL, 240, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1.81E+09, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (622, 0, 0, NULL, 1, NULL, 0.31, NULL, 31, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 63, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (623, 0, 1, 4.25E+09, 1, NULL, NULL, 3.13, 31, 13, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 84, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3.192E+10, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (624, 0, 1, NULL, 1, NULL, NULL, -0.15, 31, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1.55, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (625, 0, 1, 1.5E+08, 1, NULL, 0.03, 0.15, 31, 15, NULL, NULL, NULL, 7E+08, NULL, NULL, NULL, NULL, 1.71, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3.68E+09, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (626, 0, 0, NULL, 1, NULL, NULL, NULL, 31, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 810, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (628, 0, 0, NULL, 1, NULL, 0, NULL, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 128, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (629, 0, 0, NULL, 1, NULL, 0.45, NULL, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 46, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (630, 0, 0, NULL, 1, NULL, 0.1, NULL, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (631, 0, 1, 2.055E+09, 1, NULL, 0.21, 1.53, 1, 5, NULL, NULL, NULL, 3.135E+09, NULL, NULL, NULL, NULL, 29, NULL, NULL, NULL, NULL, NULL, NULL, 0, 8.965E+09, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (632, 0, 0, NULL, 1, NULL, 0.21, NULL, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14.27, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (633, 0, 0, NULL, 1, NULL, NULL, NULL, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 835, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (634, 0, 0, NULL, 1, NULL, 0.62, NULL, 1, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 43, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (635, 0, 0, NULL, 1, NULL, 0.1, NULL, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 22, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (636, 0, 0, NULL, 1, NULL, 0.27, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 48, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (637, 0, 1, 6.1E+09, 1, NULL, 0.28, 2.3, 1, 10, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 48, NULL, NULL, NULL, NULL, NULL, NULL, 0, 4.7E+09, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (638, 0, 0, NULL, 1, NULL, 0.21, NULL, 31, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13.05, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (639, 0, 0, NULL, 1, NULL, 0.1, NULL, 31, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (640, 0, 0, NULL, 1, NULL, 0, NULL, 43, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 120, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (641, 0, 1, 2.05E+09, 1, NULL, 0.45, 2.4, 43, 3, NULL, NULL, NULL, 5.6E+09, NULL, NULL, NULL, NULL, 41, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1.9425E+10, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (642, 0, 0, NULL, 1, NULL, 0.1, NULL, 43, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (643, 0, 0, NULL, 1, NULL, 0.19, NULL, 43, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 28, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (644, 0, 1, NULL, 1, NULL, 0.21, 1.01, 43, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12.3, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (645, 0, 1, 8.56E+09, 1, NULL, NULL, 51.66, 43, 7, NULL, NULL, NULL, 9.615E+09, NULL, NULL, NULL, NULL, 775, NULL, NULL, NULL, NULL, NULL, NULL, 0, 7.2635E+10, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (646, 0, 0, NULL, 1, NULL, 0.62, NULL, 43, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 42, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (647, 0, 1, 5.65E+08, 1, NULL, 0.1, 1.5, 43, 9, NULL, NULL, NULL, 2.72E+11, NULL, NULL, NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 3.01485E+11)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (648, 0, 0, NULL, 1, NULL, 0.19, NULL, 31, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 29, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (649, 0, 0, NULL, 1, NULL, 0.25, NULL, 43, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 44, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (650, 0, 0, NULL, 1, NULL, 0.31, NULL, 43, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 59, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (651, 0, 0, NULL, 1, NULL, NULL, NULL, 43, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 96, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (652, 0, 0, NULL, 1, NULL, NULL, NULL, 43, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1.45, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (653, 0, 0, NULL, 1, NULL, NULL, NULL, 43, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1.69, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (655, 0, 1, 2.6E+09, 1, NULL, 0.27, 4.5, 31, 1, NULL, NULL, NULL, 2.51E+09, NULL, NULL, NULL, NULL, 50, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3.7515E+10, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (656, 0, 0, NULL, 1, NULL, 0, NULL, 31, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 121, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (657, 0, 0, NULL, 1, NULL, 0.45, NULL, 31, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 48, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (658, 0, 0, NULL, 1, NULL, NULL, NULL, 43, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 250, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (659, 0, 0, NULL, 1, NULL, NULL, NULL, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 235, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (660, 0, 0, NULL, 1, NULL, 0.31, NULL, 1, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 64, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (661, 0, 0, NULL, 1, NULL, NULL, NULL, 1, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 77, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (662, 0, 0, NULL, 1, NULL, 0.21, NULL, 14, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 31, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (663, 0, 1, 3.7E+09, 1, NULL, 0.35, 1.85, 14, 6, NULL, NULL, NULL, 9.15E+11, NULL, NULL, NULL, NULL, 12.22, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (664, 0, 1, 1.15E+10, 1, NULL, NULL, 58.13, 14, 7, NULL, NULL, NULL, 1.278E+10, NULL, NULL, NULL, NULL, 790, NULL, NULL, NULL, NULL, NULL, NULL, 0, 8.73925E+10, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (665, 0, 0, NULL, 1, NULL, 0.82, NULL, 14, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 49, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (666, 0, 1, 1.28E+09, 1, NULL, 0.12, 1.65, 14, 9, NULL, NULL, NULL, 3.11E+11, NULL, NULL, NULL, NULL, 24, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 3.4328E+11)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (667, 0, 0, NULL, 1, NULL, 0.28, NULL, 14, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 47, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (668, 0, 0, NULL, 1, NULL, NULL, NULL, 14, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 208, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (669, 0, 0, NULL, 1, NULL, 0.33, NULL, 14, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 71, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (670, 0, 0, NULL, 1, NULL, 0.12, NULL, 14, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (671, 0, 0, NULL, 1, NULL, NULL, NULL, 14, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 88, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (672, 0, 0, NULL, 1, NULL, 0.03, NULL, 14, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2.1, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (674, 0, 1, 5.18E+09, 1, NULL, 0.3, 4.65, 2, 1, NULL, NULL, NULL, 2.48E+09, NULL, NULL, NULL, NULL, 41, NULL, NULL, NULL, NULL, NULL, NULL, 0, 5.2755E+10, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (675, 0, 0, NULL, 1, NULL, 0, NULL, 2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 158, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (676, 0, 0, NULL, 1, NULL, 0.47, NULL, 2, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 54, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (677, 0, 0, NULL, 1, NULL, 0.12, NULL, 2, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (678, 0, 0, NULL, 1, NULL, 0.21, NULL, 2, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 35, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (679, 0, 0, NULL, 1, NULL, 0.35, NULL, 2, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (680, 0, 0, NULL, 1, NULL, NULL, NULL, 14, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2.09, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (681, 0, 1, 2.335E+09, 1, NULL, 0.47, 2.54, 14, 3, NULL, NULL, NULL, 7.88E+09, NULL, NULL, NULL, NULL, 53, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2.216E+10, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (682, 0, 0, NULL, 1, NULL, 0, NULL, 14, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 157, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (683, 0, 0, NULL, 1, NULL, 0.27, NULL, 14, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 42, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (684, 0, 0, NULL, 1, NULL, NULL, NULL, 1, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1.89, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (685, 0, 0, NULL, 1, NULL, 0.03, NULL, 1, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1.72, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (687, 0, 0, NULL, 1, NULL, 0.27, NULL, 29, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 46, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (688, 0, 1, 3.9E+09, 1, NULL, 0, 8, 29, 2, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 140, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3.66E+10, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (689, 0, 0, NULL, 1, NULL, 0.45, NULL, 29, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 51, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (690, 0, 1, 1.17E+08, 1, NULL, 0.12, 0.72, 29, 4, NULL, NULL, NULL, 8.56E+08, NULL, NULL, NULL, NULL, 16, NULL, NULL, NULL, NULL, NULL, NULL, 0, 5.209E+09, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (691, 0, 0, NULL, 1, NULL, 0.21, NULL, 29, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (692, 0, 0, NULL, 1, NULL, 0.21, NULL, 29, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13.9, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (693, 0, 0, NULL, 1, NULL, NULL, NULL, 29, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 799, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (694, 0, 1, 3.5E+08, 1, NULL, 0.82, 3.5, 29, 8, NULL, NULL, NULL, 3.195E+10, NULL, NULL, NULL, NULL, 51, NULL, NULL, NULL, NULL, NULL, NULL, 0, 5.832E+10, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (695, 0, 0, NULL, 1, NULL, 0.1, NULL, 29, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 23, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (696, 0, 0, NULL, 1, NULL, 0.28, NULL, 29, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (697, 0, 0, NULL, 1, NULL, NULL, NULL, 29, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 222, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (698, 0, 1, 6.5766E+07, 1, NULL, 0.33, 2.66, 29, 12, NULL, NULL, NULL, 8.37E+08, NULL, NULL, NULL, NULL, 66, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2.893234E+09, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (699, 0, 0, NULL, 1, NULL, NULL, NULL, 29, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 82, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (700, 0, 0, NULL, 1, NULL, NULL, NULL, 29, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2.11, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (701, 0, 0, NULL, 1, NULL, 0.03, NULL, 29, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1.83, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL)
GO
INSERT [dbo].[EpisodeEquityInfo] ([Id], [AllowTransactions], [AnnounceFinancialResults], [Cash], [CategoryId], [CostOfGoodsSold], [Dividend], [EarningPerShare], [EpisodeId], [EquityId], [InterestExpense], [InterestIncome], [LongTermAssets], [LongTermDebt], [NewsDetail], [NewsImgPath], [NewsTitle], [OtherIncome], [Price], [ResearchDevelopmentExpense], [Salaries], [Sales], [SellingGeneralAdministrativeExpense], [ShortTermAssets], [ShortTermLiabilities], [Visible], [OtherAssets], [OutstandingShares], [Loans]) VALUES (703, 1, 0, NULL, 1, NULL, 0.05, NULL, 30, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3.65, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL)
GO
SET IDENTITY_INSERT [dbo].[EpisodeEquityInfo] OFF
GO
SET IDENTITY_INSERT [dbo].[Equity] ON 
GO
INSERT [dbo].[Equity] ([Id], [ImgPath], [IndustryId], [Name], [ThumbPath], [DividendFrequency], [StatementPresentation]) VALUES (1, N'~/images/db/equity_img/mcdonalds.jpg', 5, N'McDo', N'~/images/db/equity_thumb/mcdonalds.jpg', 1, 2)
GO
INSERT [dbo].[Equity] ([Id], [ImgPath], [IndustryId], [Name], [ThumbPath], [DividendFrequency], [StatementPresentation]) VALUES (2, N'~/images/db/upload_equity_img/25df54aa-1e0a-4b20-b210-db0e9b600734.jpg', 6, N'Alphabet', N'~/images/db/upload_equity_thumb/25df54aa-1e0a-4b20-b210-db0e9b600734.jpg', 1, 2)
GO
INSERT [dbo].[Equity] ([Id], [ImgPath], [IndustryId], [Name], [ThumbPath], [DividendFrequency], [StatementPresentation]) VALUES (3, N'~/images/db/equity_img/walmart.jpg', 2, N'Wal-Mart', N'~/images/db/equity_thumb/walmart.jpg', 1, 2)
GO
INSERT [dbo].[Equity] ([Id], [ImgPath], [IndustryId], [Name], [ThumbPath], [DividendFrequency], [StatementPresentation]) VALUES (4, N'~/images/db/upload_equity_img/b13a93b5-0542-4bf9-bb19-739307d90463.gif', 5, N'Starbucks', N'~/images/db/upload_equity_thumb/b13a93b5-0542-4bf9-bb19-739307d90463.gif', 1, 2)
GO
INSERT [dbo].[Equity] ([Id], [ImgPath], [IndustryId], [Name], [ThumbPath], [DividendFrequency], [StatementPresentation]) VALUES (5, N'~/images/db/upload_equity_img/2c1f763f-c627-40e3-95b1-bad20681ead7.gif', 2, N'Costco', N'~/images/db/upload_equity_thumb/2c1f763f-c627-40e3-95b1-bad20681ead7.gif', 1, 2)
GO
INSERT [dbo].[Equity] ([Id], [ImgPath], [IndustryId], [Name], [ThumbPath], [DividendFrequency], [StatementPresentation]) VALUES (6, N'~/images/db/upload_equity_img/f078081b-4f37-455a-8add-7fdc7cbfac8b.png', 3, N'Citigroup', N'~/images/db/upload_equity_thumb/f078081b-4f37-455a-8add-7fdc7cbfac8b.png', 1, 2)
GO
INSERT [dbo].[Equity] ([Id], [ImgPath], [IndustryId], [Name], [ThumbPath], [DividendFrequency], [StatementPresentation]) VALUES (7, N'~/images/db/upload_equity_img/6531f612-fd9e-40a5-af00-75e439f5e4cf.jpg', 7, N'Berkshire Hathaway', N'~/images/db/upload_equity_thumb/6531f612-fd9e-40a5-af00-75e439f5e4cf.jpg', 1, 2)
GO
INSERT [dbo].[Equity] ([Id], [ImgPath], [IndustryId], [Name], [ThumbPath], [DividendFrequency], [StatementPresentation]) VALUES (8, N'~/images/db/equity_img/generalelectric.jpg', 4, N'General Electric', N'~/images/db/equity_thumb/generalelectric.jpg', 1, 2)
GO
INSERT [dbo].[Equity] ([Id], [ImgPath], [IndustryId], [Name], [ThumbPath], [DividendFrequency], [StatementPresentation]) VALUES (9, N'~/images/db/equity_img/rbc.jpg', 3, N'Banque Royale', N'~/images/db/equity_thumb/rbc.jpg', 1, 2)
GO
INSERT [dbo].[Equity] ([Id], [ImgPath], [IndustryId], [Name], [ThumbPath], [DividendFrequency], [StatementPresentation]) VALUES (10, N'~/images/db/upload_equity_img/8779f284-5106-4743-868d-03fd9bfa5c38.png', 6, N'Apple', N'~/images/db/upload_equity_thumb/8779f284-5106-4743-868d-03fd9bfa5c38.png', 1, 2)
GO
INSERT [dbo].[Equity] ([Id], [ImgPath], [IndustryId], [Name], [ThumbPath], [DividendFrequency], [StatementPresentation]) VALUES (11, N'~/images/db/upload_equity_img/c619ad35-a27d-4027-9547-2bbf22b9278f.png', 4, N'Tesla', N'~/images/db/upload_equity_thumb/c619ad35-a27d-4027-9547-2bbf22b9278f.png', 1, 2)
GO
INSERT [dbo].[Equity] ([Id], [ImgPath], [IndustryId], [Name], [ThumbPath], [DividendFrequency], [StatementPresentation]) VALUES (12, N'~/images/db/equity_img/canadiantire.jpg', 2, N'Canadian Tire', N'~/images/db/equity_thumb/canadiantire.jpg', 1, 2)
GO
INSERT [dbo].[Equity] ([Id], [ImgPath], [IndustryId], [Name], [ThumbPath], [DividendFrequency], [StatementPresentation]) VALUES (13, N'~/images/db/upload_equity_img/1b4a00c1-1269-493d-a04a-cfd92fd1e3e4.png', 6, N'Facebook', N'~/images/db/upload_equity_thumb/1b4a00c1-1269-493d-a04a-cfd92fd1e3e4.png', 1, 2)
GO
INSERT [dbo].[Equity] ([Id], [ImgPath], [IndustryId], [Name], [ThumbPath], [DividendFrequency], [StatementPresentation]) VALUES (14, N'~/images/db/upload_equity_img/66b146d2-795e-4065-9480-cc40b098c83a.jpg', 8, N'Freenome Bioscience', N'~/images/db/upload_equity_thumb/66b146d2-795e-4065-9480-cc40b098c83a.jpg', 1, 1)
GO
INSERT [dbo].[Equity] ([Id], [ImgPath], [IndustryId], [Name], [ThumbPath], [DividendFrequency], [StatementPresentation]) VALUES (15, N'~/images/db/upload_equity_img/9ac753ca-1c49-42f4-8cbf-4906d8ca87cd.jpg', 4, N'Bombardier', N'~/images/db/upload_equity_thumb/9ac753ca-1c49-42f4-8cbf-4906d8ca87cd.jpg', 1, 2)
GO
SET IDENTITY_INSERT [dbo].[Equity] OFF
GO
SET IDENTITY_INSERT [dbo].[Game] ON 
GO
INSERT [dbo].[Game] ([Id], [AllowJoin], [AllowJoinEpisodeRange_MaxIndex], [AllowJoinEpisodeRange_MinIndex], [CurrentEpisodeIndex], [InitialCash], [Name], [ScenarioId], [ShowPriceEarningsEpisodeRange_MaxIndex], [ShowPriceEarningsEpisodeRange_MinIndex], [ShowLeverageEpisodeRange_MaxIndex], [ShowLeverageEpisodeRange_MinIndex]) VALUES (2, 0, 5, 0, 16, 100000, N'Pasteur 2018 (suite)', 1, -1, -1, -1, -1)
GO
SET IDENTITY_INSERT [dbo].[Game] OFF
GO
SET IDENTITY_INSERT [dbo].[GameGroup] ON 
GO
INSERT [dbo].[GameGroup] ([Id], [GameId], [GroupId]) VALUES (7, 2, 1)
GO
INSERT [dbo].[GameGroup] ([Id], [GameId], [GroupId]) VALUES (8, 2, 2)
GO
SET IDENTITY_INSERT [dbo].[GameGroup] OFF
GO
SET IDENTITY_INSERT [dbo].[Group] ON 
GO
INSERT [dbo].[Group] ([Id], [AllowAutoCreateTeam], [AllowJoin], [AutoCreateTeamPassword], [Name], [SchoolId], [TeacherUserId]) VALUES (1, 1, 0, NULL, N'SEDF500-11', 1, N'a4d433e8-d17d-43e8-94c4-142f5f739bfa')
GO
INSERT [dbo].[Group] ([Id], [AllowAutoCreateTeam], [AllowJoin], [AutoCreateTeamPassword], [Name], [SchoolId], [TeacherUserId]) VALUES (2, 1, 0, NULL, N'SEDF500-12', 1, N'a4d433e8-d17d-43e8-94c4-142f5f739bfa')
GO
SET IDENTITY_INSERT [dbo].[Group] OFF
GO
INSERT [dbo].[Industry] ([Id], [Name]) VALUES (1, N'Alimentation')
GO
INSERT [dbo].[Industry] ([Id], [Name]) VALUES (2, N'Vente au détail')
GO
INSERT [dbo].[Industry] ([Id], [Name]) VALUES (3, N'Banques')
GO
INSERT [dbo].[Industry] ([Id], [Name]) VALUES (4, N'Manufacturiers')
GO
INSERT [dbo].[Industry] ([Id], [Name]) VALUES (5, N'Restauration')
GO
INSERT [dbo].[Industry] ([Id], [Name]) VALUES (6, N'Technologie')
GO
INSERT [dbo].[Industry] ([Id], [Name]) VALUES (7, N'Conglomérats')
GO
INSERT [dbo].[Industry] ([Id], [Name]) VALUES (8, N'Pharmaceutique')
GO
SET IDENTITY_INSERT [dbo].[Scenario] ON 
GO
INSERT [dbo].[Scenario] ([Id], [HistoricalEpisodeCount], [Name], [PlayableEpisodeCount]) VALUES (1, 12, N'Collège Pasteur', 24)
GO
SET IDENTITY_INSERT [dbo].[Scenario] OFF
GO
SET IDENTITY_INSERT [dbo].[ScenarioEquity] ON 
GO
INSERT [dbo].[ScenarioEquity] ([Id], [EquityId], [ScenarioId]) VALUES (16, 1, 1)
GO
INSERT [dbo].[ScenarioEquity] ([Id], [EquityId], [ScenarioId]) VALUES (2, 2, 1)
GO
INSERT [dbo].[ScenarioEquity] ([Id], [EquityId], [ScenarioId]) VALUES (3, 3, 1)
GO
INSERT [dbo].[ScenarioEquity] ([Id], [EquityId], [ScenarioId]) VALUES (4, 4, 1)
GO
INSERT [dbo].[ScenarioEquity] ([Id], [EquityId], [ScenarioId]) VALUES (5, 5, 1)
GO
INSERT [dbo].[ScenarioEquity] ([Id], [EquityId], [ScenarioId]) VALUES (6, 6, 1)
GO
INSERT [dbo].[ScenarioEquity] ([Id], [EquityId], [ScenarioId]) VALUES (1, 7, 1)
GO
INSERT [dbo].[ScenarioEquity] ([Id], [EquityId], [ScenarioId]) VALUES (7, 8, 1)
GO
INSERT [dbo].[ScenarioEquity] ([Id], [EquityId], [ScenarioId]) VALUES (15, 9, 1)
GO
INSERT [dbo].[ScenarioEquity] ([Id], [EquityId], [ScenarioId]) VALUES (9, 10, 1)
GO
INSERT [dbo].[ScenarioEquity] ([Id], [EquityId], [ScenarioId]) VALUES (10, 11, 1)
GO
INSERT [dbo].[ScenarioEquity] ([Id], [EquityId], [ScenarioId]) VALUES (11, 12, 1)
GO
INSERT [dbo].[ScenarioEquity] ([Id], [EquityId], [ScenarioId]) VALUES (12, 13, 1)
GO
INSERT [dbo].[ScenarioEquity] ([Id], [EquityId], [ScenarioId]) VALUES (13, 14, 1)
GO
INSERT [dbo].[ScenarioEquity] ([Id], [EquityId], [ScenarioId]) VALUES (8, 15, 1)
GO
SET IDENTITY_INSERT [dbo].[ScenarioEquity] OFF
GO
SET IDENTITY_INSERT [dbo].[School] ON 
GO
INSERT [dbo].[School] ([Id], [Name]) VALUES (1, N'Collège Pasteur')
GO
SET IDENTITY_INSERT [dbo].[School] OFF
GO
SET IDENTITY_INSERT [dbo].[Team] ON 
GO
INSERT [dbo].[Team] ([Id], [AllowJoin], [GroupId], [JoinPassword], [Name], [OwnerUserId]) VALUES (38, 0, 1, N'', N'Petraki', N'714d58fd-1944-496c-a5c9-e2a4b48ce99d')
GO
INSERT [dbo].[Team] ([Id], [AllowJoin], [GroupId], [JoinPassword], [Name], [OwnerUserId]) VALUES (39, 1, 1, NULL, N'Carl Lévesque (Omega)', N'c4be7c4b-096e-422d-96c9-080233cc6ad2')
GO
INSERT [dbo].[Team] ([Id], [AllowJoin], [GroupId], [JoinPassword], [Name], [OwnerUserId]) VALUES (40, 0, 1, N'', N'bassel', N'3e9dfca1-ee2b-44d5-8ae8-64f82e99a79f')
GO
INSERT [dbo].[Team] ([Id], [AllowJoin], [GroupId], [JoinPassword], [Name], [OwnerUserId]) VALUES (41, 0, 1, N'', N'Adib Akaaboun ', N'5b0c1cd2-a005-47f0-9790-937155ba6418')
GO
INSERT [dbo].[Team] ([Id], [AllowJoin], [GroupId], [JoinPassword], [Name], [OwnerUserId]) VALUES (42, 0, 1, N'', N'Rawad El-Zein', N'b8620cc8-a0c9-4bb3-8e58-b4e96f30726f')
GO
INSERT [dbo].[Team] ([Id], [AllowJoin], [GroupId], [JoinPassword], [Name], [OwnerUserId]) VALUES (43, 0, 1, N'', N'Andrew Andraos', N'97b51f2d-ed23-4fab-884f-84187b863054')
GO
INSERT [dbo].[Team] ([Id], [AllowJoin], [GroupId], [JoinPassword], [Name], [OwnerUserId]) VALUES (44, 0, 1, N'', N'Tommy', N'e9d484d9-b50e-428b-b754-1f525d58f31d')
GO
INSERT [dbo].[Team] ([Id], [AllowJoin], [GroupId], [JoinPassword], [Name], [OwnerUserId]) VALUES (45, 0, 2, NULL, N'Boutros', N'f8a959b2-b233-4276-ba6a-b1bb000a14dc')
GO
INSERT [dbo].[Team] ([Id], [AllowJoin], [GroupId], [JoinPassword], [Name], [OwnerUserId]) VALUES (47, 0, 1, N'', N'haikal ', N'9759286e-ca95-49ae-9a45-eb379895821c')
GO
INSERT [dbo].[Team] ([Id], [AllowJoin], [GroupId], [JoinPassword], [Name], [OwnerUserId]) VALUES (48, 0, 2, N'', N'Andre Moutran', N'5d14b3a6-1d0f-4377-8817-3a6d93872547')
GO
INSERT [dbo].[Team] ([Id], [AllowJoin], [GroupId], [JoinPassword], [Name], [OwnerUserId]) VALUES (49, 0, 1, NULL, N'Nazih El-Khodr', N'a17e760d-c983-49f7-90a1-7887cb32922b')
GO
INSERT [dbo].[Team] ([Id], [AllowJoin], [GroupId], [JoinPassword], [Name], [OwnerUserId]) VALUES (50, 0, 1, N'', N'Manuel Ramirez', N'b65fd768-04b5-4453-8a2e-35ebabaa6c88')
GO
INSERT [dbo].[Team] ([Id], [AllowJoin], [GroupId], [JoinPassword], [Name], [OwnerUserId]) VALUES (51, 0, 1, N'', N'WeiJie Liu', N'ec59c80a-e66f-4cf1-9874-450e9946e234')
GO
INSERT [dbo].[Team] ([Id], [AllowJoin], [GroupId], [JoinPassword], [Name], [OwnerUserId]) VALUES (52, 0, 1, N'', N'weihao liu ', N'35909cb8-f63f-4e1a-aaf1-06b0a5ee7213')
GO
INSERT [dbo].[Team] ([Id], [AllowJoin], [GroupId], [JoinPassword], [Name], [OwnerUserId]) VALUES (53, 0, 1, NULL, N'Benjamin Roy St-André ', N'2bba7dec-c376-4231-9514-0536997f4cc7')
GO
INSERT [dbo].[Team] ([Id], [AllowJoin], [GroupId], [JoinPassword], [Name], [OwnerUserId]) VALUES (54, 0, 1, N'', N'Catherine Tia-Lin Tran', N'4eb4091b-a136-4020-9aaa-02e1e9a6b743')
GO
INSERT [dbo].[Team] ([Id], [AllowJoin], [GroupId], [JoinPassword], [Name], [OwnerUserId]) VALUES (55, 0, 2, N'', N'Reda El Mansouri', N'c06fb430-fe0b-4253-b22f-384da08b8c7f')
GO
INSERT [dbo].[Team] ([Id], [AllowJoin], [GroupId], [JoinPassword], [Name], [OwnerUserId]) VALUES (56, 0, 2, N'', N'Benjamin Roy St-André', N'8024957d-967f-4aae-b162-61a5d80bba84')
GO
INSERT [dbo].[Team] ([Id], [AllowJoin], [GroupId], [JoinPassword], [Name], [OwnerUserId]) VALUES (57, 0, 1, N'', N'Belal Nawfal Macdonald', N'452c9c26-e0bd-4cd2-ab36-bdc639c705c8')
GO
INSERT [dbo].[Team] ([Id], [AllowJoin], [GroupId], [JoinPassword], [Name], [OwnerUserId]) VALUES (58, 0, 2, N'', N'Chahinaz', N'98ab66b1-295d-4e8c-bfb4-bcc51999b8e6')
GO
INSERT [dbo].[Team] ([Id], [AllowJoin], [GroupId], [JoinPassword], [Name], [OwnerUserId]) VALUES (59, 0, 1, N'', N'Joe El-Khoury', N'df8ab9b2-ebd7-4308-895c-531bda309721')
GO
INSERT [dbo].[Team] ([Id], [AllowJoin], [GroupId], [JoinPassword], [Name], [OwnerUserId]) VALUES (60, 0, 1, NULL, N'Kevin', N'aafe7928-b73d-4b03-a80c-c89932c108ba')
GO
INSERT [dbo].[Team] ([Id], [AllowJoin], [GroupId], [JoinPassword], [Name], [OwnerUserId]) VALUES (61, 0, 1, N'', N'Barbin le surveillant', N'b3848f01-1d72-4030-8d05-de8fd0e3af02')
GO
INSERT [dbo].[Team] ([Id], [AllowJoin], [GroupId], [JoinPassword], [Name], [OwnerUserId]) VALUES (63, 0, 1, N'', N'Catony Moussa', N'f3e91e04-2545-4379-9814-e8f813536e90')
GO
INSERT [dbo].[Team] ([Id], [AllowJoin], [GroupId], [JoinPassword], [Name], [OwnerUserId]) VALUES (64, 0, 1, N'', N'Pierre Tawil (Clout)', N'38fd8c41-db6b-45d1-99e3-84d7c77ee7a9')
GO
SET IDENTITY_INSERT [dbo].[Team] OFF
GO
SET IDENTITY_INSERT [dbo].[TeamMember] ON 
GO
INSERT [dbo].[TeamMember] ([Id], [TeamId], [UserId]) VALUES (58, 53, N'2bba7dec-c376-4231-9514-0536997f4cc7')
GO
INSERT [dbo].[TeamMember] ([Id], [TeamId], [UserId]) VALUES (57, 52, N'35909cb8-f63f-4e1a-aaf1-06b0a5ee7213')
GO
INSERT [dbo].[TeamMember] ([Id], [TeamId], [UserId]) VALUES (69, 64, N'38fd8c41-db6b-45d1-99e3-84d7c77ee7a9')
GO
INSERT [dbo].[TeamMember] ([Id], [TeamId], [UserId]) VALUES (45, 40, N'3e9dfca1-ee2b-44d5-8ae8-64f82e99a79f')
GO
INSERT [dbo].[TeamMember] ([Id], [TeamId], [UserId]) VALUES (62, 57, N'452c9c26-e0bd-4cd2-ab36-bdc639c705c8')
GO
INSERT [dbo].[TeamMember] ([Id], [TeamId], [UserId]) VALUES (59, 54, N'4eb4091b-a136-4020-9aaa-02e1e9a6b743')
GO
INSERT [dbo].[TeamMember] ([Id], [TeamId], [UserId]) VALUES (46, 41, N'5b0c1cd2-a005-47f0-9790-937155ba6418')
GO
INSERT [dbo].[TeamMember] ([Id], [TeamId], [UserId]) VALUES (53, 48, N'5d14b3a6-1d0f-4377-8817-3a6d93872547')
GO
INSERT [dbo].[TeamMember] ([Id], [TeamId], [UserId]) VALUES (43, 38, N'714d58fd-1944-496c-a5c9-e2a4b48ce99d')
GO
INSERT [dbo].[TeamMember] ([Id], [TeamId], [UserId]) VALUES (61, 56, N'8024957d-967f-4aae-b162-61a5d80bba84')
GO
INSERT [dbo].[TeamMember] ([Id], [TeamId], [UserId]) VALUES (52, 47, N'9759286e-ca95-49ae-9a45-eb379895821c')
GO
INSERT [dbo].[TeamMember] ([Id], [TeamId], [UserId]) VALUES (48, 43, N'97b51f2d-ed23-4fab-884f-84187b863054')
GO
INSERT [dbo].[TeamMember] ([Id], [TeamId], [UserId]) VALUES (63, 58, N'98ab66b1-295d-4e8c-bfb4-bcc51999b8e6')
GO
INSERT [dbo].[TeamMember] ([Id], [TeamId], [UserId]) VALUES (54, 49, N'a17e760d-c983-49f7-90a1-7887cb32922b')
GO
INSERT [dbo].[TeamMember] ([Id], [TeamId], [UserId]) VALUES (65, 60, N'aafe7928-b73d-4b03-a80c-c89932c108ba')
GO
INSERT [dbo].[TeamMember] ([Id], [TeamId], [UserId]) VALUES (66, 61, N'b3848f01-1d72-4030-8d05-de8fd0e3af02')
GO
INSERT [dbo].[TeamMember] ([Id], [TeamId], [UserId]) VALUES (55, 50, N'b65fd768-04b5-4453-8a2e-35ebabaa6c88')
GO
INSERT [dbo].[TeamMember] ([Id], [TeamId], [UserId]) VALUES (47, 42, N'b8620cc8-a0c9-4bb3-8e58-b4e96f30726f')
GO
INSERT [dbo].[TeamMember] ([Id], [TeamId], [UserId]) VALUES (60, 55, N'c06fb430-fe0b-4253-b22f-384da08b8c7f')
GO
INSERT [dbo].[TeamMember] ([Id], [TeamId], [UserId]) VALUES (64, 59, N'df8ab9b2-ebd7-4308-895c-531bda309721')
GO
INSERT [dbo].[TeamMember] ([Id], [TeamId], [UserId]) VALUES (49, 44, N'e9d484d9-b50e-428b-b754-1f525d58f31d')
GO
INSERT [dbo].[TeamMember] ([Id], [TeamId], [UserId]) VALUES (56, 51, N'ec59c80a-e66f-4cf1-9874-450e9946e234')
GO
INSERT [dbo].[TeamMember] ([Id], [TeamId], [UserId]) VALUES (44, 39, N'f20619a7-64fa-42d1-898e-7fc15a11d49f')
GO
INSERT [dbo].[TeamMember] ([Id], [TeamId], [UserId]) VALUES (68, 63, N'f3e91e04-2545-4379-9814-e8f813536e90')
GO
INSERT [dbo].[TeamMember] ([Id], [TeamId], [UserId]) VALUES (50, 45, N'f8a959b2-b233-4276-ba6a-b1bb000a14dc')
GO
SET IDENTITY_INSERT [dbo].[TeamMember] OFF
GO
SET IDENTITY_INSERT [dbo].[TradingSession] ON 
GO
INSERT [dbo].[TradingSession] ([Id], [EpisodeId], [GameId], [Name], [StartTime]) VALUES (1, 1, 2, N'2e trimestre 2016', NULL)
GO
INSERT [dbo].[TradingSession] ([Id], [EpisodeId], [GameId], [Name], [StartTime]) VALUES (2, 21, 2, N'4e trimestre 2021', NULL)
GO
INSERT [dbo].[TradingSession] ([Id], [EpisodeId], [GameId], [Name], [StartTime]) VALUES (3, 22, 2, N'1er trimestre 2022', NULL)
GO
INSERT [dbo].[TradingSession] ([Id], [EpisodeId], [GameId], [Name], [StartTime]) VALUES (4, 23, 2, N'2e trimestre 2022', NULL)
GO
INSERT [dbo].[TradingSession] ([Id], [EpisodeId], [GameId], [Name], [StartTime]) VALUES (5, 24, 2, N'3e trimestre 2022', NULL)
GO
INSERT [dbo].[TradingSession] ([Id], [EpisodeId], [GameId], [Name], [StartTime]) VALUES (6, 25, 2, N'4e trimestre 2022', NULL)
GO
INSERT [dbo].[TradingSession] ([Id], [EpisodeId], [GameId], [Name], [StartTime]) VALUES (7, 26, 2, N'1er trimestre 2023', NULL)
GO
INSERT [dbo].[TradingSession] ([Id], [EpisodeId], [GameId], [Name], [StartTime]) VALUES (8, 20, 2, N'3e trimestre 2021', NULL)
GO
INSERT [dbo].[TradingSession] ([Id], [EpisodeId], [GameId], [Name], [StartTime]) VALUES (9, 27, 2, N'2e trimestre 2023', NULL)
GO
INSERT [dbo].[TradingSession] ([Id], [EpisodeId], [GameId], [Name], [StartTime]) VALUES (10, 29, 2, N'3e trimestre 2016', NULL)
GO
INSERT [dbo].[TradingSession] ([Id], [EpisodeId], [GameId], [Name], [StartTime]) VALUES (11, 30, 2, N'4e trimestre 2023', NULL)
GO
INSERT [dbo].[TradingSession] ([Id], [EpisodeId], [GameId], [Name], [StartTime]) VALUES (12, 31, 2, N'1er trimestre 2016', NULL)
GO
INSERT [dbo].[TradingSession] ([Id], [EpisodeId], [GameId], [Name], [StartTime]) VALUES (13, 32, 2, N'3e trimestre 2023', NULL)
GO
INSERT [dbo].[TradingSession] ([Id], [EpisodeId], [GameId], [Name], [StartTime]) VALUES (14, 40, 2, N'1er trimestre 2015', NULL)
GO
INSERT [dbo].[TradingSession] ([Id], [EpisodeId], [GameId], [Name], [StartTime]) VALUES (15, 41, 2, N'2e trimestre 2015', NULL)
GO
INSERT [dbo].[TradingSession] ([Id], [EpisodeId], [GameId], [Name], [StartTime]) VALUES (16, 28, 2, N'2e trimestre 2020', NULL)
GO
INSERT [dbo].[TradingSession] ([Id], [EpisodeId], [GameId], [Name], [StartTime]) VALUES (17, 19, 2, N'2e trimestre 2021', NULL)
GO
INSERT [dbo].[TradingSession] ([Id], [EpisodeId], [GameId], [Name], [StartTime]) VALUES (18, 18, 2, N'1er trimestre 2021', NULL)
GO
INSERT [dbo].[TradingSession] ([Id], [EpisodeId], [GameId], [Name], [StartTime]) VALUES (19, 17, 2, N'4e trimestre 2020', NULL)
GO
INSERT [dbo].[TradingSession] ([Id], [EpisodeId], [GameId], [Name], [StartTime]) VALUES (20, 2, 2, N'1er trimestre 2017', NULL)
GO
INSERT [dbo].[TradingSession] ([Id], [EpisodeId], [GameId], [Name], [StartTime]) VALUES (21, 3, 2, N'2e trimestre 2017', NULL)
GO
INSERT [dbo].[TradingSession] ([Id], [EpisodeId], [GameId], [Name], [StartTime]) VALUES (22, 4, 2, N'3e trimestre 2017', NULL)
GO
INSERT [dbo].[TradingSession] ([Id], [EpisodeId], [GameId], [Name], [StartTime]) VALUES (23, 5, 2, N'4e trimestre 2017', NULL)
GO
INSERT [dbo].[TradingSession] ([Id], [EpisodeId], [GameId], [Name], [StartTime]) VALUES (24, 6, 2, N'1er trimestre 2018', NULL)
GO
INSERT [dbo].[TradingSession] ([Id], [EpisodeId], [GameId], [Name], [StartTime]) VALUES (25, 7, 2, N'2e trimestre 2018', NULL)
GO
INSERT [dbo].[TradingSession] ([Id], [EpisodeId], [GameId], [Name], [StartTime]) VALUES (26, 8, 2, N'3e trimestre 2018', NULL)
GO
INSERT [dbo].[TradingSession] ([Id], [EpisodeId], [GameId], [Name], [StartTime]) VALUES (27, 9, 2, N'4e trimestre 2018', NULL)
GO
INSERT [dbo].[TradingSession] ([Id], [EpisodeId], [GameId], [Name], [StartTime]) VALUES (28, 10, 2, N'1er trimestre 2019', NULL)
GO
INSERT [dbo].[TradingSession] ([Id], [EpisodeId], [GameId], [Name], [StartTime]) VALUES (29, 11, 2, N'2e trimestre 2019', NULL)
GO
INSERT [dbo].[TradingSession] ([Id], [EpisodeId], [GameId], [Name], [StartTime]) VALUES (30, 12, 2, N'3e trimestre 2019', NULL)
GO
INSERT [dbo].[TradingSession] ([Id], [EpisodeId], [GameId], [Name], [StartTime]) VALUES (31, 13, 2, N'4e trimestre 2019', NULL)
GO
INSERT [dbo].[TradingSession] ([Id], [EpisodeId], [GameId], [Name], [StartTime]) VALUES (32, 14, 2, N'4e trimestre 2016', NULL)
GO
INSERT [dbo].[TradingSession] ([Id], [EpisodeId], [GameId], [Name], [StartTime]) VALUES (33, 15, 2, N'1er trimestre 2020', NULL)
GO
INSERT [dbo].[TradingSession] ([Id], [EpisodeId], [GameId], [Name], [StartTime]) VALUES (34, 16, 2, N'3e trimestre 2020', NULL)
GO
INSERT [dbo].[TradingSession] ([Id], [EpisodeId], [GameId], [Name], [StartTime]) VALUES (35, 42, 2, N'3e trimestre 2015', NULL)
GO
INSERT [dbo].[TradingSession] ([Id], [EpisodeId], [GameId], [Name], [StartTime]) VALUES (36, 43, 2, N'4e trimestre 2015', NULL)
GO
SET IDENTITY_INSERT [dbo].[TradingSession] OFF
GO
SET IDENTITY_INSERT [dbo].[Transaction] ON 
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (495, 200, 10, 43, 29, 2)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (496, 300, 5, 43, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (497, 400, 4, 43, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (498, 900, 9, 43, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (499, 200, 13, 43, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (500, -400, 4, 43, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (501, 50, 11, 43, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (502, 20, 2, 43, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (503, -20, 2, 43, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (504, -100, 10, 43, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (505, 300, 8, 43, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (506, 10, 2, 43, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (508, -5, 2, 43, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (509, -150, 5, 43, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (510, 4, 7, 43, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (511, 900, 1, 44, 29, 5)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (512, 100, 2, 44, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (513, 250, 1, 46, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (514, 15, 11, 44, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (515, 15, 13, 44, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (516, 32, 1, 52, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (517, 32, 1, 52, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (518, 25, 9, 52, 29, 5)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (519, 1200, 10, 49, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (520, 1, 2, 49, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (521, 1, 9, 49, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (522, 1, 7, 49, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (523, 1, 15, 49, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (524, 1, 5, 49, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (525, 1, 13, 49, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (526, 1, 8, 49, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (527, 1, 1, 49, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (528, 1, 4, 49, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (529, 1, 3, 49, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (530, 1, 11, 49, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (531, 233, 5, 49, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (532, 5, 15, 49, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (533, 2, 15, 49, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (534, 100, 9, 56, 29, 2)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (535, 500, 15, 56, 29, 2)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (536, 130, 10, 57, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (537, 500, 10, 56, 29, 2)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (538, 33, 11, 57, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (539, 200, 5, 56, 29, 2)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (540, 500, 3, 56, 29, 6)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (541, 5000, 15, 57, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (542, 200, 4, 56, 29, 2)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (543, 200, 9, 56, 29, 2)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (544, 533, 4, 57, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (545, 50, 5, 57, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (546, 300, 5, 56, 29, 2)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (547, 171, 3, 57, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (548, 3, 15, 57, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (549, 30, 7, 45, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (550, 250, 1, 45, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (551, 300, 13, 45, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (552, 70, 9, 59, 29, 3)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (553, 10, 11, 59, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (554, 150, 15, 59, 29, 2)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (555, 90, 1, 59, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (556, 15, 2, 59, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (557, 100, 10, 59, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (558, 150, 5, 59, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (559, 150, 3, 59, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (560, -150, 15, 59, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (561, 2, 7, 59, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (562, 500, 5, 46, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (563, 10, 7, 46, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (564, 100, 13, 46, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (565, 133, 4, 53, 29, 3)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (566, 50, 9, 53, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (567, 10, 7, 55, 29, 3)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (568, 380, 1, 55, 29, 3)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (569, 130, 2, 55, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (570, 1247, 5, 55, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (571, 5, 15, 55, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (572, -10, 7, 55, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (573, 76, 13, 55, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (574, 5, 5, 55, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (575, 4, 15, 55, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (576, 31, 10, 53, 29, 2)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (577, 67, 4, 53, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (578, 8, 7, 53, 29, 3)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (579, -1, 2, 49, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (580, -1, 9, 49, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (581, -1, 7, 49, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (582, -1, 15, 49, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (583, -7, 15, 49, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (584, -234, 5, 49, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (585, -1, 13, 49, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (586, -1, 8, 49, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (587, -1, 1, 49, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (588, -1, 4, 49, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (589, 1, 11, 49, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (590, -2, 11, 49, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (591, -1, 3, 49, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (592, 5, 1, 60, 29, 4)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (593, -5, 1, 60, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (594, 5, 1, 60, 29, 3)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (595, 100, 2, 61, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (596, -100, 2, 61, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (597, 100, 9, 61, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (598, 3, 5, 60, 29, 3)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (599, 100, 9, 61, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (600, 100, 9, 61, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (601, -1200, 10, 49, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (602, 1200, 10, 49, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (603, 10, 11, 49, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (604, 5, 11, 49, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (605, 455, 1, 47, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (606, 128, 5, 49, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (607, 5, 15, 49, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (608, 21, 2, 47, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (609, 150, 10, 47, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (610, 100, 5, 47, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (611, -25, 10, 47, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (612, 4, 2, 47, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (613, 5, 2, 47, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (614, 100, 8, 48, 29, 6)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (615, 116, 3, 48, 29, 6)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (616, 227, 15, 48, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (617, 32, 13, 48, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (618, 65, 1, 48, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (619, 45, 1, 47, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (620, 5, 7, 47, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (621, 30, 1, 63, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (622, 35, 5, 63, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (623, 25, 10, 63, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (624, 30, 3, 63, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (625, 10, 11, 63, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (626, 10, 2, 63, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (627, 100, 5, 47, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (628, 25, 10, 47, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (629, 10, 7, 47, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (630, 100, 1, 47, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (631, -3, 7, 47, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (632, 5, 2, 47, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (633, 5, 10, 47, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (634, 11, 1, 47, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (635, -5, 5, 47, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (636, 1, 2, 47, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (637, 2, 5, 47, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (638, 2, 5, 47, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (639, 10, 11, 48, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (640, 91, 10, 48, 29, 2)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (641, -1, 15, 48, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (642, 10, 7, 61, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (643, -5, 11, 59, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (644, 50, 13, 61, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (645, 15, 2, 61, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (646, 75, 2, 61, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (647, 50, 13, 61, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (648, 100, 1, 61, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (649, -30, 2, 61, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (650, 100, 10, 61, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (651, 600, 4, 61, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (652, 25, 1, 61, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (653, 25, 1, 61, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (654, 5, 7, 61, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (655, 50, 13, 61, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (656, -100, 13, 61, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (657, -25, 13, 61, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (658, 40, 2, 61, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (659, 350, 5, 61, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (660, 150, 1, 64, 29, 3)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (661, 150, 4, 64, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (662, 60, 2, 64, 29, 3)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (663, 500, 10, 64, 29, 2)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (664, 3, 7, 64, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (665, 230, 15, 64, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (666, 50, 2, 64, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (667, 150, 1, 64, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (668, -130, 10, 64, 29, 4)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (669, -100, 10, 64, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (670, 50, 10, 64, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (671, 50, 9, 64, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (672, 6, 13, 64, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (673, 3, 13, 64, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (674, 150, 4, 64, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (675, 500, 1, 46, 29, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (676, -15, 13, 44, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (677, -15, 11, 44, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (678, -100, 2, 44, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (679, 424, 1, 44, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (680, -100, 10, 43, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (681, -100, 8, 43, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (682, 350, 5, 43, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (683, 5, 11, 43, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (684, -200, 8, 43, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (685, 175, 9, 43, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (686, -800, 1, 44, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (687, 249, 2, 44, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (688, -100, 1, 44, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (689, 31, 2, 44, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (690, -490, 1, 46, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (691, -10, 7, 46, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (692, -500, 5, 46, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (693, -100, 13, 46, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (694, 350, 1, 46, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (695, 10000, 15, 46, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (696, 500, 5, 46, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (697, 500, 5, 46, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (698, 95, 1, 46, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (699, -12, 7, 47, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (700, -155, 10, 47, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (701, -10000, 15, 46, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (702, 50, 2, 46, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (703, 120, 1, 46, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (704, 6, 1, 46, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (705, -1200, 10, 49, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (706, -5, 15, 49, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (707, -128, 5, 49, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (708, -15, 11, 49, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (709, 900, 1, 49, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (710, 319, 1, 49, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (711, -424, 1, 44, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (712, 132, 2, 44, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (713, -180, 4, 53, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (714, 150, 10, 53, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (715, -30, 9, 53, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (716, 300, 12, 53, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (717, 15, 7, 53, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (718, 150, 1, 53, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (719, 150, 10, 53, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (720, 20, 12, 53, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (721, 50, 1, 53, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (722, 100, 12, 48, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (723, -58, 3, 48, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (724, 50, 8, 48, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (725, -10, 11, 48, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (726, 50, 8, 48, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (727, 35, 1, 48, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (728, -226, 15, 48, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (734, 29, 1, 48, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (735, 50, 8, 48, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (736, -300, 13, 45, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (737, 2000, 4, 45, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (738, 500, 5, 45, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (739, 250, 12, 45, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (740, 5000, 15, 57, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (741, 200, 12, 57, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (742, 350, 5, 56, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (743, -600, 5, 56, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (744, -100, 9, 56, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (745, -350, 15, 56, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (746, 500, 12, 56, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (747, -33, 11, 57, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (748, -200, 4, 56, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (749, 341, 9, 57, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (750, 150, 15, 56, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (751, 370, 5, 57, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (752, -300, 15, 56, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (753, 100, 5, 56, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (754, -200, 5, 56, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (755, -50, 9, 56, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (756, 100, 1, 56, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (757, 189, 3, 57, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (758, 8, 7, 53, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (759, 100, 12, 53, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (760, 20, 2, 57, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (761, 100, 5, 53, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (762, 4, 9, 54, 30, 6)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (763, 2, 7, 54, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (764, 15, 15, 54, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (765, 3, 1, 54, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (766, 10, 4, 54, 30, 3)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (767, 10, 2, 54, 30, 3)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (768, 2, 13, 54, 30, 5)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (769, 5, 5, 54, 30, 6)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (770, 3, 12, 54, 30, 6)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (771, 10, 15, 54, 30, 3)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (772, 8, 2, 54, 30, 3)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (773, -2, 13, 54, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (774, 2, 12, 54, 30, 3)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (775, 10, 5, 54, 30, 3)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (776, 10, 15, 54, 30, 3)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (777, 4, 3, 54, 30, 2)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (778, 10, 1, 54, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (779, 15, 2, 54, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (780, 15, 4, 54, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (781, 10, 2, 54, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (782, 10, 15, 54, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (783, 10, 4, 54, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (784, 5, 1, 54, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (785, 2, 13, 54, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (786, 1000, 3, 68, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (787, 1000, 12, 68, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (788, 80, 10, 68, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (789, -9, 15, 55, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (790, -178, 1, 55, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (791, 55, 2, 55, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (792, -260, 5, 55, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (793, 41, 13, 55, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (794, 20, 5, 55, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (795, -600, 1, 49, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (796, 150, 11, 49, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (797, 50, 12, 49, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (798, 10, 12, 49, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (799, 6, 12, 49, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (800, -2, 7, 59, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (801, -100, 10, 59, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (802, -100, 3, 59, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (803, 100, 2, 59, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (804, 100, 15, 59, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (805, 100, 1, 59, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (806, 150, 9, 59, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (807, 50, 11, 59, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (808, 50, 12, 59, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (809, 2335, 15, 62, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (810, 1, 15, 62, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (811, 35000, 15, 62, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (812, 500, 15, 62, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (813, 3657, 15, 62, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (814, 230, 1, 47, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (815, 28, 2, 47, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (816, 51, 5, 47, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (817, 25, 12, 47, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (818, 20, 1, 47, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (819, 34, 2, 47, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (820, -75, 5, 47, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (821, 5, 2, 47, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (822, 4, 1, 47, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (823, 5, 12, 47, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (824, 5, 12, 47, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (825, -9, 13, 64, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (826, -3, 7, 64, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (827, -190, 15, 64, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (828, -30, 15, 64, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (829, -5, 15, 64, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (830, -100, 1, 64, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (831, 30, 2, 64, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (832, -150, 10, 64, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (833, 60, 5, 64, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (834, 104, 5, 64, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (835, 300, 4, 64, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (836, 20, 9, 64, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (837, 50, 9, 64, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (838, -5, 15, 64, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (839, 9, 12, 64, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (840, 25, 2, 64, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (841, -45, 10, 64, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (842, 10, 10, 64, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (843, -7, 9, 64, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (844, 80, 9, 64, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (845, -70, 1, 64, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (846, 10, 7, 64, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (847, -5, 12, 64, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (848, -10, 4, 64, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (849, 20, 2, 64, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (850, -319, 1, 49, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (851, 44, 12, 49, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (852, 50, 11, 49, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (853, 40, 12, 49, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (854, 50, 12, 49, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (855, 64, 1, 49, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (856, 50, 10, 61, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (857, 150, 1, 52, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (858, 30, 12, 52, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (859, 100, 2, 52, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (860, 500, 15, 60, 30, 2)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (861, 100, 11, 60, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (862, 250, 1, 60, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (863, -3, 5, 60, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (864, 150, 2, 60, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (865, 15, 11, 60, 30, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (866, -206, 2, 44, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (867, -206, 2, 44, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (868, 5000, 14, 44, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (869, 500, 1, 44, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (870, -1000, 14, 44, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (871, 250, 10, 44, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (872, 50, 2, 44, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (873, 2, 7, 53, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (874, -50, 1, 53, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (875, 5000, 15, 44, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (876, -100, 10, 44, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (877, -31, 10, 53, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (878, -20, 12, 53, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (879, 130, 1, 44, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (880, 3, 7, 53, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (881, 50, 6, 53, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (883, 10, 2, 53, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (884, -50, 1, 53, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (887, 50, 14, 53, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (888, 20, 8, 53, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (889, 3, 7, 53, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (890, 15, 13, 53, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (891, 60, 4, 53, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (892, -3000, 15, 44, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (893, -2000, 14, 44, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (894, 200, 1, 44, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (895, 7, 1, 44, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (896, -200, 12, 49, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (897, 30, 2, 49, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (898, -14, 1, 49, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (899, 8, 13, 49, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (900, -30, 7, 45, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (901, 250, 12, 45, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (902, -500, 12, 45, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (903, -500, 5, 45, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (904, -250, 1, 45, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (905, -2000, 4, 45, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (906, -831, 1, 46, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (907, 60, 2, 46, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (908, -50, 2, 52, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (909, 1000, 5, 46, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (910, -2000, 5, 46, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (911, 2000, 4, 46, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (912, -105, 1, 52, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (913, -100, 1, 44, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (914, 23, 2, 44, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (915, 500, 6, 52, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (916, 2000, 4, 46, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (917, 50, 2, 46, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (918, 5000, 15, 52, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (919, 850, 4, 46, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (920, 15, 4, 46, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (921, 200, 2, 45, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (922, 9, 2, 44, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (923, 150, 2, 45, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (924, 910, 14, 52, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (925, 25, 2, 45, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (926, -150, 10, 44, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (927, 70, 1, 44, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (928, 18, 2, 44, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (929, 1, 1, 44, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (930, 75, 2, 52, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (931, 910, 14, 52, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (932, -50, 1, 49, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (933, 1000, 15, 49, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (934, -100, 1, 49, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (935, 1000, 14, 49, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (936, 2, 13, 49, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (937, 2000, 15, 49, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (938, 5, 13, 49, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (939, 20, 15, 49, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (940, 4, 15, 49, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (941, -2800, 4, 46, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (942, 145, 2, 46, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (943, 2, 2, 46, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (944, 100, 1, 48, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (945, 100, 8, 48, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (946, -86, 1, 44, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (947, 27, 2, 44, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (948, 1, 1, 44, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (949, 1000, 1, 69, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (950, 30, 1, 69, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (951, 300, 15, 53, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (952, 400, 9, 50, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (953, 40, 6, 53, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (954, 400, 6, 50, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (955, 200, 12, 50, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (956, 400, 1, 50, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (957, 97, 2, 50, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (958, 570, 6, 52, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (959, -200, 12, 53, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (960, 1950, 14, 52, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (961, 1000, 14, 53, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (962, -200, 9, 50, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (963, -100, 12, 50, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (964, -100, 10, 53, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (965, -100, 6, 50, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (966, 600, 14, 50, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (967, 1500, 14, 53, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (968, 50, 1, 50, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (969, 300, 14, 50, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (970, 133, 5, 50, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (971, 2, 6, 50, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (972, -200, 1, 50, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (973, 3000, 15, 50, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (974, 300, 14, 50, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (975, 100, 1, 50, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (976, -200, 13, 43, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (977, 8000, 15, 43, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (978, -5, 2, 43, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (979, -4, 7, 43, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (980, -20, 11, 43, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (981, 600, 12, 43, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (982, -100, 12, 53, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (983, 50, 5, 53, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (984, 550, 14, 53, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (985, 40, 6, 53, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (986, -30, 3, 59, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (987, 77, 6, 59, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (988, 100, 14, 59, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (989, 50, 2, 59, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (990, -150, 9, 56, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (991, -400, 12, 56, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (992, 1000, 15, 56, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (993, 200, 6, 56, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (994, 300, 3, 56, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (995, 400, 14, 53, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (996, 68, 13, 48, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (997, 9, 7, 48, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (998, -25, 13, 61, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (999, -150, 10, 61, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1000, 100, 1, 48, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1001, 40, 2, 48, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1002, 2500, 14, 61, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1003, 300, 6, 61, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1004, -350, 4, 61, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1005, -250, 4, 61, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1006, 300, 6, 61, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1007, 50, 10, 48, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1008, 100, 8, 48, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1009, 1, 7, 48, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1010, 1, 1, 48, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1011, 1, 3, 48, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1012, -15, 13, 49, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1013, 5, 11, 49, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1014, 3, 2, 49, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1015, 40, 15, 49, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1016, 3, 15, 49, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1017, 2, 15, 49, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1018, -3069, 15, 49, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1019, 2, 2, 49, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1020, 5, 2, 49, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1021, 10, 2, 49, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1022, 522, 14, 49, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1023, 2000, 15, 57, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1024, -20, 2, 57, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1025, 2493, 15, 57, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1026, -9, 7, 53, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1027, 15, 2, 53, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1028, 500, 14, 53, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1029, 50, 5, 53, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1030, 20, 6, 53, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1031, 10, 8, 53, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1032, -5, 10, 53, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1033, 100, 15, 53, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1034, 5, 10, 53, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1035, 5, 6, 53, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1036, -120, 15, 53, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1037, 1000, 9, 65, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1038, -30, 15, 53, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1039, 50, 14, 53, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1040, 6, 6, 53, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1041, -52, 2, 55, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1042, 155, 1, 55, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1043, -28, 13, 55, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1044, 167, 5, 55, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1045, -33, 13, 55, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1046, 334, 6, 55, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1047, 2, 15, 55, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1048, 795, 15, 62, 31, 5)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1050, -42288, 15, 62, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1051, -175, 5, 47, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1052, 5255, 6, 62, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1053, 6, 15, 62, 31, 5)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1054, -300, 1, 44, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1055, 200, 12, 44, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1056, -223, 1, 44, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1057, -765, 1, 47, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1058, 2000, 14, 44, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1059, -50, 1, 47, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1060, 3000, 15, 44, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1061, 4570, 14, 47, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1062, 15325, 15, 47, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1063, 2500, 15, 44, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1064, 1828, 14, 47, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1065, -5325, 15, 47, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1066, 2500, 14, 44, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1067, 4334, 14, 47, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1068, 500, 14, 44, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1069, -732, 14, 47, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1070, 19, 14, 44, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1071, 13, 2, 47, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1072, -200, 12, 44, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1073, -25, 1, 47, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1074, 29, 2, 44, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1075, 2, 1, 44, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1076, 45, 4, 47, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1077, 1, 7, 47, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1078, 9, 15, 44, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1079, 2, 4, 47, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1080, 120, 14, 47, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1081, 19, 15, 47, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1082, -90, 9, 64, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1083, 300, 6, 64, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1084, -110, 6, 64, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1085, -80, 10, 64, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1086, -20, 9, 64, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1087, 2000, 15, 61, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1088, 10, 6, 64, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1089, 1250, 15, 61, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1090, 200, 4, 64, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1091, -150, 4, 64, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1092, -20, 1, 64, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1093, -15, 2, 64, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1094, -35, 2, 64, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1095, 50, 15, 64, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1096, 10, 7, 64, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1097, 40, 10, 64, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1098, -50, 5, 64, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1099, -250, 15, 60, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1100, -15, 11, 60, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1101, 50, 5, 60, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1102, 50, 10, 60, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1103, 5, 1, 60, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1104, 1000, 15, 65, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1105, 250, 5, 65, 31, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1106, -2065, 4, 46, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1107, -300, 5, 43, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1108, 8, 7, 43, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1109, -307, 2, 46, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1110, -15, 7, 53, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1111, 100, 4, 53, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1112, 200, 5, 53, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1113, 100, 10, 53, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1114, 450, 14, 53, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1115, -30, 8, 53, 33, 7)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1116, 50, 5, 53, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1117, -7509, 15, 44, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1118, 101, 13, 44, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1119, 150, 15, 53, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1120, 4, 10, 53, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1121, -17, 2, 50, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1122, -1522, 14, 49, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1123, -200, 1, 49, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1124, -205, 11, 49, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1125, 200, 2, 49, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1126, -250, 2, 49, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1132, -156, 2, 44, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1133, 50, 13, 44, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1134, 14, 13, 44, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1135, 100, 1, 44, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1136, 2222, 4, 44, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1137, -8, 7, 53, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1138, -2, 7, 53, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1139, -2000, 14, 44, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1140, 50, 13, 44, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1141, 12, 13, 44, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1142, 1, 13, 44, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1143, 50, 1, 53, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1144, 50, 5, 53, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1145, 46, 10, 53, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1146, 5, 13, 53, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1147, 20, 4, 53, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1148, 100, 15, 53, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1149, -61, 6, 53, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1150, 5, 2, 53, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1153, -6, 2, 53, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1154, -2, 2, 53, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1155, 500, 14, 53, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1156, -1, 7, 53, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1157, 50, 5, 53, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1158, 150, 15, 53, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1159, 2, 14, 53, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1160, -3250, 15, 61, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1161, -375, 2, 45, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1162, -222, 4, 44, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1163, 10, 13, 44, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1164, 7, 13, 44, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1165, 3000, 14, 46, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1166, 400, 1, 46, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1167, 250, 13, 46, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1168, 370, 10, 46, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1169, 3, 2, 46, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1170, -3, 2, 46, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1171, 15, 10, 46, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1172, 1000, 1, 45, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1173, 2000, 4, 45, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1174, -3000, 14, 46, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1175, -250, 13, 46, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1176, 400, 1, 46, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1177, 300, 10, 46, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1178, 23, 1, 45, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1179, 38, 10, 46, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1180, -415, 10, 46, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1181, 200, 10, 46, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1182, 1150, 4, 46, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1183, -100, 13, 48, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1184, 40, 2, 48, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1185, -10, 7, 48, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1186, -40, 2, 48, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1187, -100, 12, 48, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1188, 346, 2, 49, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1189, 22, 14, 49, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1190, -40, 2, 55, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1191, 222, 6, 55, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1192, -2, 15, 55, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1193, 50, 13, 55, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1194, -42, 1, 55, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1195, -138, 5, 55, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1196, 47, 4, 55, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1197, 591, 4, 55, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1198, -500, 9, 65, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1199, 10, 2, 65, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1200, 50, 2, 65, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1201, 100, 13, 65, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1202, 200, 1, 65, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1203, 600, 4, 65, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1204, 100, 5, 65, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1205, 50, 9, 59, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1206, 100, 15, 59, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1207, 25, 1, 59, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1208, 50, 5, 59, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1209, -1, 7, 47, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1210, -116, 2, 47, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1211, -10019, 15, 47, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1212, 225, 13, 47, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1213, -10, 12, 47, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1217, 100, 1, 47, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1219, -2620, 14, 47, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1220, 25, 13, 47, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1221, 50, 14, 47, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1222, 1000, 4, 47, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1223, -47, 4, 47, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1224, 64, 1, 47, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1225, 21, 13, 47, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1226, -6, 15, 62, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1227, 11, 1, 47, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1228, -1200, 6, 62, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1229, 1, 13, 47, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1230, 1600, 4, 62, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1231, 4, 14, 47, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1232, 100, 13, 48, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1233, 200, 9, 48, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1234, 35, 2, 48, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1235, -600, 6, 62, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1236, 2388, 14, 62, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1237, 1000, 15, 50, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1238, 500, 14, 50, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1239, 50, 6, 50, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1240, 7, 9, 50, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1241, -50, 2, 61, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1242, 250, 5, 61, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1243, -25, 2, 61, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1244, 800, 4, 61, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1245, 1000, 14, 61, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1246, 400, 6, 61, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1247, 77, 5, 61, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1248, -80, 10, 64, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1249, -50, 15, 64, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1250, 650, 14, 64, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1251, 70, 4, 64, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1252, 30, 4, 64, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1253, -4, 12, 64, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1254, 5, 7, 64, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1255, 100, 9, 64, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1256, -500, 14, 64, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1257, 300, 6, 64, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1258, -100, 2, 60, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1259, 15, 7, 60, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1260, -160, 1, 60, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1261, 100, 4, 60, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1262, 10, 7, 60, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1263, -150, 15, 60, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1264, 25, 1, 60, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1265, 50, 4, 60, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1266, 100, 12, 60, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1267, 100, 9, 60, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1268, 15, 11, 60, 33, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1269, -8, 2, 53, 16, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1270, -6, 13, 53, 16, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1271, 10, 1, 53, 16, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1272, 10, 10, 53, 16, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1273, 8, 14, 53, 16, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1274, 300, 8, 53, 16, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1275, 50, 4, 53, 16, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1276, -508, 10, 46, 16, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1277, 450, 1, 46, 16, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1278, 7, 1, 46, 16, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1279, -53, 13, 44, 16, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1280, 128, 1, 44, 16, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1281, -22, 14, 49, 16, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1282, -1, 2, 49, 16, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1283, 2, 13, 49, 16, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1284, 15, 6, 49, 16, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1285, 3, 6, 49, 16, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1286, -70, 6, 59, 16, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1287, 3, 13, 59, 16, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1288, -10, 3, 59, 16, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1289, -1023, 1, 45, 16, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1290, -2000, 4, 45, 16, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1291, 2, 7, 57, 16, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1298, 10, 1, 55, 16, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1299, 10, 8, 55, 16, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1300, 5, 8, 55, 16, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1301, 1300, 1, 45, 16, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1302, 54, 1, 45, 16, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1303, -554, 14, 47, 16, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1304, 1420, 8, 47, 16, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1305, -1000, 14, 47, 16, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1306, -72, 13, 47, 16, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1307, -30, 1, 44, 16, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1308, -50, 13, 47, 16, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1309, -50, 13, 44, 16, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1310, 2000, 8, 44, 16, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1311, 3000, 8, 44, 16, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1312, 728, 8, 44, 16, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1313, 8580, 8, 47, 16, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1314, 50, 1, 47, 16, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1318, 200, 4, 47, 16, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1320, 1250, 8, 47, 16, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1321, 250, 8, 47, 16, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1322, 21, 8, 47, 16, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1323, -25, 12, 47, 16, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1324, 516, 8, 47, 16, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1325, -1000, 14, 44, 16, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1326, -500, 4, 44, 16, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1327, -3000, 14, 47, 16, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1328, -200, 4, 47, 16, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1329, 5250, 8, 44, 16, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1330, 8188, 8, 47, 16, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1331, 20, 8, 44, 16, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1332, 2, 8, 44, 16, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1333, -1247, 4, 62, 16, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1334, 582, 4, 62, 16, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1335, 4922, 8, 62, 16, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1336, -4, 7, 53, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1337, -180, 10, 53, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1338, -80, 10, 53, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1339, 200, 8, 53, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1340, 40, 1, 53, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1341, 50, 4, 53, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1342, -600, 12, 43, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1343, 6800, 14, 43, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1344, -142, 13, 44, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1345, -4019, 14, 44, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1346, -400, 1, 44, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1347, -1500, 4, 44, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1348, 35000, 8, 44, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1349, 1899, 8, 44, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1350, -1257, 1, 46, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1351, -1150, 4, 46, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1352, 1000, 10, 46, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1353, 2000, 5, 46, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1354, 249, 1, 46, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1355, 23, 1, 46, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1356, -17899, 8, 44, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1357, 525, 1, 44, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1358, 37, 1, 44, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1359, 6, 1, 44, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1360, -430, 15, 53, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1361, -3010, 14, 53, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1362, -150, 5, 53, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1363, -50, 10, 53, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1364, 2000, 8, 53, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1365, -120, 15, 53, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1366, 500, 8, 53, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1367, 200, 1, 53, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1368, -1000, 14, 53, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1369, 100, 1, 53, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1370, -100, 5, 53, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1371, 100, 9, 53, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1372, 150, 5, 53, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1373, -100, 4, 53, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1374, 100, 6, 53, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1375, 100, 6, 53, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1376, 100, 6, 53, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1377, 6, 13, 53, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1378, 3, 2, 53, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1379, 40, 6, 53, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1380, -59, 15, 59, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1381, 10, 14, 59, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1382, 50, 8, 59, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1383, 10, 10, 59, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1384, 1, 13, 59, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1385, 5, 5, 59, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1386, 10, 6, 59, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1387, 4, 2, 57, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1388, -30, 2, 55, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1389, 2745, 8, 55, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1390, 1000, 8, 55, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1391, 298, 8, 55, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1392, -222, 4, 55, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1393, 805, 6, 55, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1394, 1, 8, 55, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1395, -25, 10, 53, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1396, -40, 6, 53, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1397, -30, 12, 53, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1398, 3, 2, 53, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1399, -10, 10, 53, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1400, 500, 8, 53, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1401, -400, 14, 53, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1402, 40, 5, 53, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1403, 15, 1, 53, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1404, -100, 15, 53, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1405, 10, 9, 53, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1406, -40, 5, 53, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1407, 25, 9, 53, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1408, -20, 12, 53, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1409, -70, 4, 53, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1410, 500, 8, 53, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1411, 3, 13, 53, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1412, -30, 4, 53, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1413, -5, 10, 53, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1414, 2, 13, 53, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1415, 5, 5, 53, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1416, -10, 1, 53, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1417, -25, 5, 53, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1418, 30, 12, 53, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1419, -100, 14, 53, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1420, -5, 1, 53, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1421, 3, 11, 53, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1422, 5, 6, 53, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1423, -1000, 4, 47, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1424, -150, 13, 47, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1425, -3000, 14, 47, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1426, 10000, 8, 47, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1427, 120, 1, 47, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1428, -168, 1, 44, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1429, -2500, 8, 47, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1430, 120, 1, 47, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1431, 5000, 8, 44, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1432, 40, 2, 47, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1433, 300, 8, 44, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1434, 15, 8, 44, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1435, 17, 1, 47, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1436, 19, 8, 47, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1437, -2388, 14, 62, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1438, 2500, 6, 62, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1439, -700, 6, 62, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1440, 1000, 8, 62, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1441, -935, 4, 62, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1442, 667, 15, 62, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1443, 5700, 15, 62, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1444, 293, 15, 62, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1445, -2500, 15, 62, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1446, 1337, 6, 62, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1447, 1, 15, 62, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1448, -135, 2, 64, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1449, -15, 10, 64, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1450, 183, 9, 64, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1451, -366, 9, 64, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1452, -25, 7, 64, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1453, -500, 6, 64, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1454, -114, 5, 64, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1455, -150, 14, 64, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1456, -110, 1, 64, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1457, -740, 4, 64, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1458, 1, 9, 64, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1459, -1, 9, 64, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1460, 1000, 6, 64, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1461, 500, 8, 64, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1462, 200, 1, 64, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1463, 300, 4, 64, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1464, 300, 12, 64, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1465, 50, 2, 64, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1466, -300, 6, 64, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1467, 100, 4, 64, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1468, -200, 4, 64, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1469, 200, 1, 64, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1470, 50, 4, 64, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1471, 300, 9, 64, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1472, -250, 8, 64, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1473, 200, 12, 64, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1474, 250, 10, 64, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1475, -100, 6, 64, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1476, 50, 15, 64, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1477, -1354, 1, 45, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1478, 42000, 8, 45, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1479, 800, 8, 45, 34, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1480, -400, 1, 44, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1481, 10355, 8, 44, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1482, -10, 2, 53, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1483, -2000, 5, 46, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1484, 14500, 8, 46, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1485, -550, 10, 46, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1486, 7000, 8, 46, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1487, 490, 8, 46, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1488, 500, 8, 46, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1489, 250, 8, 46, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1490, -450, 10, 46, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1491, 15000, 15, 46, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1492, -14000, 8, 46, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1493, 13945, 6, 46, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1494, -677, 5, 61, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1495, -15, 7, 61, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1496, 10000, 6, 61, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1497, -25, 2, 61, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1498, 1000, 8, 61, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1499, 1000, 8, 61, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1500, -150, 1, 61, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1501, 3500, 14, 61, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1502, 100, 8, 61, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1503, 25, 14, 61, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1504, 25, 6, 61, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1505, 5, 8, 61, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1506, 1, 8, 61, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1507, 2, 15, 61, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1508, -230, 5, 53, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1509, -100, 5, 53, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1510, -100, 5, 53, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1511, 1000, 14, 53, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1512, -45, 9, 53, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1513, 1000, 15, 53, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1514, 50, 1, 53, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1515, 90, 10, 53, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1516, -205, 6, 53, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1517, 6, 11, 53, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1518, 10, 9, 53, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1519, -20, 9, 53, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1520, 20, 12, 53, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1521, -25, 1, 53, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1522, 5, 13, 53, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1523, -600, 8, 53, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1524, 2000, 15, 53, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1525, -10, 13, 53, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1526, 2000, 15, 53, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1527, -25, 4, 53, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1528, 300, 15, 53, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1529, -10, 13, 53, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1530, 1600, 15, 53, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1531, -10, 13, 53, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1532, -20, 1, 53, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1533, -25, 4, 53, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1534, 3000, 15, 53, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1535, -1900, 15, 53, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1536, 200, 14, 53, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1537, -55, 1, 53, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1538, 3, 11, 53, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1539, 20, 12, 53, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1540, 300, 14, 53, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1541, 600, 14, 53, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1542, -200, 6, 53, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1543, -1, 11, 53, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1544, 30, 12, 53, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1545, -50, 4, 53, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1546, -4, 11, 53, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1547, 600, 8, 53, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1548, -50, 1, 53, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1549, 50, 12, 53, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1550, 25, 10, 53, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1551, -7, 2, 53, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1552, 400, 14, 53, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1553, 500, 15, 53, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1554, 35, 10, 53, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1555, -50, 9, 53, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1556, 700, 15, 53, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1557, 20, 10, 53, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1558, 300, 15, 53, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1559, 2, 9, 53, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1560, -99, 5, 59, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1561, -15, 11, 59, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1562, -5, 11, 59, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1563, 100, 8, 59, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1564, -42, 15, 59, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1565, 100, 14, 59, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1566, 2, 13, 59, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1567, 5, 10, 59, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1568, 100, 6, 59, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1569, 4, 9, 59, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1570, 10, 4, 59, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1571, 100, 9, 59, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1572, -1041, 5, 55, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1573, 7712, 8, 55, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1574, -59, 3, 48, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1575, 80, 10, 48, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1576, -5, 2, 48, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1577, 500, 8, 48, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1578, 3, 1, 48, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1579, -10000, 15, 57, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1580, 20, 2, 57, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1581, 120, 10, 57, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1582, -200, 12, 57, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1583, 6, 7, 57, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1584, 1, 7, 57, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1585, -4496, 15, 57, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1586, 14, 2, 57, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1587, 15, 5, 57, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1588, -341, 9, 57, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1589, 25, 2, 57, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1590, 2, 7, 57, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1591, 2, 2, 57, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1592, 2, 10, 57, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1593, -18, 6, 49, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1594, 1, 10, 49, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1595, 1, 4, 49, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1596, 4500, 15, 56, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1597, -40, 2, 47, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1598, -307, 1, 47, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1599, 4200, 8, 47, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1600, 584, 10, 47, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1601, -150, 1, 47, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1602, -50, 1, 47, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1603, 2353, 8, 47, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1604, 196, 10, 47, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1605, 1, 8, 47, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1606, -30, 10, 47, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1607, 429, 8, 47, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1608, 10, 8, 45, 19, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1609, -80, 10, 53, 18, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1610, -750, 10, 47, 18, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1611, -15000, 15, 46, 18, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1612, -13945, 6, 46, 18, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1613, -8740, 8, 46, 18, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1614, 350, 13, 46, 18, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1615, 2420, 5, 46, 18, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1616, 50, 15, 59, 18, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1617, 25, 10, 59, 18, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1618, 50, 15, 59, 18, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1619, 3, 13, 59, 18, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1620, 20, 4, 59, 18, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1621, 2, 2, 59, 18, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1622, 5, 10, 59, 18, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1623, -360, 3, 57, 18, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1624, 10, 7, 57, 18, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1625, 12, 2, 57, 18, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1626, -533, 4, 57, 18, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1627, -435, 5, 57, 18, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1628, 13, 7, 57, 18, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1629, 7, 2, 57, 18, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1630, -252, 10, 57, 18, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1631, 10, 7, 57, 18, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1632, -200, 9, 48, 18, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1633, 50, 1, 48, 18, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1634, 7, 2, 48, 18, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1635, 190, 8, 48, 18, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1636, -5500, 15, 56, 18, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1637, -100, 1, 56, 18, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1638, -200, 6, 56, 18, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1639, -100, 12, 56, 18, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1640, -150, 5, 56, 18, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1641, 50, 2, 56, 18, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1642, 10, 13, 56, 18, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1643, 20, 13, 56, 18, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1644, 13, 13, 56, 18, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1645, 1, 9, 56, 18, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1646, 2, 15, 56, 18, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1647, 1, 15, 56, 18, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1648, -1075, 9, 43, 18, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1649, -8000, 15, 43, 18, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1650, -200, 5, 43, 18, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1651, -6800, 14, 43, 18, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1652, -35, 11, 43, 18, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1653, 85, 7, 43, 18, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1654, 2199, 8, 47, 18, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1655, 18182, 15, 47, 18, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1656, 250, 15, 62, 18, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1657, 2, 15, 62, 18, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1658, -42810, 8, 45, 18, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1659, 42000, 8, 45, 18, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1660, 800, 8, 45, 18, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1661, 10, 8, 45, 18, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1662, 100, 15, 59, 18, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1663, 100, 8, 59, 18, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1664, -75, 10, 53, 18, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1665, -175, 1, 53, 18, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1666, 500, 5, 53, 18, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1667, -100, 12, 53, 18, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1668, 300, 5, 53, 18, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1669, 1000, 14, 53, 18, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1670, 7, 2, 53, 18, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1671, 3, 11, 53, 18, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1672, -1500, 15, 53, 18, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1673, 18, 9, 53, 18, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1674, -5, 10, 53, 18, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1675, 50, 5, 53, 18, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1676, -100, 12, 53, 18, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1677, 200, 4, 53, 18, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1678, -50, 5, 53, 18, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1679, 10, 2, 53, 18, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1680, -25, 1, 53, 18, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1681, 5, 2, 53, 18, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1682, -20, 10, 53, 18, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1683, 250, 14, 53, 18, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1684, 500, 15, 53, 18, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1685, 2, 11, 53, 18, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1686, 19, 6, 53, 18, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1687, -2, 13, 49, 18, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1688, -1, 10, 49, 18, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1689, -1, 4, 49, 18, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1690, -45, 2, 49, 18, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1691, -50, 2, 49, 18, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1692, -50, 2, 49, 18, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1693, 25, 2, 49, 18, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1694, 125, 11, 49, 18, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1695, 5, 2, 49, 18, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1696, -5, 2, 49, 18, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1697, 5, 11, 49, 18, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1698, -2, 11, 49, 18, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1699, 3, 2, 49, 18, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1700, 1, 1, 49, 18, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1701, 1, 15, 49, 18, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1702, -2420, 5, 46, 17, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1703, -350, 13, 46, 17, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1704, 272, 1, 46, 17, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1705, -544, 1, 46, 17, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1706, -150, 1, 53, 17, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1707, -1250, 14, 53, 17, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1708, 150, 10, 53, 17, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1709, 60, 4, 53, 17, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1710, 200, 5, 53, 17, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1711, -500, 14, 53, 17, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1712, 3, 11, 53, 17, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1713, 1000, 14, 53, 17, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1714, -10, 12, 59, 17, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1715, 30, 5, 59, 17, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1716, 50, 8, 59, 17, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1717, 11, 15, 59, 17, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1718, 1, 10, 59, 17, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1719, -3000, 8, 55, 17, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1720, 700, 4, 55, 17, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1721, 130, 4, 55, 17, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1722, 3, 4, 55, 17, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1723, 1, 8, 55, 17, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1724, -15000, 8, 44, 17, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1725, -42810, 8, 45, 17, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1726, 34000, 15, 44, 17, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1727, -5670, 8, 44, 17, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1728, 2000, 15, 44, 17, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1729, 11965, 15, 44, 17, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1730, -9000, 8, 47, 17, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1731, 290, 13, 47, 17, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1732, -47965, 15, 44, 8, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1733, -25000, 8, 44, 8, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1734, 50, 5, 53, 8, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1735, -40, 1, 53, 8, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1736, -37, 2, 59, 8, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1737, 100, 14, 59, 8, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1738, 1500, 14, 53, 8, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1739, 30, 3, 59, 8, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1740, -1500, 15, 53, 8, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1741, 15, 13, 53, 8, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1742, 50, 8, 59, 8, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1743, 50, 5, 53, 8, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1744, 6, 6, 53, 8, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1745, -160, 4, 53, 8, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1746, -10, 4, 59, 8, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1747, 2, 13, 59, 8, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1748, 50, 15, 59, 8, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1749, 59, 5, 59, 8, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1750, 70, 12, 59, 8, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1751, 4, 10, 59, 8, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1752, -500, 8, 53, 8, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1753, 10, 13, 53, 8, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1754, 30, 10, 53, 8, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1755, 20, 10, 53, 8, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1756, 300, 14, 53, 8, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1757, -30, 4, 53, 8, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1758, -40, 4, 53, 8, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1759, -5, 1, 53, 8, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1760, -15, 4, 53, 8, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1761, -4, 11, 53, 8, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1762, 100, 5, 53, 8, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1763, 20, 10, 53, 8, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1764, -300, 8, 53, 8, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1765, 30, 10, 53, 8, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1766, -8, 2, 53, 8, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1767, 5, 13, 53, 8, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1768, 300, 8, 53, 8, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1769, 200, 14, 53, 8, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1770, -2, 2, 53, 8, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1771, 6, 13, 53, 8, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1772, -7, 4, 53, 8, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1773, -3, 1, 53, 8, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1774, -3, 4, 53, 8, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1775, 1, 11, 53, 8, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1776, -2, 11, 53, 8, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1777, 20, 10, 53, 8, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1778, 50, 6, 53, 8, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1779, -18182, 15, 47, 8, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1780, -12926, 8, 47, 8, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1781, 462, 13, 47, 8, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1782, 2000, 14, 47, 8, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1783, -27, 13, 47, 8, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1784, 777, 8, 47, 8, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1785, 1746, 8, 47, 8, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1786, 2000, 14, 47, 8, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1787, -1000, 14, 47, 8, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1788, 163, 13, 47, 8, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1789, 16, 8, 47, 8, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1790, -1, 8, 47, 8, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1791, 2, 14, 47, 8, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1792, -30, 7, 57, 8, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1793, -70, 2, 57, 8, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1794, 15000, 15, 57, 8, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1795, 500, 12, 57, 8, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1796, 400, 5, 57, 8, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1797, -106, 13, 55, 8, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1798, 700, 5, 55, 8, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1799, 60, 5, 55, 8, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1800, 3, 5, 55, 8, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1801, -83, 1, 48, 2, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1802, 10, 11, 48, 2, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1803, 20, 13, 48, 2, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1804, 5, 11, 48, 2, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1805, 10, 13, 48, 2, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1806, -5, 4, 53, 2, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1807, -2, 1, 53, 2, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1808, -200, 5, 53, 2, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1809, -1000, 15, 53, 2, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1810, -500, 8, 53, 2, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1811, 5, 7, 53, 2, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1812, 500, 6, 53, 2, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1813, -700, 14, 53, 2, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1814, 1000, 15, 53, 2, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1815, -1000, 15, 53, 2, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1816, 1000, 6, 53, 2, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1817, -1000, 15, 53, 2, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1818, -2000, 8, 53, 2, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1819, -1000, 15, 53, 2, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1820, -20, 9, 53, 2, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1821, 1000, 6, 53, 2, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1822, -800, 14, 53, 2, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1823, 80, 10, 53, 2, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1824, 5, 7, 53, 2, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1825, -6, 13, 53, 2, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1826, -5, 2, 53, 2, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1827, 20, 3, 53, 2, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1828, 425, 6, 53, 2, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1829, -10, 11, 53, 2, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1830, -15, 13, 53, 2, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1831, -300, 8, 53, 2, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1832, 5, 7, 53, 2, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1833, -700, 14, 53, 2, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1834, -500, 15, 53, 2, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1835, -3, 7, 53, 2, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1836, 5, 7, 53, 2, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1837, 300, 8, 53, 2, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1838, -500, 15, 53, 2, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1839, 5, 11, 59, 2, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1840, 6, 13, 59, 2, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1841, 10, 4, 59, 2, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1842, 10, 10, 59, 2, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1843, 10, 12, 59, 2, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1844, 10, 13, 59, 2, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1845, 5, 2, 53, 2, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1846, 10, 2, 59, 2, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1847, 10, 10, 59, 2, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1848, 5, 13, 53, 2, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1849, 10, 13, 59, 2, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1850, -5, 2, 53, 2, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1851, 10, 14, 59, 2, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1852, 10, 13, 53, 2, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1853, 1, 4, 59, 2, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1854, 200, 6, 53, 2, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1855, 50, 6, 53, 2, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1856, 249, 8, 55, 2, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1857, -400, 5, 57, 2, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1858, -500, 12, 57, 2, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1859, 7, 7, 57, 2, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1860, -14, 7, 57, 2, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1861, -4, 7, 57, 2, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1862, -2, 2, 57, 2, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1863, 10000, 8, 57, 2, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1864, -4413, 15, 62, 2, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1865, -2600, 8, 62, 2, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1866, 16, 7, 62, 2, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1867, 2, 7, 62, 2, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1868, 22, 6, 62, 2, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1869, 1, 15, 62, 2, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1870, 300, 1, 44, 3, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1871, 30000, 8, 44, 3, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1872, -10000, 8, 44, 3, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1873, -10000, 8, 44, 3, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1874, 20000, 15, 44, 3, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1875, 100, 13, 44, 3, 1)
GO
INSERT [dbo].[Transaction] ([Id], [Amount], [EquityId], [TeamMemberId], [TradingSessionId], [TransactionReasonId]) VALUES (1876, 50, 6, 59, 3, 1)
GO
SET IDENTITY_INSERT [dbo].[Transaction] OFF
GO
INSERT [dbo].[TransactionReason] ([Id], [Name]) VALUES (1, N'Ne sais pas')
GO
INSERT [dbo].[TransactionReason] ([Id], [Name]) VALUES (2, N'Bon dividende')
GO
INSERT [dbo].[TransactionReason] ([Id], [Name]) VALUES (3, N'Bas ratio cours/bénéfice')
GO
INSERT [dbo].[TransactionReason] ([Id], [Name]) VALUES (4, N'Haut ratio cours/bénéfice')
GO
INSERT [dbo].[TransactionReason] ([Id], [Name]) VALUES (5, N'J''aime la compagnie')
GO
INSERT [dbo].[TransactionReason] ([Id], [Name]) VALUES (6, N'Bonne nouvelle')
GO
INSERT [dbo].[TransactionReason] ([Id], [Name]) VALUES (7, N'Mauvaise nouvelle')
GO
ALTER TABLE [dbo].[EpisodeEquityInfo] ADD  DEFAULT ((0)) FOR [OutstandingShares]
GO
ALTER TABLE [dbo].[Equity] ADD  DEFAULT ((0)) FOR [DividendFrequency]
GO
ALTER TABLE [dbo].[Equity] ADD  DEFAULT ((0)) FOR [StatementPresentation]
GO
ALTER TABLE [dbo].[Game] ADD  DEFAULT ((-1)) FOR [ShowPriceEarningsEpisodeRange_MaxIndex]
GO
ALTER TABLE [dbo].[Game] ADD  DEFAULT ((-1)) FOR [ShowPriceEarningsEpisodeRange_MinIndex]
GO
ALTER TABLE [dbo].[Game] ADD  DEFAULT ((-1)) FOR [ShowLeverageEpisodeRange_MaxIndex]
GO
ALTER TABLE [dbo].[Game] ADD  DEFAULT ((-1)) FOR [ShowLeverageEpisodeRange_MinIndex]
GO
ALTER TABLE [dbo].[ApplicationUser]  WITH CHECK ADD  CONSTRAINT [FK_ApplicationUser_Game_ActiveGameId] FOREIGN KEY([ActiveGameId])
REFERENCES [dbo].[Game] ([Id])
GO
ALTER TABLE [dbo].[ApplicationUser] CHECK CONSTRAINT [FK_ApplicationUser_Game_ActiveGameId]
GO
ALTER TABLE [dbo].[ApplicationUser]  WITH CHECK ADD  CONSTRAINT [FK_ApplicationUser_TeamMember_ActiveTeamMemberId] FOREIGN KEY([ActiveTeamMemberId])
REFERENCES [dbo].[TeamMember] ([Id])
GO
ALTER TABLE [dbo].[ApplicationUser] CHECK CONSTRAINT [FK_ApplicationUser_TeamMember_ActiveTeamMemberId]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_ApplicationUser_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[ApplicationUser] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_ApplicationUser_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_ApplicationUser_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[ApplicationUser] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_ApplicationUser_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_ApplicationUser_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[ApplicationUser] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_ApplicationUser_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_ApplicationUser_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[ApplicationUser] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_ApplicationUser_UserId]
GO
ALTER TABLE [dbo].[Episode]  WITH CHECK ADD  CONSTRAINT [FK_Episode_Scenario_ScenarioId] FOREIGN KEY([ScenarioId])
REFERENCES [dbo].[Scenario] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Episode] CHECK CONSTRAINT [FK_Episode_Scenario_ScenarioId]
GO
ALTER TABLE [dbo].[EpisodeEquityInfo]  WITH CHECK ADD  CONSTRAINT [FK_EpisodeEquityInfo_Category_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EpisodeEquityInfo] CHECK CONSTRAINT [FK_EpisodeEquityInfo_Category_CategoryId]
GO
ALTER TABLE [dbo].[EpisodeEquityInfo]  WITH CHECK ADD  CONSTRAINT [FK_EpisodeEquityInfo_Episode_EpisodeId] FOREIGN KEY([EpisodeId])
REFERENCES [dbo].[Episode] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EpisodeEquityInfo] CHECK CONSTRAINT [FK_EpisodeEquityInfo_Episode_EpisodeId]
GO
ALTER TABLE [dbo].[EpisodeEquityInfo]  WITH CHECK ADD  CONSTRAINT [FK_EpisodeEquityInfo_Equity_EquityId] FOREIGN KEY([EquityId])
REFERENCES [dbo].[Equity] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EpisodeEquityInfo] CHECK CONSTRAINT [FK_EpisodeEquityInfo_Equity_EquityId]
GO
ALTER TABLE [dbo].[Equity]  WITH CHECK ADD  CONSTRAINT [FK_Equity_Industry_IndustryId] FOREIGN KEY([IndustryId])
REFERENCES [dbo].[Industry] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Equity] CHECK CONSTRAINT [FK_Equity_Industry_IndustryId]
GO
ALTER TABLE [dbo].[Game]  WITH CHECK ADD  CONSTRAINT [FK_Game_Scenario_ScenarioId] FOREIGN KEY([ScenarioId])
REFERENCES [dbo].[Scenario] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Game] CHECK CONSTRAINT [FK_Game_Scenario_ScenarioId]
GO
ALTER TABLE [dbo].[GameGroup]  WITH CHECK ADD  CONSTRAINT [FK_GameGroup_Game_GameId] FOREIGN KEY([GameId])
REFERENCES [dbo].[Game] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GameGroup] CHECK CONSTRAINT [FK_GameGroup_Game_GameId]
GO
ALTER TABLE [dbo].[GameGroup]  WITH CHECK ADD  CONSTRAINT [FK_GameGroup_Group_GroupId] FOREIGN KEY([GroupId])
REFERENCES [dbo].[Group] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GameGroup] CHECK CONSTRAINT [FK_GameGroup_Group_GroupId]
GO
ALTER TABLE [dbo].[Group]  WITH CHECK ADD  CONSTRAINT [FK_Group_ApplicationUser_TeacherUserId] FOREIGN KEY([TeacherUserId])
REFERENCES [dbo].[ApplicationUser] ([Id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Group] CHECK CONSTRAINT [FK_Group_ApplicationUser_TeacherUserId]
GO
ALTER TABLE [dbo].[Group]  WITH CHECK ADD  CONSTRAINT [FK_Group_School_SchoolId] FOREIGN KEY([SchoolId])
REFERENCES [dbo].[School] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Group] CHECK CONSTRAINT [FK_Group_School_SchoolId]
GO
ALTER TABLE [dbo].[ScenarioEquity]  WITH CHECK ADD  CONSTRAINT [FK_ScenarioEquity_Equity_EquityId] FOREIGN KEY([EquityId])
REFERENCES [dbo].[Equity] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ScenarioEquity] CHECK CONSTRAINT [FK_ScenarioEquity_Equity_EquityId]
GO
ALTER TABLE [dbo].[ScenarioEquity]  WITH CHECK ADD  CONSTRAINT [FK_ScenarioEquity_Scenario_ScenarioId] FOREIGN KEY([ScenarioId])
REFERENCES [dbo].[Scenario] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ScenarioEquity] CHECK CONSTRAINT [FK_ScenarioEquity_Scenario_ScenarioId]
GO
ALTER TABLE [dbo].[Team]  WITH CHECK ADD  CONSTRAINT [FK_Team_ApplicationUser_OwnerUserId] FOREIGN KEY([OwnerUserId])
REFERENCES [dbo].[ApplicationUser] ([Id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Team] CHECK CONSTRAINT [FK_Team_ApplicationUser_OwnerUserId]
GO
ALTER TABLE [dbo].[Team]  WITH CHECK ADD  CONSTRAINT [FK_Team_Group_GroupId] FOREIGN KEY([GroupId])
REFERENCES [dbo].[Group] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Team] CHECK CONSTRAINT [FK_Team_Group_GroupId]
GO
ALTER TABLE [dbo].[TeamMember]  WITH CHECK ADD  CONSTRAINT [FK_TeamMember_ApplicationUser_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[ApplicationUser] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TeamMember] CHECK CONSTRAINT [FK_TeamMember_ApplicationUser_UserId]
GO
ALTER TABLE [dbo].[TeamMember]  WITH CHECK ADD  CONSTRAINT [FK_TeamMember_Team_TeamId] FOREIGN KEY([TeamId])
REFERENCES [dbo].[Team] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TeamMember] CHECK CONSTRAINT [FK_TeamMember_Team_TeamId]
GO
ALTER TABLE [dbo].[TradingSession]  WITH CHECK ADD  CONSTRAINT [FK_TradingSession_Episode_EpisodeId] FOREIGN KEY([EpisodeId])
REFERENCES [dbo].[Episode] ([Id])
GO
ALTER TABLE [dbo].[TradingSession] CHECK CONSTRAINT [FK_TradingSession_Episode_EpisodeId]
GO
ALTER TABLE [dbo].[TradingSession]  WITH CHECK ADD  CONSTRAINT [FK_TradingSession_Game_GameId] FOREIGN KEY([GameId])
REFERENCES [dbo].[Game] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TradingSession] CHECK CONSTRAINT [FK_TradingSession_Game_GameId]
GO
ALTER TABLE [dbo].[Transaction]  WITH CHECK ADD  CONSTRAINT [FK_Transaction_Equity_EquityId] FOREIGN KEY([EquityId])
REFERENCES [dbo].[Equity] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Transaction] CHECK CONSTRAINT [FK_Transaction_Equity_EquityId]
GO
ALTER TABLE [dbo].[Transaction]  WITH CHECK ADD  CONSTRAINT [FK_Transaction_TeamMember_TeamMemberId] FOREIGN KEY([TeamMemberId])
REFERENCES [dbo].[TeamMember] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Transaction] CHECK CONSTRAINT [FK_Transaction_TeamMember_TeamMemberId]
GO
ALTER TABLE [dbo].[Transaction]  WITH CHECK ADD  CONSTRAINT [FK_Transaction_TradingSession_TradingSessionId] FOREIGN KEY([TradingSessionId])
REFERENCES [dbo].[TradingSession] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Transaction] CHECK CONSTRAINT [FK_Transaction_TradingSession_TradingSessionId]
GO
ALTER TABLE [dbo].[Transaction]  WITH CHECK ADD  CONSTRAINT [FK_Transaction_TransactionReason_TransactionReasonId] FOREIGN KEY([TransactionReasonId])
REFERENCES [dbo].[TransactionReason] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Transaction] CHECK CONSTRAINT [FK_Transaction_TransactionReason_TransactionReasonId]
GO
