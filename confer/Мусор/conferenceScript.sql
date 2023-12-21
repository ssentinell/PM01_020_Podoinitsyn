
GO
/****** Object:  Database [020_Podoinitsyn_conference]    Script Date: 21.12.2023 3:28:26 ******/
CREATE DATABASE [020_Podoinitsyn_conference]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'020_Podoinitsyn_conference', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\020_Podoinitsyn_conference.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'020_Podoinitsyn_conference_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\020_Podoinitsyn_conference_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [020_Podoinitsyn_conference] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [020_Podoinitsyn_conference].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [020_Podoinitsyn_conference] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [020_Podoinitsyn_conference] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [020_Podoinitsyn_conference] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [020_Podoinitsyn_conference] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [020_Podoinitsyn_conference] SET ARITHABORT OFF 
GO
ALTER DATABASE [020_Podoinitsyn_conference] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [020_Podoinitsyn_conference] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [020_Podoinitsyn_conference] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [020_Podoinitsyn_conference] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [020_Podoinitsyn_conference] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [020_Podoinitsyn_conference] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [020_Podoinitsyn_conference] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [020_Podoinitsyn_conference] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [020_Podoinitsyn_conference] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [020_Podoinitsyn_conference] SET  DISABLE_BROKER 
GO
ALTER DATABASE [020_Podoinitsyn_conference] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [020_Podoinitsyn_conference] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [020_Podoinitsyn_conference] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [020_Podoinitsyn_conference] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [020_Podoinitsyn_conference] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [020_Podoinitsyn_conference] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [020_Podoinitsyn_conference] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [020_Podoinitsyn_conference] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [020_Podoinitsyn_conference] SET  MULTI_USER 
GO
ALTER DATABASE [020_Podoinitsyn_conference] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [020_Podoinitsyn_conference] SET DB_CHAINING OFF 
GO
ALTER DATABASE [020_Podoinitsyn_conference] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [020_Podoinitsyn_conference] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [020_Podoinitsyn_conference] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [020_Podoinitsyn_conference] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [020_Podoinitsyn_conference] SET QUERY_STORE = ON
GO
ALTER DATABASE [020_Podoinitsyn_conference] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [020_Podoinitsyn_conference]
GO
/****** Object:  Table [dbo].[City]    Script Date: 21.12.2023 3:28:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Flag] [binary](50) NULL,
	[PhotoPath] [nvarchar](200) NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 21.12.2023 3:28:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[ID] [int] NOT NULL,
	[Code] [nvarchar](3) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Name_Eng] [nvarchar](50) NULL,
	[Flag] [binary](50) NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Events]    Script Date: 21.12.2023 3:28:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Events](
	[ID] [int] NOT NULL,
	[Title] [nvarchar](300) NOT NULL,
	[Date] [date] NOT NULL,
	[Days] [nvarchar](2) NOT NULL,
	[City_ID] [int] NOT NULL,
	[Logo] [nvarchar](max) NULL,
 CONSTRAINT [PK_Events] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Jury]    Script Date: 21.12.2023 3:28:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Jury](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Mail] [nvarchar](100) NOT NULL,
	[Date_birth] [date] NOT NULL,
	[Country_ID] [int] NOT NULL,
	[Tel] [nvarchar](30) NOT NULL,
	[Direct] [nvarchar](100) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Photo] [nvarchar](max) NULL,
 CONSTRAINT [PK_Jury] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Moderators]    Script Date: 21.12.2023 3:28:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Moderators](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Direct] [nvarchar](100) NOT NULL,
	[Event] [nvarchar](200) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Photo] [nvarchar](max) NULL,
 CONSTRAINT [PK_Moderators] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Organizers]    Script Date: 21.12.2023 3:28:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Organizers](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Surname] [nvarchar](50) NOT NULL,
	[Patronymic] [nvarchar](50) NOT NULL,
	[Mail] [nvarchar](100) NOT NULL,
	[Date_birth] [date] NOT NULL,
	[Country_ID] [int] NOT NULL,
	[Tel] [nvarchar](30) NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Photo] [nvarchar](max) NULL,
	[Gender] [nvarchar](1) NOT NULL,
 CONSTRAINT [PK_Organizers] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Participants]    Script Date: 21.12.2023 3:28:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Participants](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Surname] [nvarchar](50) NOT NULL,
	[Patronymic] [nvarchar](50) NOT NULL,
	[Mail] [nvarchar](100) NOT NULL,
	[Date_birth] [date] NOT NULL,
	[Country_ID] [int] NOT NULL,
	[Tel] [nvarchar](30) NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Photo] [nvarchar](max) NULL,
	[Gender] [nvarchar](1) NOT NULL,
 CONSTRAINT [PK_participants] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1, N'Абаза', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (2, N'Абакан', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (3, N'Абдулино', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (4, N'Абинск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (5, N'Агидель', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (6, N'Агрыз', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (7, N'Адыгейск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (8, N'Азнакаево', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (9, N'Азов', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (10, N'Ак-Довурак', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (11, N'Аксай', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (12, N'Алагир', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (13, N'Алапаевск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (14, N'Алатырь', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (15, N'Алдан', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (16, N'Алейск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (17, N'Александров', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (18, N'Александровск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (19, N'Александровск-Сахалинский', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (20, N'Алексеевка', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (21, N'Алексин', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (22, N'Алзамай', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (23, N'Алупкане призн.', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (24, N'Алуштане призн.', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (25, N'Альметьевск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (26, N'Амурск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (27, N'Анадырь', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (28, N'Анапа', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (29, N'Ангарск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (30, N'Андреаполь', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (31, N'Анжеро-Судженск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (32, N'Анива', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (33, N'Апатиты', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (34, N'Апрелевка', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (35, N'Апшеронск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (36, N'Арамиль', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (37, N'Аргун', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (38, N'Ардатов', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (39, N'Ардон', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (40, N'Арзамас', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (41, N'Аркадак', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (42, N'Армавир', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (43, N'Армянскне призн.', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (44, N'Арсеньев', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (45, N'Арск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (46, N'Артём', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (47, N'Артёмовск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (48, N'Артёмовский', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (49, N'Архангельск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (50, N'Асбест', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (51, N'Асино', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (52, N'Астрахань', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (53, N'Аткарск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (54, N'Ахтубинск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (55, N'Ачинск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (56, N'Аша', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (57, N'Бабаево', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (58, N'Бабушкин', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (59, N'Бавлы', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (60, N'Багратионовск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (61, N'Байкальск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (62, N'Баймак', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (63, N'Бакал', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (64, N'Баксан', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (65, N'Балабаново', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (66, N'Балаково', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (67, N'Балахна', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (68, N'Балашиха', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (69, N'Балашов', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (70, N'Балей', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (71, N'Балтийск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (72, N'Барабинск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (73, N'Барнаул', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (74, N'Барыш', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (75, N'Батайск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (76, N'Бахчисарайне призн.', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (77, N'Бежецк', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (78, N'Белая Калитва', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (79, N'Белая Холуница', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (80, N'Белгород', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (81, N'Белебей', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (82, N'Белёв', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (83, N'Белинский', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (84, N'Белово', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (85, N'Белогорск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (86, N'Белогорскне призн.', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (87, N'Белозерск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (88, N'Белокуриха', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (89, N'Беломорск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (90, N'Белоозёрский', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (91, N'Белорецк', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (92, N'Белореченск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (93, N'Белоусово', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (94, N'Белоярский', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (95, N'Белый', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (96, N'Бердск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (97, N'Березники', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (98, N'Берёзовский', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (99, N'Берёзовский', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (100, N'Беслан', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (101, N'Бийск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (102, N'Бикин', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (103, N'Билибино', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (104, N'Биробиджан', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (105, N'Бирск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (106, N'Бирюсинск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (107, N'Бирюч', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (108, N'Благовещенск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (109, N'Благовещенск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (110, N'Благодарный', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (111, N'Бобров', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (112, N'Богданович', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (113, N'Богородицк', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (114, N'Богородск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (115, N'Боготол', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (116, N'Богучар', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (117, N'Бодайбо', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (118, N'Бокситогорск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (119, N'Болгар', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (120, N'Бологое', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (121, N'Болотное', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (122, N'Болохово', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (123, N'Болхов', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (124, N'Большой Камень', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (125, N'Бор', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (126, N'Борзя', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (127, N'Борисоглебск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (128, N'Боровичи', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (129, N'Боровск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (130, N'Бородино', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (131, N'Братск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (132, N'Бронницы', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (133, N'Брянск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (134, N'Бугульма', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (135, N'Бугуруслан', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (136, N'Будённовск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (137, N'Бузулук', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (138, N'Буинск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (139, N'Буй', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (140, N'Буйнакск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (141, N'Бутурлиновка', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (142, N'Валдай', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (143, N'Валуйки', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (144, N'Велиж', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (145, N'Великие Луки', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (146, N'Великий Новгород', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (147, N'Великий Устюг', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (148, N'Вельск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (149, N'Венёв', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (150, N'Верещагино', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (151, N'Верея', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (152, N'Верхнеуральск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (153, N'Верхний Тагил', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (154, N'Верхний Уфалей', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (155, N'Верхняя Пышма', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (156, N'Верхняя Салда', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (157, N'Верхняя Тура', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (158, N'Верхотурье', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (159, N'Верхоянск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (160, N'Весьегонск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (161, N'Ветлуга', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (162, N'Видное', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (163, N'Вилюйск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (164, N'Вилючинск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (165, N'Вихоревка', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (166, N'Вичуга', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (167, N'Владивосток', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (168, N'Владикавказ', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (169, N'Владимир', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (170, N'Волгоград', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (171, N'Волгодонск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (172, N'Волгореченск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (173, N'Волжск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (174, N'Волжский', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (175, N'Вологда', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (176, N'Володарск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (177, N'Волоколамск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (178, N'Волосово', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (179, N'Волхов', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (180, N'Волчанск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (181, N'Вольск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (182, N'Воркута', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (183, N'Воронеж', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (184, N'Ворсма', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (185, N'Воскресенск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (186, N'Воткинск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (187, N'Всеволожск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (188, N'Вуктыл', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (189, N'Выборг', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (190, N'Выкса', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (191, N'Высоковск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (192, N'Высоцк', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (193, N'Вытегра', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (194, N'Вышний Волочёк', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (195, N'Вяземский', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (196, N'Вязники', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (197, N'Вязьма', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (198, N'Вятские Поляны', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (199, N'Гаврилов Посад', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (200, N'Гаврилов-Ям', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (201, N'Гагарин', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (202, N'Гаджиево', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (203, N'Гай', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (204, N'Галич', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (205, N'Гатчина', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (206, N'Гвардейск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (207, N'Гдов', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (208, N'Геленджик', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (209, N'Георгиевск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (210, N'Глазов', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (211, N'Голицыно', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (212, N'Горбатов', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (213, N'Горно-Алтайск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (214, N'Горнозаводск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (215, N'Горняк', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (216, N'Городец', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (217, N'Городище', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (218, N'Городовиковск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (219, N'Гороховец', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (220, N'Горячий Ключ', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (221, N'Грайворон', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (222, N'Гремячинск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (223, N'Грозный', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (224, N'Грязи', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (225, N'Грязовец', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (226, N'Губаха', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (227, N'Губкин', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (228, N'Губкинский', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (229, N'Гудермес', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (230, N'Гуково', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (231, N'Гулькевичи', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (232, N'Гурьевск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (233, N'Гурьевск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (234, N'Гусев', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (235, N'Гусиноозёрск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (236, N'Гусь-Хрустальный', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (237, N'Давлеканово', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (238, N'Дагестанские Огни', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (239, N'Далматово', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (240, N'Дальнегорск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (241, N'Дальнереченск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (242, N'Данилов', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (243, N'Данков', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (244, N'Дегтярск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (245, N'Дедовск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (246, N'Демидов', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (247, N'Дербент', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (248, N'Десногорск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (249, N'Джанкойне призн.', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (250, N'Дзержинск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (251, N'Дзержинский', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (252, N'Дивногорск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (253, N'Дигора', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (254, N'Димитровград', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (255, N'Дмитриев', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (256, N'Дмитров', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (257, N'Дмитровск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (258, N'Дно', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (259, N'Добрянка', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (260, N'Долгопрудный', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (261, N'Долинск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (262, N'Домодедово', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (263, N'Донецк', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (264, N'Донской', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (265, N'Дорогобуж', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (266, N'Дрезна', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (267, N'Дубна', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (268, N'Дубовка', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (269, N'Дудинка', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (270, N'Духовщина', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (271, N'Дюртюли', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (272, N'Дятьково', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (273, N'Евпаторияне призн.', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (274, N'Егорьевск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (275, N'Ейск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (276, N'Екатеринбург', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (277, N'Елабуга', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (278, N'Елец', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (279, N'Елизово', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (280, N'Ельня', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (281, N'Еманжелинск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (282, N'Емва', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (283, N'Енисейск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (284, N'Ермолино', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (285, N'Ершов', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (286, N'Ессентуки', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (287, N'Ефремов', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (288, N'Железноводск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (289, N'Железногорск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (290, N'Железногорск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (291, N'Железногорск-Илимский', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (292, N'Жердевка', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (293, N'Жигулёвск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (294, N'Жиздра', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (295, N'Жирновск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (296, N'Жуков', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (297, N'Жуковка', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (298, N'Жуковский', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (299, N'Завитинск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (300, N'Заводоуковск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (301, N'Заволжск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (302, N'Заволжье', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (303, N'Задонск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (304, N'Заинск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (305, N'Закаменск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (306, N'Заозёрный', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (307, N'Заозёрск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (308, N'Западная Двина', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (309, N'Заполярный', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (310, N'Зарайск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (311, N'Заречный', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (312, N'Заречный', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (313, N'Заринск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (314, N'Звенигово', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (315, N'Звенигород', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (316, N'Зверево', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (317, N'Зеленогорск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (318, N'Зеленоградск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (319, N'Зеленодольск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (320, N'Зеленокумск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (321, N'Зерноград', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (322, N'Зея', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (323, N'Зима', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (324, N'Златоуст', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (325, N'Злынка', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (326, N'Змеиногорск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (327, N'Знаменск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (328, N'Зубцов', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (329, N'Зуевка', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (330, N'Ивангород', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (331, N'Иваново', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (332, N'Ивантеевка', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (333, N'Ивдель', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (334, N'Игарка', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (335, N'Ижевск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (336, N'Избербаш', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (337, N'Изобильный', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (338, N'Иланский', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (339, N'Инза', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (340, N'Иннополис', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (341, N'Инсар', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (342, N'Инта', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (343, N'Ипатово', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (344, N'Ирбит', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (345, N'Иркутск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (346, N'Исилькуль', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (347, N'Искитим', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (348, N'Истра', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (349, N'Ишим', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (350, N'Ишимбай', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (351, N'Йошкар-Ола', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (352, N'Кадников', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (353, N'Казань', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (354, N'Калач', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (355, N'Калач-на-Дону', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (356, N'Калачинск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (357, N'Калининград', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (358, N'Калининск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (359, N'Калтан', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (360, N'Калуга', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (361, N'Калязин', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (362, N'Камбарка', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (363, N'Каменка', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (364, N'Каменногорск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (365, N'Каменск-Уральский', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (366, N'Каменск-Шахтинский', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (367, N'Камень-на-Оби', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (368, N'Камешково', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (369, N'Камызяк', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (370, N'Камышин', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (371, N'Камышлов', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (372, N'Канаш', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (373, N'Кандалакша', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (374, N'Канск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (375, N'Карабаново', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (376, N'Карабаш', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (377, N'Карабулак', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (378, N'Карасук', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (379, N'Карачаевск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (380, N'Карачев', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (381, N'Каргат', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (382, N'Каргополь', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (383, N'Карпинск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (384, N'Карталы', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (385, N'Касимов', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (386, N'Касли', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (387, N'Каспийск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (388, N'Катав-Ивановск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (389, N'Катайск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (390, N'Качканар', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (391, N'Кашин', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (392, N'Кашира', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (393, N'Кедровый', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (394, N'Кемерово', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (395, N'Кемь', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (396, N'Керчьне призн.', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (397, N'Кизел', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (398, N'Кизилюрт', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (399, N'Кизляр', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (400, N'Кимовск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (401, N'Кимры', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (402, N'Кингисепп', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (403, N'Кинель', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (404, N'Кинешма', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (405, N'Киреевск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (406, N'Киренск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (407, N'Киржач', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (408, N'Кириллов', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (409, N'Кириши', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (410, N'Киров', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (411, N'Киров', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (412, N'Кировград', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (413, N'Кирово-Чепецк', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (414, N'Кировск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (415, N'Кировск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (416, N'Кирс', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (417, N'Кирсанов', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (418, N'Киселёвск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (419, N'Кисловодск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (420, N'Клин', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (421, N'Клинцы', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (422, N'Княгинино', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (423, N'Ковдор', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (424, N'Ковров', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (425, N'Ковылкино', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (426, N'Когалым', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (427, N'Кодинск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (428, N'Козельск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (429, N'Козловка', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (430, N'Козьмодемьянск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (431, N'Кола', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (432, N'Кологрив', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (433, N'Коломна', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (434, N'Колпашево', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (435, N'Кольчугино', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (436, N'Коммунар', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (437, N'Комсомольск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (438, N'Комсомольск-на-Амуре', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (439, N'Конаково', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (440, N'Кондопога', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (441, N'Кондрово', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (442, N'Константиновск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (443, N'Копейск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (444, N'Кораблино', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (445, N'Кореновск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (446, N'Коркино', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (447, N'Королёв', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (448, N'Короча', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (449, N'Корсаков', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (450, N'Коряжма', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (451, N'Костерёво', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (452, N'Костомукша', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (453, N'Кострома', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (454, N'Котельники', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (455, N'Котельниково', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (456, N'Котельнич', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (457, N'Котлас', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (458, N'Котово', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (459, N'Котовск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (460, N'Кохма', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (461, N'Красавино', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (462, N'Красноармейск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (463, N'Красноармейск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (464, N'Красновишерск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (465, N'Красногорск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (466, N'Краснодар', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (467, N'Краснозаводск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (468, N'Краснознаменск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (469, N'Краснознаменск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (470, N'Краснокаменск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (471, N'Краснокамск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (472, N'Красноперекопскне призн.', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (473, N'Краснослободск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (474, N'Краснослободск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (475, N'Краснотурьинск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (476, N'Красноуральск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (477, N'Красноуфимск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (478, N'Красноярск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (479, N'Красный Кут', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (480, N'Красный Сулин', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (481, N'Красный Холм', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (482, N'Кремёнки', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (483, N'Кропоткин', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (484, N'Крымск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (485, N'Кстово', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (486, N'Кубинка', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (487, N'Кувандык', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (488, N'Кувшиново', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (489, N'Кудрово', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (490, N'Кудымкар', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (491, N'Кузнецк', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (492, N'Куйбышев', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (493, N'Кукмор', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (494, N'Кулебаки', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (495, N'Кумертау', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (496, N'Кунгур', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (497, N'Купино', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (498, N'Курган', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (499, N'Курганинск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (500, N'Курильск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (501, N'Курлово', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (502, N'Куровское', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (503, N'Курск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (504, N'Куртамыш', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (505, N'Курчалой', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (506, N'Курчатов', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (507, N'Куса', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (508, N'Кушва', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (509, N'Кызыл', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (510, N'Кыштым', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (511, N'Кяхта', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (512, N'Лабинск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (513, N'Лабытнанги', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (514, N'Лагань', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (515, N'Ладушкин', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (516, N'Лаишево', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (517, N'Лакинск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (518, N'Лангепас', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (519, N'Лахденпохья', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (520, N'Лебедянь', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (521, N'Лениногорск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (522, N'Ленинск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (523, N'Ленинск-Кузнецкий', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (524, N'Ленск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (525, N'Лермонтов', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (526, N'Лесной', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (527, N'Лесозаводск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (528, N'Лесосибирск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (529, N'Ливны', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (530, N'Ликино-Дулёво', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (531, N'Липецк', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (532, N'Липки', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (533, N'Лиски', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (534, N'Лихославль', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (535, N'Лобня', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (536, N'Лодейное Поле', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (537, N'Лосино-Петровский', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (538, N'Луга', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (539, N'Луза', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (540, N'Лукоянов', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (541, N'Луховицы', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (542, N'Лысково', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (543, N'Лысьва', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (544, N'Лыткарино', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (545, N'Льгов', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (546, N'Любань', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (547, N'Люберцы', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (548, N'Любим', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (549, N'Людиново', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (550, N'Лянтор', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (551, N'Магадан', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (552, N'Магас', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (553, N'Магнитогорск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (554, N'Майкоп', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (555, N'Майский', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (556, N'Макаров', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (557, N'Макарьев', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (558, N'Макушино', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (559, N'Малая Вишера', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (560, N'Малгобек', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (561, N'Малмыж', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (562, N'Малоархангельск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (563, N'Малоярославец', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (564, N'Мамадыш', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (565, N'Мамоново', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (566, N'Мантурово', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (567, N'Мариинск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (568, N'Мариинский Посад', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (569, N'Маркс', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (570, N'Махачкала', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (571, N'Мглин', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (572, N'Мегион', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (573, N'Медвежьегорск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (574, N'Медногорск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (575, N'Медынь', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (576, N'Межгорье', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (577, N'Междуреченск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (578, N'Мезень', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (579, N'Меленки', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (580, N'Мелеуз', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (581, N'Менделеевск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (582, N'Мензелинск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (583, N'Мещовск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (584, N'Миасс', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (585, N'Микунь', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (586, N'Миллерово', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (587, N'Минеральные Воды', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (588, N'Минусинск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (589, N'Миньяр', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (590, N'Мирный', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (591, N'Мирный', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (592, N'Михайлов', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (593, N'Михайловка', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (594, N'Михайловск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (595, N'Михайловск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (596, N'Мичуринск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (597, N'Могоча', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (598, N'Можайск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (599, N'Можга', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (600, N'Моздок', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (601, N'Мончегорск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (602, N'Морозовск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (603, N'Моршанск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (604, N'Мосальск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (605, N'Москва', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (606, N'Муравленко', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (607, N'Мураши', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (608, N'Мурино', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (609, N'Мурманск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (610, N'Муром', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (611, N'Мценск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (612, N'Мыски', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (613, N'Мытищи', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (614, N'Мышкин', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (615, N'Набережные Челны', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (616, N'Навашино', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (617, N'Наволоки', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (618, N'Надым', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (619, N'Назарово', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (620, N'Назрань', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (621, N'Называевск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (622, N'Нальчик', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (623, N'Нариманов', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (624, N'Наро-Фоминск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (625, N'Нарткала', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (626, N'Нарьян-Мар', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (627, N'Находка', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (628, N'Невель', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (629, N'Невельск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (630, N'Невинномысск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (631, N'Невьянск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (632, N'Нелидово', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (633, N'Неман', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (634, N'Нерехта', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (635, N'Нерчинск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (636, N'Нерюнгри', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (637, N'Нестеров', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (638, N'Нефтегорск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (639, N'Нефтекамск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (640, N'Нефтекумск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (641, N'Нефтеюганск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (642, N'Нея', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (643, N'Нижневартовск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (644, N'Нижнекамск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (645, N'Нижнеудинск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (646, N'Нижние Серги', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (647, N'Нижний Ломов', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (648, N'Нижний Новгород', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (649, N'Нижний Тагил', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (650, N'Нижняя Салда', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (651, N'Нижняя Тура', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (652, N'Николаевск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (653, N'Николаевск-на-Амуре', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (654, N'Никольск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (655, N'Никольск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (656, N'Никольское', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (657, N'Новая Ладога', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (658, N'Новая Ляля', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (659, N'Новоалександровск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (660, N'Новоалтайск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (661, N'Новоаннинский', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (662, N'Нововоронеж', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (663, N'Новодвинск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (664, N'Новозыбков', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (665, N'Новокубанск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (666, N'Новокузнецк', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (667, N'Новокуйбышевск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (668, N'Новомичуринск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (669, N'Новомосковск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (670, N'Новопавловск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (671, N'Новоржев', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (672, N'Новороссийск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (673, N'Новосибирск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (674, N'Новосиль', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (675, N'Новосокольники', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (676, N'Новотроицк', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (677, N'Новоузенск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (678, N'Новоульяновск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (679, N'Новоуральск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (680, N'Новохопёрск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (681, N'Новочебоксарск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (682, N'Новочеркасск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (683, N'Новошахтинск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (684, N'Новый Оскол', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (685, N'Новый Уренгой', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (686, N'Ногинск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (687, N'Нолинск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (688, N'Норильск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (689, N'Ноябрьск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (690, N'Нурлат', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (691, N'Нытва', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (692, N'Нюрба', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (693, N'Нягань', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (694, N'Нязепетровск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (695, N'Няндома', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (696, N'Облучье', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (697, N'Обнинск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (698, N'Обоянь', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (699, N'Обь', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (700, N'Одинцово', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (701, N'Озёрск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (702, N'Озёрск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (703, N'Озёры', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (704, N'Октябрьск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (705, N'Октябрьский', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (706, N'Окуловка', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (707, N'Олёкминск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (708, N'Оленегорск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (709, N'Олонец', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (710, N'Омск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (711, N'Омутнинск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (712, N'Онега', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (713, N'Опочка', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (714, N'Орёл', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (715, N'Оренбург', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (716, N'Орехово-Зуево', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (717, N'Орлов', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (718, N'Орск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (719, N'Оса', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (720, N'Осинники', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (721, N'Осташков', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (722, N'Остров', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (723, N'Островной', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (724, N'Острогожск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (725, N'Отрадное', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (726, N'Отрадный', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (727, N'Оха', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (728, N'Оханск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (729, N'Очёр', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (730, N'Павлово', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (731, N'Павловск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (732, N'Павловский Посад', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (733, N'Палласовка', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (734, N'Партизанск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (735, N'Певек', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (736, N'Пенза', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (737, N'Первомайск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (738, N'Первоуральск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (739, N'Перевоз', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (740, N'Пересвет', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (741, N'Переславль-Залесский', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (742, N'Пермь', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (743, N'Пестово', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (744, N'Петров Вал', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (745, N'Петровск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (746, N'Петровск-Забайкальский', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (747, N'Петрозаводск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (748, N'Петропавловск-Камчатский', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (749, N'Петухово', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (750, N'Петушки', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (751, N'Печора', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (752, N'Печоры', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (753, N'Пикалёво', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (754, N'Пионерский', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (755, N'Питкяранта', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (756, N'Плавск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (757, N'Пласт', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (758, N'Плёс', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (759, N'Поворино', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (760, N'Подольск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (761, N'Подпорожье', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (762, N'Покачи', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (763, N'Покров', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (764, N'Покровск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (765, N'Полевской', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (766, N'Полесск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (767, N'Полысаево', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (768, N'Полярные Зори', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (769, N'Полярный', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (770, N'Поронайск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (771, N'Порхов', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (772, N'Похвистнево', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (773, N'Почеп', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (774, N'Починок', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (775, N'Пошехонье', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (776, N'Правдинск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (777, N'Приволжск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (778, N'Приморск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (779, N'Приморск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (780, N'Приморско-Ахтарск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (781, N'Приозерск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (782, N'Прокопьевск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (783, N'Пролетарск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (784, N'Протвино', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (785, N'Прохладный', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (786, N'Псков', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (787, N'Пугачёв', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (788, N'Пудож', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (789, N'Пустошка', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (790, N'Пучеж', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (791, N'Пушкино', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (792, N'Пущино', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (793, N'Пыталово', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (794, N'Пыть-Ях', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (795, N'Пятигорск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (796, N'Радужный', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (797, N'Радужный', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (798, N'Райчихинск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (799, N'Раменское', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (800, N'Рассказово', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (801, N'Ревда', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (802, N'Реж', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (803, N'Реутов', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (804, N'Ржев', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (805, N'Родники', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (806, N'Рославль', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (807, N'Россошь', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (808, N'Ростов-на-Дону', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (809, N'Ростов', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (810, N'Рошаль', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (811, N'Ртищево', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (812, N'Рубцовск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (813, N'Рудня', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (814, N'Руза', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (815, N'Рузаевка', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (816, N'Рыбинск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (817, N'Рыбное', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (818, N'Рыльск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (819, N'Ряжск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (820, N'Рязань', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (821, N'Сакине призн.', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (822, N'Салават', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (823, N'Салаир', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (824, N'Салехард', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (825, N'Сальск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (826, N'Самара', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (827, N'Санкт-Петербург', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (828, N'Саранск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (829, N'Сарапул', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (830, N'Саратов', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (831, N'Саров', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (832, N'Сасово', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (833, N'Сатка', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (834, N'Сафоново', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (835, N'Саяногорск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (836, N'Саянск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (837, N'Светлогорск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (838, N'Светлоград', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (839, N'Светлый', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (840, N'Светогорск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (841, N'Свирск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (842, N'Свободный', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (843, N'Себеж', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (844, N'Севастопольне призн.', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (845, N'Северо-Курильск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (846, N'Северобайкальск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (847, N'Северодвинск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (848, N'Североморск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (849, N'Североуральск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (850, N'Северск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (851, N'Севск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (852, N'Сегежа', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (853, N'Сельцо', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (854, N'Семёнов', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (855, N'Семикаракорск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (856, N'Семилуки', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (857, N'Сенгилей', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (858, N'Серафимович', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (859, N'Сергач', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (860, N'Сергиев Посад', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (861, N'Сердобск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (862, N'Серов', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (863, N'Серпухов', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (864, N'Сертолово', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (865, N'Сибай', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (866, N'Сим', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (867, N'Симферопольне призн.', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (868, N'Сковородино', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (869, N'Скопин', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (870, N'Славгород', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (871, N'Славск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (872, N'Славянск-на-Кубани', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (873, N'Сланцы', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (874, N'Слободской', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (875, N'Слюдянка', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (876, N'Смоленск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (877, N'Снежинск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (878, N'Снежногорск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (879, N'Собинка', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (880, N'Советск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (881, N'Советск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (882, N'Советск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (883, N'Советская Гавань', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (884, N'Советский', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (885, N'Сокол', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (886, N'Солигалич', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (887, N'Соликамск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (888, N'Солнечногорск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (889, N'Соль-Илецк', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (890, N'Сольвычегодск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (891, N'Сольцы', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (892, N'Сорочинск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (893, N'Сорск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (894, N'Сортавала', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (895, N'Сосенский', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (896, N'Сосновка', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (897, N'Сосновоборск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (898, N'Сосновый Бор', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (899, N'Сосногорск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (900, N'Сочи', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (901, N'Спас-Деменск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (902, N'Спас-Клепики', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (903, N'Спасск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (904, N'Спасск-Дальний', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (905, N'Спасск-Рязанский', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (906, N'Среднеколымск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (907, N'Среднеуральск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (908, N'Сретенск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (909, N'Ставрополь', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (910, N'Старая Купавна', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (911, N'Старая Русса', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (912, N'Старица', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (913, N'Стародуб', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (914, N'Старый Крымне призн.', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (915, N'Старый Оскол', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (916, N'Стерлитамак', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (917, N'Стрежевой', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (918, N'Строитель', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (919, N'Струнино', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (920, N'Ступино', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (921, N'Суворов', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (922, N'Судакне призн.', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (923, N'Суджа', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (924, N'Судогда', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (925, N'Суздаль', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (926, N'Сунжа', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (927, N'Суоярви', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (928, N'Сураж', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (929, N'Сургут', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (930, N'Суровикино', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (931, N'Сурск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (932, N'Сусуман', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (933, N'Сухиничи', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (934, N'Сухой Лог', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (935, N'Сызрань', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (936, N'Сыктывкар', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (937, N'Сысерть', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (938, N'Сычёвка', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (939, N'Сясьстрой', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (940, N'Тавда', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (941, N'Таганрог', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (942, N'Тайга', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (943, N'Тайшет', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (944, N'Талдом', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (945, N'Талица', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (946, N'Тамбов', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (947, N'Тара', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (948, N'Тарко-Сале', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (949, N'Таруса', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (950, N'Татарск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (951, N'Таштагол', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (952, N'Тверь', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (953, N'Теберда', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (954, N'Тейково', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (955, N'Темников', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (956, N'Темрюк', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (957, N'Терек', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (958, N'Тетюши', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (959, N'Тимашёвск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (960, N'Тихвин', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (961, N'Тихорецк', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (962, N'Тобольск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (963, N'Тогучин', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (964, N'Тольятти', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (965, N'Томари', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (966, N'Томмот', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (967, N'Томск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (968, N'Топки', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (969, N'Торжок', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (970, N'Торопец', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (971, N'Тосно', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (972, N'Тотьма', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (973, N'Трёхгорный', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (974, N'Троицк', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (975, N'Трубчевск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (976, N'Туапсе', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (977, N'Туймазы', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (978, N'Тула', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (979, N'Тулун', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (980, N'Туран', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (981, N'Туринск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (982, N'Тутаев', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (983, N'Тында', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (984, N'Тырныауз', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (985, N'Тюкалинск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (986, N'Тюмень', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (987, N'Уварово', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (988, N'Углегорск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (989, N'Углич', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (990, N'Удачный', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (991, N'Удомля', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (992, N'Ужур', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (993, N'Узловая', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (994, N'Улан-Удэ', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (995, N'Ульяновск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (996, N'Унеча', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (997, N'Урай', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (998, N'Урень', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (999, N'Уржум', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1000, N'Урус-Мартан', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1001, N'Урюпинск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1002, N'Усинск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1003, N'Усмань', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1004, N'Усолье-Сибирское', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1005, N'Усолье', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1006, N'Уссурийск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1007, N'Усть-Джегута', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1008, N'Усть-Илимск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1009, N'Усть-Катав', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1010, N'Усть-Кут', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1011, N'Усть-Лабинск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1012, N'Устюжна', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1013, N'Уфа', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1014, N'Ухта', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1015, N'Учалы', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1016, N'Уяр', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1017, N'Фатеж', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1018, N'Феодосияне призн.', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1019, N'Фокино', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1020, N'Фокино', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1021, N'Фролово', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1022, N'Фрязино', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1023, N'Фурманов', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1024, N'Хабаровск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1025, N'Хадыженск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1026, N'Ханты-Мансийск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1027, N'Харабали', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1028, N'Харовск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1029, N'Хасавюрт', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1030, N'Хвалынск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1031, N'Хилок', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1032, N'Химки', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1033, N'Холм', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1034, N'Холмск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1035, N'Хотьково', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1036, N'Цивильск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1037, N'Цимлянск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1038, N'Циолковский', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1039, N'Чадан', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1040, N'Чайковский', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1041, N'Чапаевск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1042, N'Чаплыгин', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1043, N'Чебаркуль', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1044, N'Чебоксары', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1045, N'Чегем', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1046, N'Чекалин', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1047, N'Челябинск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1048, N'Чердынь', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1049, N'Черемхово', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1050, N'Черепаново', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1051, N'Череповец', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1052, N'Черкесск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1053, N'Чёрмоз', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1054, N'Черноголовка', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1055, N'Черногорск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1056, N'Чернушка', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1057, N'Черняховск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1058, N'Чехов', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1059, N'Чистополь', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1060, N'Чита', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1061, N'Чкаловск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1062, N'Чудово', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1063, N'Чулым', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1064, N'Чусовой', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1065, N'Чухлома', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1066, N'Шагонар', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1067, N'Шадринск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1068, N'Шали', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1069, N'Шарыпово', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1070, N'Шарья', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1071, N'Шатура', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1072, N'Шахты', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1073, N'Шахунья', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1074, N'Шацк', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1075, N'Шебекино', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1076, N'Шелехов', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1077, N'Шенкурск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1078, N'Шилка', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1079, N'Шимановск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1080, N'Шиханы', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1081, N'Шлиссельбург', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1082, N'Шумерля', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1083, N'Шумиха', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1084, N'Шуя', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1085, N'Щёкино', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1086, N'Щёлкиноне призн.', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1087, N'Щёлково', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1088, N'Щигры', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1089, N'Щучье', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1090, N'Электрогорск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1091, N'Электросталь', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1092, N'Электроугли', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1093, N'Элиста', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1094, N'Энгельс', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1095, N'Эртиль', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1096, N'Югорск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1097, N'Южа', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1098, N'Южно-Сахалинск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1099, N'Южно-Сухокумск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1100, N'Южноуральск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1101, N'Юрга', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1102, N'Юрьев-Польский', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1103, N'Юрьевец', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1104, N'Юрюзань', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1105, N'Юхнов', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1106, N'Ядрин', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1107, N'Якутск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1108, N'Ялтане призн.', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1109, N'Ялуторовск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1110, N'Янаул', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1111, N'Яранск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1112, N'Яровое', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1113, N'Ярославль', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1114, N'Ярцево', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1115, N'Ясногорск', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1116, N'Ясный', NULL, NULL)
GO
INSERT [dbo].[City] ([ID], [Name], [Flag], [PhotoPath]) VALUES (1117, N'Яхрома', NULL, NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (4, N'AF', N'Афганистан', N'Afghanistan', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (8, N'AL', N'Албания', N'Albania', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (10, N'AQ', N'Антарктида', N'Antarctica', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (12, N'DZ', N'Алжир', N'Algeria', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (16, N'AS', N'Американское Самоа', N'American Samoa', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (20, N'AD', N'Андорра', N'Andorra', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (24, N'AO', N'Ангола', N'Angola', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (28, N'AG', N'Антигуа и Барбуда', N'Antigua and Barbuda', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (31, N'AZ', N'Азербайджан', N'Azerbaijan', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (32, N'AR', N'Аргентина', N'Argentina', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (36, N'AU', N'Австралия', N'Australia', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (40, N'AT', N'Австрия', N'Austria', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (44, N'BS', N'Багамы', N'Bahamas', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (48, N'BH', N'Бахрейн', N'Bahrain', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (50, N'BD', N'Бангладеш', N'Bangladesh', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (51, N'AM', N'Армения', N'Armenia', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (52, N'BB', N'Барбадос', N'Barbados', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (56, N'BE', N'Бельгия', N'Belgium', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (60, N'BM', N'Бермуды', N'Bermuda', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (64, N'BT', N'Бутан', N'Bhutan', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (68, N'BO', N'Боливия, Многонациональное Государство', N'Bolivia, plurinational state of', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (70, N'BA', N'Босния и Герцеговина', N'Bosnia and Herzegovina', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (72, N'BW', N'Ботсвана', N'Botswana', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (74, N'BV', N'Остров Буве', N'Bouvet Island', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (76, N'BR', N'Бразилия', N'Brazil', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (84, N'BZ', N'Белиз', N'Belize', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (86, N'IO', N'Британская территория в Индийском океане', N'British Indian Ocean Territory', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (90, N'SB', N'Соломоновы острова', N'Solomon Islands', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (92, N'VG', N'Виргинские острова, Британские', N'Virgin Islands, British', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (96, N'BN', N'Бруней-Даруссалам', N'Brunei Darussalam', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (100, N'BG', N'Болгария', N'Bulgaria', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (104, N'MM', N'Мьянма', N'Myanmar', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (108, N'BI', N'Бурунди', N'Burundi', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (112, N'BY', N'Беларусь', N'Belarus', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (116, N'KH', N'Камбоджа', N'Cambodia', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (120, N'CM', N'Камерун', N'Cameroon', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (124, N'CA', N'Канада', N'Canada', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (132, N'CV', N'Кабо-Верде', N'Cape Verde', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (136, N'KY', N'Острова Кайман', N'Cayman Islands', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (140, N'CF', N'Центрально-Африканская Республика', N'Central African Republic', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (144, N'LK', N'Шри-Ланка', N'Sri Lanka', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (148, N'TD', N'Чад', N'Chad', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (152, N'CL', N'Чили', N'Chile', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (156, N'CN', N'Китай', N'China', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (158, N'TW', N'Тайвань (Китай)', N'Taiwan, Province of China', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (162, N'CX', N'Остров Рождества', N'Christmas Island', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (166, N'CC', N'Кокосовые (Килинг) острова', N'Cocos (Keeling) Islands', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (170, N'CO', N'Колумбия', N'Colombia', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (174, N'KM', N'Коморы', N'Comoros', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (175, N'YT', N'Майотта', N'Mayotte', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (178, N'CG', N'Конго', N'Congo', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (180, N'CD', N'Конго, Демократическая Республика', N'Congo, Democratic Republic of the', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (184, N'CK', N'Острова Кука', N'Cook Islands', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (188, N'CR', N'Коста-Рика', N'Costa Rica', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (191, N'HR', N'Хорватия', N'Croatia', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (192, N'CU', N'Куба', N'Cuba', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (196, N'CY', N'Кипр', N'Cyprus', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (203, N'CZ', N'Чешская Республика', N'Czech Republic', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (204, N'BJ', N'Бенин', N'Benin', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (208, N'DK', N'Дания', N'Denmark', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (212, N'DM', N'Доминика', N'Dominica', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (214, N'DO', N'Доминиканская Республика', N'Dominican Republic', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (218, N'EC', N'Эквадор', N'Ecuador', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (222, N'SV', N'Эль-Сальвадор', N'El Salvador', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (226, N'GQ', N'Экваториальная Гвинея', N'Equatorial Guinea', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (231, N'ET', N'Эфиопия', N'Ethiopia', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (232, N'ER', N'Эритрея', N'Eritrea', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (233, N'EE', N'Эстония', N'Estonia', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (234, N'FO', N'Фарерские острова', N'Faroe Islands', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (238, N'FK', N'Фолклендские острова (Мальвинские)', N'Falkland Islands (Malvinas)', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (239, N'GS', N'Южная Джорджия и Южные Сандвичевы острова', N'South Georgia and the South Sandwich Islands', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (242, N'FJ', N'Фиджи', N'Fiji', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (246, N'FI', N'Финляндия', N'Finland', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (248, N'AX', N'Эландские острова', N'Åland Islands', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (250, N'FR', N'Франция', N'France', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (254, N'GF', N'Французская Гвиана', N'French Guiana', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (258, N'PF', N'Французская Полинезия', N'French Polynesia', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (260, N'TF', N'Французские Южные территории', N'French Southern Territories', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (262, N'DJ', N'Джибути', N'Djibouti', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (266, N'GA', N'Габон', N'Gabon', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (268, N'GE', N'Грузия', N'Georgia', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (270, N'GM', N'Гамбия', N'Gambia', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (275, N'PS', N'Палестинская территория, оккупированная', N'Palestinian Territory, Occupied', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (276, N'DE', N'Германия', N'Germany', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (288, N'GH', N'Гана', N'Ghana', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (292, N'GI', N'Гибралтар', N'Gibraltar', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (296, N'KI', N'Кирибати', N'Kiribati', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (300, N'GR', N'Греция', N'Greece', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (304, N'GL', N'Гренландия', N'Greenland', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (308, N'GD', N'Гренада', N'Grenada', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (312, N'GP', N'Гваделупа', N'Guadeloupe', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (316, N'GU', N'Гуам', N'Guam', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (320, N'GT', N'Гватемала', N'Guatemala', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (324, N'GN', N'Гвинея', N'Guinea', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (328, N'GY', N'Гайана', N'Guyana', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (332, N'HT', N'Гаити', N'Haiti', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (334, N'HM', N'Остров Херд и острова Макдональд', N'Heard Island and McDonald Islands', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (336, N'VA', N'Папский Престол (Государство — город Ватикан)', N'Holy See (Vatican City State)', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (340, N'HN', N'Гондурас', N'Honduras', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (344, N'HK', N'Гонконг', N'Hong Kong', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (348, N'HU', N'Венгрия', N'Hungary', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (352, N'IS', N'Исландия', N'Iceland', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (356, N'IN', N'Индия', N'India', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (360, N'ID', N'Индонезия', N'Indonesia', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (364, N'IR', N'Иран, Исламская Республика', N'Iran, Islamic Republic of', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (368, N'IQ', N'Ирак', N'Iraq', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (372, N'IE', N'Ирландия', N'Ireland', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (376, N'IL', N'Израиль', N'Israel', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (380, N'IT', N'Италия', N'Italy', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (384, N'CI', N'Кот д''Ивуар', N'Cote d''Ivoire', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (388, N'JM', N'Ямайка', N'Jamaica', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (392, N'JP', N'Япония', N'Japan', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (398, N'KZ', N'Казахстан', N'Kazakhstan', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (400, N'JO', N'Иордания', N'Jordan', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (404, N'KE', N'Кения', N'Kenya', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (408, N'KP', N'Корея, Народно-Демократическая Республика', N'Korea, Democratic People''s republic of', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (410, N'KR', N'Корея, Республика', N'Korea, Republic of', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (414, N'KW', N'Кувейт', N'Kuwait', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (417, N'KG', N'Киргизия', N'Kyrgyzstan', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (418, N'LA', N'Лаос', N'Lao People''s Democratic Republic', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (422, N'LB', N'Ливан', N'Lebanon', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (426, N'LS', N'Лесото', N'Lesotho', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (428, N'LV', N'Латвия', N'Latvia', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (430, N'LR', N'Либерия', N'Liberia', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (434, N'LY', N'Ливийская Арабская Джамахирия', N'Libyan Arab Jamahiriya', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (438, N'LI', N'Лихтенштейн', N'Liechtenstein', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (440, N'LT', N'Литва', N'Lithuania', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (442, N'LU', N'Люксембург', N'Luxembourg', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (446, N'MO', N'Макао', N'Macao', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (450, N'MG', N'Мадагаскар', N'Madagascar', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (454, N'MW', N'Малави', N'Malawi', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (458, N'MY', N'Малайзия', N'Malaysia', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (462, N'MV', N'Мальдивы', N'Maldives', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (466, N'ML', N'Мали', N'Mali', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (470, N'MT', N'Мальта', N'Malta', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (474, N'MQ', N'Мартиника', N'Martinique', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (478, N'MR', N'Мавритания', N'Mauritania', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (480, N'MU', N'Маврикий', N'Mauritius', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (484, N'MX', N'Мексика', N'Mexico', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (492, N'MC', N'Монако', N'Monaco', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (496, N'MN', N'Монголия', N'Mongolia', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (498, N'MD', N'Молдова, Республика', N'Moldova', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (499, N'ME', N'Черногория', N'Montenegro', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (500, N'MS', N'Монтсеррат', N'Montserrat', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (504, N'MA', N'Марокко', N'Morocco', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (508, N'MZ', N'Мозамбик', N'Mozambique', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (512, N'OM', N'Оман', N'Oman', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (516, N'NA', N'Намибия', N'Namibia', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (520, N'NR', N'Науру', N'Nauru', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (524, N'NP', N'Непал', N'Nepal', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (528, N'NL', N'Нидерланды', N'Netherlands', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (531, N'CW', N'Кюрасао', N'Curaçao', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (533, N'AW', N'Аруба', N'Aruba', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (534, N'SX', N'Синт-Мартен', N'Sint Maarten', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (535, N'BQ', N'Бонайре, Саба и Синт-Эстатиус', N'Bonaire, Sint Eustatius and Saba', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (540, N'NC', N'Новая Каледония', N'New Caledonia', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (548, N'VU', N'Вануату', N'Vanuatu', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (554, N'NZ', N'Новая Зеландия', N'New Zealand', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (558, N'NI', N'Никарагуа', N'Nicaragua', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (562, N'NE', N'Нигер', N'Niger', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (566, N'NG', N'Нигерия', N'Nigeria', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (570, N'NU', N'Ниуэ', N'Niue', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (574, N'NF', N'Остров Норфолк', N'Norfolk Island', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (578, N'NO', N'Норвегия', N'Norway', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (580, N'MP', N'Северные Марианские острова', N'Northern Mariana Islands', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (581, N'UM', N'Малые Тихоокеанские отдаленные острова Соединенных Штатов', N'United States Minor Outlying Islands', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (583, N'FM', N'Микронезия, Федеративные Штаты', N'Micronesia, Federated States of', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (584, N'MH', N'Маршалловы острова', N'Marshall Islands', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (585, N'PW', N'Палау', N'Palau', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (586, N'PK', N'Пакистан', N'Pakistan', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (591, N'PA', N'Панама', N'Panama', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (598, N'PG', N'Папуа-Новая Гвинея', N'Papua New Guinea', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (600, N'PY', N'Парагвай', N'Paraguay', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (604, N'PE', N'Перу', N'Peru', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (608, N'PH', N'Филиппины', N'Philippines', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (612, N'PN', N'Питкерн', N'Pitcairn', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (616, N'PL', N'Польша', N'Poland', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (620, N'PT', N'Португалия', N'Portugal', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (624, N'GW', N'Гвинея-Бисау', N'Guinea-Bissau', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (626, N'TL', N'Тимор-Лесте', N'Timor-Leste', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (630, N'PR', N'Пуэрто-Рико', N'Puerto Rico', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (634, N'QA', N'Катар', N'Qatar', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (638, N'RE', N'Реюньон', N'Reunion', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (642, N'RO', N'Румыния', N'Romania', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (643, N'RU', N'Россия', N'Russian Federation', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (646, N'RW', N'Руанда', N'Rwanda', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (652, N'BL', N'Сен-Бартельми', N'Saint Barthélemy', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (654, N'SH', N'Святая Елена, Остров вознесения, Тристан-да-Кунья', N'Saint Helena, Ascension And Tristan Da Cunha', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (659, N'KN', N'Сент-Китс и Невис', N'Saint Kitts and Nevis', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (660, N'AI', N'Ангилья', N'Anguilla', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (662, N'LC', N'Сент-Люсия', N'Saint Lucia', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (663, N'MF', N'Сен-Мартен', N'Saint Martin (French Part)', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (666, N'PM', N'Сент-Пьер и Микелон', N'Saint Pierre and Miquelon', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (670, N'VC', N'Сент-Винсент и Гренадины', N'Saint Vincent and the Grenadines', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (674, N'SM', N'Сан-Марино', N'San Marino', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (678, N'ST', N'Сан-Томе и Принсипи', N'Sao Tome and Principe', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (682, N'SA', N'Саудовская Аравия', N'Saudi Arabia', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (686, N'SN', N'Сенегал', N'Senegal', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (688, N'RS', N'Сербия', N'Serbia', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (690, N'SC', N'Сейшелы', N'Seychelles', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (694, N'SL', N'Сьерра-Леоне', N'Sierra Leone', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (702, N'SG', N'Сингапур', N'Singapore', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (703, N'SK', N'Словакия', N'Slovakia', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (704, N'VN', N'Вьетнам', N'Vietnam', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (705, N'SI', N'Словения', N'Slovenia', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (706, N'SO', N'Сомали', N'Somalia', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (710, N'ZA', N'Южная Африка', N'South Africa', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (716, N'ZW', N'Зимбабве', N'Zimbabwe', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (724, N'ES', N'Испания', N'Spain', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (728, N'SS', N'Южный Судан', N'South Sudan', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (729, N'SD', N'Судан', N'Sudan', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (732, N'EH', N'Западная Сахара', N'Western Sahara', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (740, N'SR', N'Суринам', N'Suriname', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (744, N'SJ', N'Шпицберген и Ян Майен', N'Svalbard and Jan Mayen', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (748, N'SZ', N'Свазиленд', N'Swaziland', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (752, N'SE', N'Швеция', N'Sweden', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (756, N'CH', N'Швейцария', N'Switzerland', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (760, N'SY', N'Сирийская Арабская Республика', N'Syrian Arab Republic', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (762, N'TJ', N'Таджикистан', N'Tajikistan', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (764, N'TH', N'Таиланд', N'Thailand', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (768, N'TG', N'Того', N'Togo', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (772, N'TK', N'Токелау', N'Tokelau', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (776, N'TO', N'Тонга', N'Tonga', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (780, N'TT', N'Тринидад и Тобаго', N'Trinidad and Tobago', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (784, N'AE', N'Объединенные Арабские Эмираты', N'United Arab Emirates', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (788, N'TN', N'Тунис', N'Tunisia', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (792, N'TR', N'Турция', N'Turkey', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (795, N'TM', N'Туркмения', N'Turkmenistan', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (796, N'TC', N'Острова Теркс и Кайкос', N'Turks and Caicos Islands', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (798, N'TV', N'Тувалу', N'Tuvalu', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (800, N'UG', N'Уганда', N'Uganda', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (804, N'UA', N'Украина', N'Ukraine', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (807, N'MK', N'Республика Македония', N'Macedonia, The Former Yugoslav Republic Of', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (818, N'EG', N'Египет', N'Egypt', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (826, N'GB', N'Соединенное Королевство', N'United Kingdom', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (831, N'GG', N'Гернси', N'Guernsey', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (832, N'JE', N'Джерси', N'Jersey', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (833, N'IM', N'Остров Мэн', N'Isle of Man', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (834, N'TZ', N'Танзания, Объединенная Республика', N'Tanzania, United Republic Of', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (840, N'US', N'Соединенные Штаты', N'United States', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (850, N'VI', N'Виргинские острова, США', N'Virgin Islands, U.S.', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (854, N'BF', N'Буркина-Фасо', N'Burkina Faso', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (858, N'UY', N'Уругвай', N'Uruguay', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (860, N'UZ', N'Узбекистан', N'Uzbekistan', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (862, N'VE', N'Венесуэла Боливарианская Республика', N'Venezuela', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (876, N'WF', N'Уоллис и Футуна', N'Wallis and Futuna', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (882, N'WS', N'Самоа', N'Samoa', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (887, N'YE', N'Йемен', N'Yemen', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (894, N'ZM', N'Замбия', N'Zambia', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (895, N'AB', N'Абхазия', N'Abkhazia', NULL)
GO
INSERT [dbo].[Country] ([ID], [Code], [Name], [Name_Eng], [Flag]) VALUES (896, N'OS', N'Южная Осетия', N'South Ossetia', NULL)
GO
INSERT [dbo].[Events] ([ID], [Title], [Date], [Days], [City_ID], [Logo]) VALUES (1, N'Всероссийский хакатон neuromedia 2017 по разработке продуктов на стыке информационных технологий, медиа и нейронных сетей ', CAST(N'2022-10-26' AS Date), N'1', 34, N'\Resource\EventsLogo\1.jpeg')
GO
INSERT [dbo].[Events] ([ID], [Title], [Date], [Days], [City_ID], [Logo]) VALUES (2, N'Встреча #3 клуба ITBizRadio на тему:  «уборка» — выкидываем ненужные навыки, инструменты и ограничения» ', CAST(N'2022-07-14' AS Date), N'3', 34, N'\Resource\EventsLogo\2.jpeg')
GO
INSERT [dbo].[Events] ([ID], [Title], [Date], [Days], [City_ID], [Logo]) VALUES (3, N'Встреча клуба «Leader stories»: Мотивирующее руководство ', CAST(N'2023-11-09' AS Date), N'2', 2, N'\Resource\EventsLogo\3.jpeg')
GO
INSERT [dbo].[Events] ([ID], [Title], [Date], [Days], [City_ID], [Logo]) VALUES (4, N'Встреча клуба руководителей «Leader Stories»: Постановка целей команде ', CAST(N'2023-07-06' AS Date), N'2', 66, N'\Resource\EventsLogo\4.jpeg')
GO
INSERT [dbo].[Events] ([ID], [Title], [Date], [Days], [City_ID], [Logo]) VALUES (5, N'Быстрее, выше, сильнее: как спорт помогает бизнесу и корпорациям ', CAST(N'2023-04-13' AS Date), N'3', 4, N'\Resource\EventsLogo\5.png')
GO
INSERT [dbo].[Events] ([ID], [Title], [Date], [Days], [City_ID], [Logo]) VALUES (6, N'Встреча клуба Leader Stories «Мотивирующее руководство» ', CAST(N'2022-02-20' AS Date), N'3', 76, N'\Resource\EventsLogo\6.jpg')
GO
INSERT [dbo].[Events] ([ID], [Title], [Date], [Days], [City_ID], [Logo]) VALUES (7, N'Встреча клуба Leader Stories в формате настольной трансформационной коучинговой игры «УниверсУм» ', CAST(N'2023-10-10' AS Date), N'2', 78, N'\Resource\EventsLogo\7.jpg')
GO
INSERT [dbo].[Events] ([ID], [Title], [Date], [Days], [City_ID], [Logo]) VALUES (8, N'Встреча пользователей PTV в России ', CAST(N'2022-04-16' AS Date), N'3', 50, N'\Resource\EventsLogo\8.jpeg')
GO
INSERT [dbo].[Events] ([ID], [Title], [Date], [Days], [City_ID], [Logo]) VALUES (9, N'Встреча сообщества CocoaHeads Russia ', CAST(N'2023-07-01' AS Date), N'3', 78, N'\Resource\EventsLogo\9.jpg')
GO
INSERT [dbo].[Events] ([ID], [Title], [Date], [Days], [City_ID], [Logo]) VALUES (10, N'Встреча СПб СоА 16 апреля. Репетиция докладов к Analyst Days ', CAST(N'2022-10-18' AS Date), N'1', 78, N'\Resource\EventsLogo\10.jpg')
GO
INSERT [dbo].[Events] ([ID], [Title], [Date], [Days], [City_ID], [Logo]) VALUES (11, N'Встреча JUG.ru с Венкатом Субраманиамом — Design Patterns in the Light of Lambda Expressions ', CAST(N'2023-08-26' AS Date), N'1', 56, N'\Resource\EventsLogo\11.jpg')
GO
INSERT [dbo].[Events] ([ID], [Title], [Date], [Days], [City_ID], [Logo]) VALUES (12, N'Встреча №3 HR-клуба Моего круга ', CAST(N'2022-11-27' AS Date), N'1', 45, N'\Resource\EventsLogo\12.jpg')
GO
INSERT [dbo].[Events] ([ID], [Title], [Date], [Days], [City_ID], [Logo]) VALUES (13, N'Встреча №4 HR-клуба «Моего круга» ', CAST(N'2023-10-31' AS Date), N'2', 78, N'\Resource\EventsLogo\13.jpg')
GO
INSERT [dbo].[Events] ([ID], [Title], [Date], [Days], [City_ID], [Logo]) VALUES (14, N'Встреча SPb Python Community ', CAST(N'2022-07-02' AS Date), N'3', 9, N'\Resource\EventsLogo\14.png')
GO
INSERT [dbo].[Events] ([ID], [Title], [Date], [Days], [City_ID], [Logo]) VALUES (15, N'Встреча SpbDotNet №36 ', CAST(N'2022-10-14' AS Date), N'3', 8, N'\Resource\EventsLogo\15.jpg')
GO
INSERT [dbo].[Events] ([ID], [Title], [Date], [Days], [City_ID], [Logo]) VALUES (16, N'Встреча SpbDotNet №40 ', CAST(N'2023-05-08' AS Date), N'2', 23, N'\Resource\EventsLogo\16.jpg')
GO
INSERT [dbo].[Events] ([ID], [Title], [Date], [Days], [City_ID], [Logo]) VALUES (17, N'Встреча SpbDotNet №44 ', CAST(N'2022-05-10' AS Date), N'2', 56, N'\Resource\EventsLogo\17.jpg')
GO
INSERT [dbo].[Events] ([ID], [Title], [Date], [Days], [City_ID], [Logo]) VALUES (18, N'Вторая международная конференция и выставка «ЦОД: модели, сервисы, инфраструктура - 2018» ', CAST(N'2022-03-03' AS Date), N'2', 33, N'\Resource\EventsLogo\18.jpeg')
GO
INSERT [dbo].[Events] ([ID], [Title], [Date], [Days], [City_ID], [Logo]) VALUES (19, N'Выбор и создание методов решения аналитических задач ', CAST(N'2023-09-13' AS Date), N'2', 22, N'\Resource\EventsLogo\19.jpg')
GO
INSERT [dbo].[Events] ([ID], [Title], [Date], [Days], [City_ID], [Logo]) VALUES (20, N'Выгорание: от бесплатного печенья до депрессии ', CAST(N'2023-11-11' AS Date), N'3', 4, N'\Resource\EventsLogo\20.jpg')
GO
SET IDENTITY_INSERT [dbo].[Jury] ON 
GO
INSERT [dbo].[Jury] ([ID], [Mail], [Date_birth], [Country_ID], [Tel], [Direct], [Password], [Photo]) VALUES (1, N'obuckridge@sipes.com', CAST(N'1969-05-18' AS Date), 35, N'78805446183', N'Дизайн', N'HHikbP', N'foto21.jpg')
GO
INSERT [dbo].[Jury] ([ID], [Mail], [Date_birth], [Country_ID], [Tel], [Direct], [Password], [Photo]) VALUES (2, N'loraine.aufderhar@johnston.info', CAST(N'1966-06-09' AS Date), 53, N'78354786160', N'Дизайн', N'TuhRzy', N'foto22.jpg')
GO
INSERT [dbo].[Jury] ([ID], [Mail], [Date_birth], [Country_ID], [Tel], [Direct], [Password], [Photo]) VALUES (3, N'juanita.kuvalis@yahoo.com', CAST(N'1978-07-12' AS Date), 52, N'71737705513', N'ИТ', N'4Y83lz', N'foto23.jpg')
GO
INSERT [dbo].[Jury] ([ID], [Mail], [Date_birth], [Country_ID], [Tel], [Direct], [Password], [Photo]) VALUES (4, N'ibode@lebsack.com', CAST(N'1981-10-11' AS Date), 67, N'75187618569', N'ИТ', N'z0q7Co', N'foto24.jpg')
GO
INSERT [dbo].[Jury] ([ID], [Mail], [Date_birth], [Country_ID], [Tel], [Direct], [Password], [Photo]) VALUES (5, N'lilly.rodriguez@yahoo.com', CAST(N'1995-05-30' AS Date), 81, N'73756443580', N'ИТ', N'uB8I2Z', N'foto25.jpg')
GO
INSERT [dbo].[Jury] ([ID], [Mail], [Date_birth], [Country_ID], [Tel], [Direct], [Password], [Photo]) VALUES (6, N'sandrine84@gmail.com', CAST(N'1950-06-06' AS Date), 94, N'75211212890', N'ИТ', N'o7Cjwu', N'foto26.jpg')
GO
INSERT [dbo].[Jury] ([ID], [Mail], [Date_birth], [Country_ID], [Tel], [Direct], [Password], [Photo]) VALUES (7, N'pearlie.watsica@wintheiser.com', CAST(N'1997-11-22' AS Date), 52, N'76157411177', N'Биг Дата', N'zC4bi7', N'foto27.jpg')
GO
INSERT [dbo].[Jury] ([ID], [Mail], [Date_birth], [Country_ID], [Tel], [Direct], [Password], [Photo]) VALUES (8, N'kaela97@hotmail.com', CAST(N'1954-10-15' AS Date), 72, N'74207880409', N'Информационная безопасность', N'ubeQbm', N'foto28.jpg')
GO
INSERT [dbo].[Jury] ([ID], [Mail], [Date_birth], [Country_ID], [Tel], [Direct], [Password], [Photo]) VALUES (9, N'gino.baumbach@gmail.com', CAST(N'1950-08-31' AS Date), 34, N'72070887939', N'ИТ', N'16BLjl', N'foto29.jpg')
GO
INSERT [dbo].[Jury] ([ID], [Mail], [Date_birth], [Country_ID], [Tel], [Direct], [Password], [Photo]) VALUES (10, N'deja76@mante.info', CAST(N'1962-12-26' AS Date), 64, N'78096518596', N'Информационная безопасность', N'XLleqI', N'foto30.jpg')
GO
INSERT [dbo].[Jury] ([ID], [Mail], [Date_birth], [Country_ID], [Tel], [Direct], [Password], [Photo]) VALUES (11, N'EXAMPLE@MAIL.CR', CAST(N'0001-01-01' AS Date), 0, N'9542895042985-0234', N'it', N'1234567', NULL)
GO
INSERT [dbo].[Jury] ([ID], [Mail], [Date_birth], [Country_ID], [Tel], [Direct], [Password], [Photo]) VALUES (12, N'example@mail.ru', CAST(N'0001-01-01' AS Date), 0, N'89174424544', N'IT', N'123456', NULL)
GO
INSERT [dbo].[Jury] ([ID], [Mail], [Date_birth], [Country_ID], [Tel], [Direct], [Password], [Photo]) VALUES (13, N'example@mail.ru', CAST(N'0001-01-01' AS Date), 0, N'89174424544', N'IT', N'123456', NULL)
GO
INSERT [dbo].[Jury] ([ID], [Mail], [Date_birth], [Country_ID], [Tel], [Direct], [Password], [Photo]) VALUES (14, N'1341ывфауфка', CAST(N'0001-01-01' AS Date), 0, N'12453634634', N'it ', N'123456', NULL)
GO
INSERT [dbo].[Jury] ([ID], [Mail], [Date_birth], [Country_ID], [Tel], [Direct], [Password], [Photo]) VALUES (15, N'ivan@mail.ru', CAST(N'0001-01-01' AS Date), 0, N'808005553535', N'it', N'123456', NULL)
GO
INSERT [dbo].[Jury] ([ID], [Mail], [Date_birth], [Country_ID], [Tel], [Direct], [Password], [Photo]) VALUES (16, N'petr@mail.ru', CAST(N'0001-01-01' AS Date), 0, N'808005553535', N'it', N'123456', NULL)
GO
INSERT [dbo].[Jury] ([ID], [Mail], [Date_birth], [Country_ID], [Tel], [Direct], [Password], [Photo]) VALUES (17, N'ivan@mail.ru', CAST(N'0001-01-01' AS Date), 0, N'808005553535', N'it', N'123456', NULL)
GO
INSERT [dbo].[Jury] ([ID], [Mail], [Date_birth], [Country_ID], [Tel], [Direct], [Password], [Photo]) VALUES (18, N'petr@mail.ru', CAST(N'0001-01-01' AS Date), 0, N'808005553535', N'it', N'123456', NULL)
GO
INSERT [dbo].[Jury] ([ID], [Mail], [Date_birth], [Country_ID], [Tel], [Direct], [Password], [Photo]) VALUES (19, N'ivan@mail.ru', CAST(N'0001-01-01' AS Date), 0, N'490913049141', N'it', N'123456', NULL)
GO
INSERT [dbo].[Jury] ([ID], [Mail], [Date_birth], [Country_ID], [Tel], [Direct], [Password], [Photo]) VALUES (20, N'petr@mail.ru', CAST(N'0001-01-01' AS Date), 0, N'794535482342', N'it', N'123456', NULL)
GO
INSERT [dbo].[Jury] ([ID], [Mail], [Date_birth], [Country_ID], [Tel], [Direct], [Password], [Photo]) VALUES (21, N'ivan@mail.ru', CAST(N'0001-01-01' AS Date), 0, N'490913049141', N'it', N'123456', NULL)
GO
INSERT [dbo].[Jury] ([ID], [Mail], [Date_birth], [Country_ID], [Tel], [Direct], [Password], [Photo]) VALUES (22, N'petr@mail.ru', CAST(N'0001-01-01' AS Date), 0, N'794535482342', N'it', N'123456', NULL)
GO
INSERT [dbo].[Jury] ([ID], [Mail], [Date_birth], [Country_ID], [Tel], [Direct], [Password], [Photo]) VALUES (23, N'ivan@mail.ru', CAST(N'0001-01-01' AS Date), 0, N'490913049141', N'it', N'123456', NULL)
GO
INSERT [dbo].[Jury] ([ID], [Mail], [Date_birth], [Country_ID], [Tel], [Direct], [Password], [Photo]) VALUES (24, N'petr@mail.ru', CAST(N'0001-01-01' AS Date), 0, N'794535482342', N'it', N'123456', NULL)
GO
INSERT [dbo].[Jury] ([ID], [Mail], [Date_birth], [Country_ID], [Tel], [Direct], [Password], [Photo]) VALUES (25, N'ivan@mail.ru', CAST(N'0001-01-01' AS Date), 0, N'490913049141', N'it', N'123456', NULL)
GO
INSERT [dbo].[Jury] ([ID], [Mail], [Date_birth], [Country_ID], [Tel], [Direct], [Password], [Photo]) VALUES (26, N'petr@mail.ru', CAST(N'0001-01-01' AS Date), 0, N'794535482342', N'it', N'123456', NULL)
GO
SET IDENTITY_INSERT [dbo].[Jury] OFF
GO
SET IDENTITY_INSERT [dbo].[Moderators] ON 
GO
INSERT [dbo].[Moderators] ([ID], [Direct], [Event], [Password], [Photo]) VALUES (1, N'ИТ', N'IT в бизнесе', N'FYi396Dd5u', N'foto9.jpg')
GO
INSERT [dbo].[Moderators] ([ID], [Direct], [Event], [Password], [Photo]) VALUES (2, N'ИТ', N'IT в бизнесе', N'7gi7E8K4Ng', N'foto10.jpg')
GO
INSERT [dbo].[Moderators] ([ID], [Direct], [Event], [Password], [Photo]) VALUES (3, N'Биг Дата', N'Разработка приложений', N'3L3eA5eEg3', N'foto8.jpg')
GO
INSERT [dbo].[Moderators] ([ID], [Direct], [Event], [Password], [Photo]) VALUES (4, N'Дизайн', N'IT-инфраструктура', N'Si8S5kS83v', N'foto11.jpg')
GO
INSERT [dbo].[Moderators] ([ID], [Direct], [Event], [Password], [Photo]) VALUES (5, N'Биг Дата', N'Разработка приложений', N'T83vfX2Z3b', N'foto12.jpg')
GO
INSERT [dbo].[Moderators] ([ID], [Direct], [Event], [Password], [Photo]) VALUES (6, N'Аналитика', N'Стартапы', N'25cPn58HxV', N'foto13.jpg')
GO
INSERT [dbo].[Moderators] ([ID], [Direct], [Event], [Password], [Photo]) VALUES (7, N'ИТ', N'IT в бизнесе', N'3z86YDzaX8', N'foto14.jpg')
GO
INSERT [dbo].[Moderators] ([ID], [Direct], [Event], [Password], [Photo]) VALUES (8, N'Информационная безопасность', N'Информационная безопасность', N't8F9hZXp89', N'foto16.jpg')
GO
INSERT [dbo].[Moderators] ([ID], [Direct], [Event], [Password], [Photo]) VALUES (9, N'Биг Дата', N'Разработка приложений', N'92mARR3gu4', N'foto17.jpg')
GO
INSERT [dbo].[Moderators] ([ID], [Direct], [Event], [Password], [Photo]) VALUES (10, N'Аналитика', N'Стартапы', N'Kf64Y6rhZ3', N'foto18.jpg')
GO
INSERT [dbo].[Moderators] ([ID], [Direct], [Event], [Password], [Photo]) VALUES (11, N'Аналитика', N'Стартапы', N's7iAYE9d38', N'foto19.jpg')
GO
INSERT [dbo].[Moderators] ([ID], [Direct], [Event], [Password], [Photo]) VALUES (12, N'Информационная безопасность', N'Информационная безопасность', N'3Ga9jfT9D2', N'foto20.jpg')
GO
INSERT [dbo].[Moderators] ([ID], [Direct], [Event], [Password], [Photo]) VALUES (13, N'Дизайн', N'IT-инфраструктура', N'N6598CFsgi', N'foto21.jpg')
GO
INSERT [dbo].[Moderators] ([ID], [Direct], [Event], [Password], [Photo]) VALUES (14, N'Дизайн', N'IT-инфраструктура', N'DV5625Zfmj', N'foto22.jpg')
GO
INSERT [dbo].[Moderators] ([ID], [Direct], [Event], [Password], [Photo]) VALUES (15, N'Дизайн', N'IT-инфраструктура', N'22YyD83dMg', N'foto23.jpg')
GO
INSERT [dbo].[Moderators] ([ID], [Direct], [Event], [Password], [Photo]) VALUES (16, N'Информационная безопасность', N'Информационная безопасность', N'522EmkEmA6', N'foto24.jpg')
GO
INSERT [dbo].[Moderators] ([ID], [Direct], [Event], [Password], [Photo]) VALUES (17, N'Информационная безопасность', N'Информационная безопасность', N'uf9u227NYU', N'foto25.jpg')
GO
INSERT [dbo].[Moderators] ([ID], [Direct], [Event], [Password], [Photo]) VALUES (18, N'Биг Дата', N'Разработка приложений', N'4UDk9p76mD', N'foto26.jpg')
GO
INSERT [dbo].[Moderators] ([ID], [Direct], [Event], [Password], [Photo]) VALUES (19, N'Аналитика', N'Стартапы', N'cK49u3JU4n', N'foto27.jpg')
GO
INSERT [dbo].[Moderators] ([ID], [Direct], [Event], [Password], [Photo]) VALUES (20, N'Информационная безопасность', N'Информационная безопасность', N'b2JHb32S8i', N'foto28.jpg')
GO
INSERT [dbo].[Moderators] ([ID], [Direct], [Event], [Password], [Photo]) VALUES (21, N'Биг Дата', N'Разработка приложений', N'uASc9446eF', N'foto29.jpg')
GO
INSERT [dbo].[Moderators] ([ID], [Direct], [Event], [Password], [Photo]) VALUES (22, N'IT', N'It бизнес', N'123456', NULL)
GO
INSERT [dbo].[Moderators] ([ID], [Direct], [Event], [Password], [Photo]) VALUES (23, N'it', N'ithub', N'123456', NULL)
GO
INSERT [dbo].[Moderators] ([ID], [Direct], [Event], [Password], [Photo]) VALUES (24, N'it', N'ithub', N'123456', NULL)
GO
INSERT [dbo].[Moderators] ([ID], [Direct], [Event], [Password], [Photo]) VALUES (25, N'it', N'ithub', N'123456', NULL)
GO
INSERT [dbo].[Moderators] ([ID], [Direct], [Event], [Password], [Photo]) VALUES (26, N'it', N'ithub', N'123456', NULL)
GO
INSERT [dbo].[Moderators] ([ID], [Direct], [Event], [Password], [Photo]) VALUES (27, N'it', N'ithub', N'123456', NULL)
GO
INSERT [dbo].[Moderators] ([ID], [Direct], [Event], [Password], [Photo]) VALUES (28, N'it', N'ithub', N'123456', NULL)
GO
INSERT [dbo].[Moderators] ([ID], [Direct], [Event], [Password], [Photo]) VALUES (29, N'it', N'ithub', N'123456', NULL)
GO
INSERT [dbo].[Moderators] ([ID], [Direct], [Event], [Password], [Photo]) VALUES (30, N'it', N'ithub', N'123456', NULL)
GO
INSERT [dbo].[Moderators] ([ID], [Direct], [Event], [Password], [Photo]) VALUES (31, N'екке', N'ithub', N'123456', NULL)
GO
INSERT [dbo].[Moderators] ([ID], [Direct], [Event], [Password], [Photo]) VALUES (32, N'it', N'ithub', N'123456', NULL)
GO
INSERT [dbo].[Moderators] ([ID], [Direct], [Event], [Password], [Photo]) VALUES (33, N'it', N'ithub', N'123456', NULL)
GO
INSERT [dbo].[Moderators] ([ID], [Direct], [Event], [Password], [Photo]) VALUES (34, N'екке', N'ithub', N'123456', NULL)
GO
INSERT [dbo].[Moderators] ([ID], [Direct], [Event], [Password], [Photo]) VALUES (35, N'it', N'ithub', N'123456', NULL)
GO
INSERT [dbo].[Moderators] ([ID], [Direct], [Event], [Password], [Photo]) VALUES (36, N'it', N'ithub', N'123456', NULL)
GO
INSERT [dbo].[Moderators] ([ID], [Direct], [Event], [Password], [Photo]) VALUES (37, N'екке', N'ithub', N'123456', NULL)
GO
INSERT [dbo].[Moderators] ([ID], [Direct], [Event], [Password], [Photo]) VALUES (38, N'it', N'ithub', N'123456', NULL)
GO
INSERT [dbo].[Moderators] ([ID], [Direct], [Event], [Password], [Photo]) VALUES (39, N'it', N'ithub', N'123456', NULL)
GO
INSERT [dbo].[Moderators] ([ID], [Direct], [Event], [Password], [Photo]) VALUES (40, N'екке', N'ithub', N'123456', NULL)
GO
INSERT [dbo].[Moderators] ([ID], [Direct], [Event], [Password], [Photo]) VALUES (41, N'it', N'ithub', N'123456', NULL)
GO
SET IDENTITY_INSERT [dbo].[Moderators] OFF
GO
SET IDENTITY_INSERT [dbo].[Organizers] ON 
GO
INSERT [dbo].[Organizers] ([ID], [Name], [Surname], [Patronymic], [Mail], [Date_birth], [Country_ID], [Tel], [Password], [Photo], [Gender]) VALUES (1, N'Васильев', N'Всеволод', N'Давидович', N'6z92wongmash@tutanota.com', CAST(N'1988-10-16' AS Date), 51, N'73549035367', N'Ke22Yh8Pp7', N'\Resource\foto1.jpg', N'м')
GO
INSERT [dbo].[Organizers] ([ID], [Name], [Surname], [Patronymic], [Mail], [Date_birth], [Country_ID], [Tel], [Password], [Photo], [Gender]) VALUES (2, N'Новиков', N'Фёдор', N'Макарович', N'jkp23vlzsqei@gmail.com', CAST(N'1980-08-03' AS Date), 33, N'', N'Tj78jXeH68', N'\Resource\foto2.jpg', N'м')
GO
INSERT [dbo].[Organizers] ([ID], [Name], [Surname], [Patronymic], [Mail], [Date_birth], [Country_ID], [Tel], [Password], [Photo], [Gender]) VALUES (3, N'Фролова', N'Владислава', N'Савельевна', N'dncmxp1vqr4t@tutanota.com', CAST(N'1999-07-13' AS Date), 43, N'', N'DF9a8cJf82', N'\Resource\foto3.jpg', N'ж')
GO
INSERT [dbo].[Organizers] ([ID], [Name], [Surname], [Patronymic], [Mail], [Date_birth], [Country_ID], [Tel], [Password], [Photo], [Gender]) VALUES (4, N'Кузнецов', N'Елисей', N'Александрович', N'sn4xvg8wyb0h@outlook.com', CAST(N'1983-12-19' AS Date), 3, N'76986672245', N'B2bdk8FD27', N'\Resource\foto4.jpg', N'м')
GO
INSERT [dbo].[Organizers] ([ID], [Name], [Surname], [Patronymic], [Mail], [Date_birth], [Country_ID], [Tel], [Password], [Photo], [Gender]) VALUES (5, N'Рябова', N'София', N'Матвеевна', N'9zaecohlw2xy@tutanota.com', CAST(N'1998-08-10' AS Date), 33, N'', N'58vMHdK4g5', N'\Resource\foto5.jpg', N'ж')
GO
INSERT [dbo].[Organizers] ([ID], [Name], [Surname], [Patronymic], [Mail], [Date_birth], [Country_ID], [Tel], [Password], [Photo], [Gender]) VALUES (6, N'Власов', N'Арсений', N'Львович', N'sohzld6c52mv@gmail.com', CAST(N'1980-05-28' AS Date), 31, N'', N'T3uhc34E9Z', N'\Resource\foto6.jpg', N'м')
GO
INSERT [dbo].[Organizers] ([ID], [Name], [Surname], [Patronymic], [Mail], [Date_birth], [Country_ID], [Tel], [Password], [Photo], [Gender]) VALUES (7, N'Маслова', N'Екатерина', N'Макаровна', N'a1v0lgxsz3qb@mail.com', CAST(N'1983-10-26' AS Date), 40, N'', N'dj8PN3b4M9', N'\Resource\foto7.jpg', N'ж')
GO
INSERT [dbo].[Organizers] ([ID], [Name], [Surname], [Patronymic], [Mail], [Date_birth], [Country_ID], [Tel], [Password], [Photo], [Gender]) VALUES (8, N'Агафонов', N'Давид', N'Артёмович', N'lry2ko5t031w@gmail.com', CAST(N'1995-10-14' AS Date), 27, N'', N'uy69Pp8DY6', N'\Resource\foto8.jpg', N'м')
GO
INSERT [dbo].[Organizers] ([ID], [Name], [Surname], [Patronymic], [Mail], [Date_birth], [Country_ID], [Tel], [Password], [Photo], [Gender]) VALUES (9, N'Федотова', N'Варвара', N'Сергеевна', N'omrjzf0pc8n6@outlook.com', CAST(N'1996-12-05' AS Date), 2, N'', N'Sp3k6Ax86E', N'\Resource\foto9.jpg', N'ж')
GO
INSERT [dbo].[Organizers] ([ID], [Name], [Surname], [Patronymic], [Mail], [Date_birth], [Country_ID], [Tel], [Password], [Photo], [Gender]) VALUES (10, N'Кудряшова', N'Виктория', N'Дмитриевна', N't1wpou7merxi@yahoo.com', CAST(N'1999-02-13' AS Date), 16, N'74279392467', N'fvm774FV3R', N'\Resource\foto10.jpg', N'ж')
GO
SET IDENTITY_INSERT [dbo].[Organizers] OFF
GO
SET IDENTITY_INSERT [dbo].[Participants] ON 
GO
INSERT [dbo].[Participants] ([ID], [Name], [Surname], [Patronymic], [Mail], [Date_birth], [Country_ID], [Tel], [Password], [Photo], [Gender]) VALUES (1, N'Ершова', N'Нора', N'Федотовна', N'techie@outlook.com', CAST(N'1987-03-26' AS Date), 71, N'79604240711', N'tKKevv8%', N'foto60.jpg', N'ж')
GO
INSERT [dbo].[Participants] ([ID], [Name], [Surname], [Patronymic], [Mail], [Date_birth], [Country_ID], [Tel], [Password], [Photo], [Gender]) VALUES (2, N'Афанасьева', N'Жанна', N'Валентиновна', N'agapow@yahoo.com', CAST(N'1988-01-04' AS Date), 34, N'79306616931', N'huSfHm4$', N'foto61.jpg', N'ж')
GO
INSERT [dbo].[Participants] ([ID], [Name], [Surname], [Patronymic], [Mail], [Date_birth], [Country_ID], [Tel], [Password], [Photo], [Gender]) VALUES (3, N'Крылова', N'Рая', N'Всеволодовна', N'chaikin@yahoo.ca', CAST(N'1988-04-05' AS Date), 73, N'79572656068', N'TlUwMw77%', N'foto62.jpg', N'ж')
GO
INSERT [dbo].[Participants] ([ID], [Name], [Surname], [Patronymic], [Mail], [Date_birth], [Country_ID], [Tel], [Password], [Photo], [Gender]) VALUES (4, N'Попова', N'Вида', N'Тимофеевна', N'lbecchi@yahoo.ca', CAST(N'1989-10-25' AS Date), 64, N'79117440314', N'%afF#@6', N'foto63.jpg', N'ж')
GO
INSERT [dbo].[Participants] ([ID], [Name], [Surname], [Patronymic], [Mail], [Date_birth], [Country_ID], [Tel], [Password], [Photo], [Gender]) VALUES (5, N'Давыдова', N'Сандра', N'Богуславовна', N'bbirth@gmail.com', CAST(N'1989-12-27' AS Date), 55, N'79848778764', N'SU4Jpw"', N'foto64.jpg', N'ж')
GO
INSERT [dbo].[Participants] ([ID], [Name], [Surname], [Patronymic], [Mail], [Date_birth], [Country_ID], [Tel], [Password], [Photo], [Gender]) VALUES (6, N'Прохорова', N'Сабина', N'Созоновна', N'library@sbcglobal.net', CAST(N'1990-01-16' AS Date), 77, N'79405002072', N'wL#O0V', N'foto65.jpg', N'ж')
GO
INSERT [dbo].[Participants] ([ID], [Name], [Surname], [Patronymic], [Mail], [Date_birth], [Country_ID], [Tel], [Password], [Photo], [Gender]) VALUES (7, N'Громова', N'Сильва', N'Адольфовна', N'sisyphus@live.com', CAST(N'1990-06-13' AS Date), 52, N'79560567521', N'p5r{zY', N'foto66.jpg', N'ж')
GO
INSERT [dbo].[Participants] ([ID], [Name], [Surname], [Patronymic], [Mail], [Date_birth], [Country_ID], [Tel], [Password], [Photo], [Gender]) VALUES (8, N'Боброва', N'Джема', N'Феликсовна', N'msroth@hotmail.com', CAST(N'1990-07-03' AS Date), 28, N'79654933966', N'wTVK~M1', N'foto67.jpg', N'ж')
GO
INSERT [dbo].[Participants] ([ID], [Name], [Surname], [Patronymic], [Mail], [Date_birth], [Country_ID], [Tel], [Password], [Photo], [Gender]) VALUES (9, N'Фокина', N'Алия', N'Юлиановна', N'dodong@yahoo.com', CAST(N'1990-11-27' AS Date), 53, N'79973296978', N'8*Zfaj', N'foto68.jpg', N'ж')
GO
INSERT [dbo].[Participants] ([ID], [Name], [Surname], [Patronymic], [Mail], [Date_birth], [Country_ID], [Tel], [Password], [Photo], [Gender]) VALUES (10, N'Калинина', N'Маргарита', N'Анатольевна', N'bcevc@hotmail.com', CAST(N'1991-06-08' AS Date), 74, N'79645715650', N'4sBGr*', N'foto69.jpg', N'ж')
GO
INSERT [dbo].[Participants] ([ID], [Name], [Surname], [Patronymic], [Mail], [Date_birth], [Country_ID], [Tel], [Password], [Photo], [Gender]) VALUES (11, N'Горшкова', N'Дина', N'Тарасовна', N'sethbrown@aol.com', CAST(N'1991-08-13' AS Date), 7, N'79184188073', N'BpC8e8]', N'foto70.jpg', N'ж')
GO
INSERT [dbo].[Participants] ([ID], [Name], [Surname], [Patronymic], [Mail], [Date_birth], [Country_ID], [Tel], [Password], [Photo], [Gender]) VALUES (12, N'Гуляева', N'Ирэна', N'Юрьевна', N'ftgvh2xbdaps@tutanota.com', CAST(N'1992-10-03' AS Date), 38, N'', N'cI1CTd', N'foto1.jpg', N'ж')
GO
INSERT [dbo].[Participants] ([ID], [Name], [Surname], [Patronymic], [Mail], [Date_birth], [Country_ID], [Tel], [Password], [Photo], [Gender]) VALUES (13, N'Бурова', N'Келен', N'Натановна', N'ervbd91pfcoi@mail.com', CAST(N'1990-09-19' AS Date), 54, N'79184181029', N'MPmfYk', N'foto2.jpg', N'ж')
GO
INSERT [dbo].[Participants] ([ID], [Name], [Surname], [Patronymic], [Mail], [Date_birth], [Country_ID], [Tel], [Password], [Photo], [Gender]) VALUES (14, N'Королёва', N'Лаура', N'Пётровна', N'p3y4b981xwdl@outlook.com', CAST(N'1995-07-31' AS Date), 24, N'', N'omtSW3', N'foto3.jpg', N'ж')
GO
INSERT [dbo].[Participants] ([ID], [Name], [Surname], [Patronymic], [Mail], [Date_birth], [Country_ID], [Tel], [Password], [Photo], [Gender]) VALUES (15, N'Степанова', N'Розалия', N'Евсеевна', N'8e9kvxq6z70o@mail.com', CAST(N'1994-11-02' AS Date), 24, N'79184180129', N'cErGgC', N'foto4.jpg', N'ж')
GO
INSERT [dbo].[Participants] ([ID], [Name], [Surname], [Patronymic], [Mail], [Date_birth], [Country_ID], [Tel], [Password], [Photo], [Gender]) VALUES (16, N'Тимофеева', N'Евгения', N'Викторовна', N'obnk82vzpg34@yahoo.com', CAST(N'1982-01-02' AS Date), 11, N'79184181203', N'q2se3v', N'foto5.jpg', N'ж')
GO
INSERT [dbo].[Participants] ([ID], [Name], [Surname], [Patronymic], [Mail], [Date_birth], [Country_ID], [Tel], [Password], [Photo], [Gender]) VALUES (17, N'Дроздова', N'Винетта', N'Германовна', N'wl652rgtk9js@gmail.com', CAST(N'1996-06-17' AS Date), 1, N'79184181035', N'KnqfAk', N'foto6.jpg', N'ж')
GO
INSERT [dbo].[Participants] ([ID], [Name], [Surname], [Patronymic], [Mail], [Date_birth], [Country_ID], [Tel], [Password], [Photo], [Gender]) VALUES (18, N'Лукина', N'Ксения', N'Романовна', N'23rgct5v1myx@gmail.com', CAST(N'1990-09-18' AS Date), 2, N'79184181038', N'6YxPwE', N'foto7.jpg', N'ж')
GO
INSERT [dbo].[Participants] ([ID], [Name], [Surname], [Patronymic], [Mail], [Date_birth], [Country_ID], [Tel], [Password], [Photo], [Gender]) VALUES (19, N'Мышкина', N'Триана', N'Геннадьевна', N'i4fs8e6mlk5p@yahoo.com', CAST(N'1981-12-30' AS Date), 54, N'79184189137', N'pBQpPx', N'foto8.jpg', N'ж')
GO
INSERT [dbo].[Participants] ([ID], [Name], [Surname], [Patronymic], [Mail], [Date_birth], [Country_ID], [Tel], [Password], [Photo], [Gender]) VALUES (20, N'Михеева', N'Аделия', N'Авксентьевна', N'4hu6f8dxvngq@tutanota.com', CAST(N'1989-06-11' AS Date), 64, N'79182394582', N'FkX6Ms', N'foto9.jpg', N'ж')
GO
SET IDENTITY_INSERT [dbo].[Participants] OFF
GO
USE [master]
GO
ALTER DATABASE [020_Podoinitsyn_conference] SET  READ_WRITE 
GO
