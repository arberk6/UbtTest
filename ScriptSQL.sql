USE [master]
GO
/****** Object:  Database [TemaDiplomes]    Script Date: 31/08/2018 14:01:13 ******/
CREATE DATABASE [TemaDiplomes]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TemaDiplomes', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\TemaDiplomes.mdf' , SIZE = 4160KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'TemaDiplomes_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\TemaDiplomes_log.ldf' , SIZE = 1040KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [TemaDiplomes] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TemaDiplomes].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TemaDiplomes] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TemaDiplomes] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TemaDiplomes] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TemaDiplomes] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TemaDiplomes] SET ARITHABORT OFF 
GO
ALTER DATABASE [TemaDiplomes] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [TemaDiplomes] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [TemaDiplomes] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TemaDiplomes] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TemaDiplomes] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TemaDiplomes] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TemaDiplomes] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TemaDiplomes] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TemaDiplomes] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TemaDiplomes] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TemaDiplomes] SET  ENABLE_BROKER 
GO
ALTER DATABASE [TemaDiplomes] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TemaDiplomes] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TemaDiplomes] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TemaDiplomes] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TemaDiplomes] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TemaDiplomes] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TemaDiplomes] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TemaDiplomes] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TemaDiplomes] SET  MULTI_USER 
GO
ALTER DATABASE [TemaDiplomes] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TemaDiplomes] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TemaDiplomes] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TemaDiplomes] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [TemaDiplomes]
GO
/****** Object:  User [arberk6]    Script Date: 31/08/2018 14:01:13 ******/
CREATE USER [arberk6] FOR LOGIN [arberk6] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [ak]    Script Date: 31/08/2018 14:01:13 ******/
CREATE USER [ak] FOR LOGIN [ak] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Detyra]    Script Date: 31/08/2018 14:01:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Detyra](
	[Detyra_ID] [int] IDENTITY(1,1) NOT NULL,
	[ProcesVerbali] [int] NOT NULL,
	[Detyra] [varchar](max) NOT NULL,
	[PershkrimiDetyres] [varchar](max) NOT NULL,
	[PershkrimShtese] [varchar](max) NOT NULL,
	[Perfunduar] [bit] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Detyra_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KerkesaPerGrup]    Script Date: 31/08/2018 14:01:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KerkesaPerGrup](
	[KPG_id] [int] IDENTITY(1,1) NOT NULL,
	[Studenti] [uniqueidentifier] NOT NULL,
	[KerkesaPerTemeDiplome] [int] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[KPG_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KerkesaPerTemeTeDiplomes]    Script Date: 31/08/2018 14:01:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KerkesaPerTemeTeDiplomes](
	[KTD_id] [int] IDENTITY(1,1) NOT NULL,
	[Studenti] [uniqueidentifier] NOT NULL,
	[ArsyejaPerMarrjenETemes] [varchar](1000) NULL,
	[BurimetEMaterialeve] [varchar](1000) NULL,
	[AprovimiMentori] [bit] NOT NULL,
	[AprovimiFakultetit] [bit] NOT NULL,
	[AprovimiDekanit] [bit] NOT NULL,
	[EshteGrup] [bit] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[PlanifikimiPerfundimit] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[KTD_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MentorCoMentor]    Script Date: 31/08/2018 14:01:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MentorCoMentor](
	[MCM_id] [int] IDENTITY(1,1) NOT NULL,
	[Mentori] [int] NOT NULL,
	[CoMentor] [int] NULL,
	[KerkesaPerTemeDiplome] [int] NOT NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MCM_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Mentori]    Script Date: 31/08/2018 14:01:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Mentori](
	[Mentori_id] [int] IDENTITY(1,1) NOT NULL,
	[emri] [varchar](255) NOT NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Mentori_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProcesVerbal]    Script Date: 31/08/2018 14:01:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProcesVerbal](
	[ProcesVerbal_id] [int] IDENTITY(1,1) NOT NULL,
	[KerkesaPerTemeDiplome] [int] NOT NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProcesVerbal_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Studenti]    Script Date: 31/08/2018 14:01:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Studenti](
	[Studenti_id] [uniqueidentifier] NOT NULL,
	[Emri] [varchar](255) NOT NULL,
	[Mbiemri] [varchar](255) NOT NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Studenti_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Detyra]  WITH CHECK ADD FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[Mentori] ([Mentori_id])
GO
ALTER TABLE [dbo].[Detyra]  WITH CHECK ADD FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[Mentori] ([Mentori_id])
GO
ALTER TABLE [dbo].[Detyra]  WITH CHECK ADD FOREIGN KEY([ProcesVerbali])
REFERENCES [dbo].[ProcesVerbal] ([ProcesVerbal_id])
GO
ALTER TABLE [dbo].[KerkesaPerGrup]  WITH CHECK ADD FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[Studenti] ([Studenti_id])
GO
ALTER TABLE [dbo].[KerkesaPerGrup]  WITH CHECK ADD FOREIGN KEY([KerkesaPerTemeDiplome])
REFERENCES [dbo].[KerkesaPerTemeTeDiplomes] ([KTD_id])
GO
ALTER TABLE [dbo].[KerkesaPerGrup]  WITH CHECK ADD FOREIGN KEY([Studenti])
REFERENCES [dbo].[Studenti] ([Studenti_id])
GO
ALTER TABLE [dbo].[KerkesaPerTemeTeDiplomes]  WITH CHECK ADD FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[Studenti] ([Studenti_id])
GO
ALTER TABLE [dbo].[KerkesaPerTemeTeDiplomes]  WITH CHECK ADD FOREIGN KEY([Studenti])
REFERENCES [dbo].[Studenti] ([Studenti_id])
GO
ALTER TABLE [dbo].[MentorCoMentor]  WITH CHECK ADD FOREIGN KEY([CoMentor])
REFERENCES [dbo].[Mentori] ([Mentori_id])
GO
ALTER TABLE [dbo].[MentorCoMentor]  WITH CHECK ADD FOREIGN KEY([KerkesaPerTemeDiplome])
REFERENCES [dbo].[KerkesaPerTemeTeDiplomes] ([KTD_id])
GO
ALTER TABLE [dbo].[MentorCoMentor]  WITH CHECK ADD FOREIGN KEY([Mentori])
REFERENCES [dbo].[Mentori] ([Mentori_id])
GO
ALTER TABLE [dbo].[ProcesVerbal]  WITH CHECK ADD FOREIGN KEY([KerkesaPerTemeDiplome])
REFERENCES [dbo].[KerkesaPerTemeTeDiplomes] ([KTD_id])
GO
USE [master]
GO
ALTER DATABASE [TemaDiplomes] SET  READ_WRITE 
GO
