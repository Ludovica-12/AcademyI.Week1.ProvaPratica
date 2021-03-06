USE [master]
GO
/****** Object:  Database [AcademyI.EsercitazioneFinale]    Script Date: 23/09/2021 18:53:34 ******/
CREATE DATABASE [AcademyI.EsercitazioneFinale]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AcademyI.EsarcitazioneFinale', FILENAME = N'C:\Users\ludovica.lucidi\source\repos\AcademyI.Week1.ProvaPratica.EsarcitazioneFinale.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'AcademyI.EsarcitazioneFinale_log', FILENAME = N'C:\Users\ludovica.lucidi\source\repos\AcademyI.Week1.ProvaPratica.EsarcitazioneFinale_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [AcademyI.EsercitazioneFinale] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AcademyI.EsercitazioneFinale].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AcademyI.EsercitazioneFinale] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AcademyI.EsercitazioneFinale] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AcademyI.EsercitazioneFinale] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AcademyI.EsercitazioneFinale] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AcademyI.EsercitazioneFinale] SET ARITHABORT OFF 
GO
ALTER DATABASE [AcademyI.EsercitazioneFinale] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [AcademyI.EsercitazioneFinale] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AcademyI.EsercitazioneFinale] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AcademyI.EsercitazioneFinale] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AcademyI.EsercitazioneFinale] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AcademyI.EsercitazioneFinale] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AcademyI.EsercitazioneFinale] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AcademyI.EsercitazioneFinale] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AcademyI.EsercitazioneFinale] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AcademyI.EsercitazioneFinale] SET  DISABLE_BROKER 
GO
ALTER DATABASE [AcademyI.EsercitazioneFinale] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AcademyI.EsercitazioneFinale] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AcademyI.EsercitazioneFinale] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AcademyI.EsercitazioneFinale] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AcademyI.EsercitazioneFinale] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AcademyI.EsercitazioneFinale] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AcademyI.EsercitazioneFinale] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AcademyI.EsercitazioneFinale] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [AcademyI.EsercitazioneFinale] SET  MULTI_USER 
GO
ALTER DATABASE [AcademyI.EsercitazioneFinale] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AcademyI.EsercitazioneFinale] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AcademyI.EsercitazioneFinale] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AcademyI.EsercitazioneFinale] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [AcademyI.EsercitazioneFinale] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [AcademyI.EsercitazioneFinale] SET QUERY_STORE = OFF
GO
USE [AcademyI.EsercitazioneFinale]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [AcademyI.EsercitazioneFinale]
GO
/****** Object:  Table [dbo].[Approvatori]    Script Date: 23/09/2021 18:53:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Approvatori](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Approvatori] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categorie]    Script Date: 23/09/2021 18:53:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categorie](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Categorie] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dipendenti]    Script Date: 23/09/2021 18:53:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dipendenti](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Dipendenti] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Spese]    Script Date: 23/09/2021 18:53:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Spese](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Data] [date] NOT NULL,
	[Spesa] [float] NOT NULL,
	[Categoria] [int] NOT NULL,
	[Descrizione] [nvarchar](50) NOT NULL,
	[Dipendente] [int] NOT NULL,
	[Approvata] [bit] NULL,
	[Rimborso] [float] NULL,
	[Approvatore] [int] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Approvatori] ON 

INSERT [dbo].[Approvatori] ([Id], [Nome]) VALUES (1, N'Manager')
INSERT [dbo].[Approvatori] ([Id], [Nome]) VALUES (2, N'Operation Manager')
INSERT [dbo].[Approvatori] ([Id], [Nome]) VALUES (3, N'CEO')
SET IDENTITY_INSERT [dbo].[Approvatori] OFF
GO
SET IDENTITY_INSERT [dbo].[Categorie] ON 

INSERT [dbo].[Categorie] ([Id], [Nome]) VALUES (1, N'Vitto')
INSERT [dbo].[Categorie] ([Id], [Nome]) VALUES (2, N'Alloggio')
INSERT [dbo].[Categorie] ([Id], [Nome]) VALUES (3, N'Trasferta')
INSERT [dbo].[Categorie] ([Id], [Nome]) VALUES (4, N'Altro')
SET IDENTITY_INSERT [dbo].[Categorie] OFF
GO
SET IDENTITY_INSERT [dbo].[Dipendenti] ON 

INSERT [dbo].[Dipendenti] ([Id], [Nome]) VALUES (1, N'Mario')
INSERT [dbo].[Dipendenti] ([Id], [Nome]) VALUES (2, N'Luigi')
INSERT [dbo].[Dipendenti] ([Id], [Nome]) VALUES (3, N'Piero')
SET IDENTITY_INSERT [dbo].[Dipendenti] OFF
GO
SET IDENTITY_INSERT [dbo].[Spese] ON 

INSERT [dbo].[Spese] ([Id], [Data], [Spesa], [Categoria], [Descrizione], [Dipendente], [Approvata], [Rimborso], [Approvatore]) VALUES (1, CAST(N'2021-09-20' AS Date), 1200, 1, N'Pranzi e cene', 1, NULL, NULL, NULL)
INSERT [dbo].[Spese] ([Id], [Data], [Spesa], [Categoria], [Descrizione], [Dipendente], [Approvata], [Rimborso], [Approvatore]) VALUES (3, CAST(N'2021-09-20' AS Date), 800, 2, N'Hotel Fantastico', 1, NULL, NULL, NULL)
INSERT [dbo].[Spese] ([Id], [Data], [Spesa], [Categoria], [Descrizione], [Dipendente], [Approvata], [Rimborso], [Approvatore]) VALUES (4, CAST(N'2021-09-20' AS Date), 120, 3, N'Frecciarossa e taxi', 1, NULL, NULL, NULL)
INSERT [dbo].[Spese] ([Id], [Data], [Spesa], [Categoria], [Descrizione], [Dipendente], [Approvata], [Rimborso], [Approvatore]) VALUES (5, CAST(N'2021-09-15' AS Date), 402, 3, N'Trasferta giornaliera da cliente', 2, NULL, NULL, NULL)
INSERT [dbo].[Spese] ([Id], [Data], [Spesa], [Categoria], [Descrizione], [Dipendente], [Approvata], [Rimborso], [Approvatore]) VALUES (6, CAST(N'2021-09-17' AS Date), 2550, 2, N'Hotel Bellissimo', 3, NULL, NULL, NULL)
INSERT [dbo].[Spese] ([Id], [Data], [Spesa], [Categoria], [Descrizione], [Dipendente], [Approvata], [Rimborso], [Approvatore]) VALUES (7, CAST(N'2021-09-17' AS Date), 320, 4, N'Varie', 3, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Spese] OFF
GO
ALTER TABLE [dbo].[Spese]  WITH CHECK ADD  CONSTRAINT [FK_Spese_Approvatori] FOREIGN KEY([Approvatore])
REFERENCES [dbo].[Approvatori] ([Id])
GO
ALTER TABLE [dbo].[Spese] CHECK CONSTRAINT [FK_Spese_Approvatori]
GO
ALTER TABLE [dbo].[Spese]  WITH CHECK ADD  CONSTRAINT [FK_Spese_Categorie] FOREIGN KEY([Categoria])
REFERENCES [dbo].[Categorie] ([Id])
GO
ALTER TABLE [dbo].[Spese] CHECK CONSTRAINT [FK_Spese_Categorie]
GO
ALTER TABLE [dbo].[Spese]  WITH CHECK ADD  CONSTRAINT [FK_Spese_Dipendenti] FOREIGN KEY([Dipendente])
REFERENCES [dbo].[Dipendenti] ([Id])
GO
ALTER TABLE [dbo].[Spese] CHECK CONSTRAINT [FK_Spese_Dipendenti]
GO
USE [master]
GO
ALTER DATABASE [AcademyI.EsercitazioneFinale] SET  READ_WRITE 
GO
