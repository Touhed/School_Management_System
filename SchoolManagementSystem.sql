USE [master]
GO
/****** Object:  Database [SchoolManagementSystem]    Script Date: 5/23/2019 1:21:09 PM ******/
CREATE DATABASE [SchoolManagementSystem]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SchoolManagementSystem', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\SchoolManagementSystem.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'SchoolManagementSystem_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\SchoolManagementSystem_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [SchoolManagementSystem] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SchoolManagementSystem].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SchoolManagementSystem] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SchoolManagementSystem] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SchoolManagementSystem] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SchoolManagementSystem] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SchoolManagementSystem] SET ARITHABORT OFF 
GO
ALTER DATABASE [SchoolManagementSystem] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SchoolManagementSystem] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [SchoolManagementSystem] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SchoolManagementSystem] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SchoolManagementSystem] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SchoolManagementSystem] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SchoolManagementSystem] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SchoolManagementSystem] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SchoolManagementSystem] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SchoolManagementSystem] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SchoolManagementSystem] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SchoolManagementSystem] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SchoolManagementSystem] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SchoolManagementSystem] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SchoolManagementSystem] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SchoolManagementSystem] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SchoolManagementSystem] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SchoolManagementSystem] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SchoolManagementSystem] SET RECOVERY FULL 
GO
ALTER DATABASE [SchoolManagementSystem] SET  MULTI_USER 
GO
ALTER DATABASE [SchoolManagementSystem] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SchoolManagementSystem] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SchoolManagementSystem] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SchoolManagementSystem] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [SchoolManagementSystem]
GO
/****** Object:  Table [dbo].[Login]    Script Date: 5/23/2019 1:21:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Login](
	[SerialNo] [bigint] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[CurrentPassword] [nvarchar](50) NOT NULL,
	[FirstLoginStatus] [bit] NOT NULL,
	[RoleId] [int] NOT NULL,
	[ActiveStatus] [bit] NOT NULL,
	[DistinguishId] [bigint] NOT NULL,
 CONSTRAINT [PK_Login] PRIMARY KEY CLUSTERED 
(
	[SerialNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Login] ON 

INSERT [dbo].[Login] ([SerialNo], [Username], [Password], [CurrentPassword], [FirstLoginStatus], [RoleId], [ActiveStatus], [DistinguishId]) VALUES (1, N'a', N'a', N'a', 1, 1, 0, 1)
SET IDENTITY_INSERT [dbo].[Login] OFF
USE [master]
GO
ALTER DATABASE [SchoolManagementSystem] SET  READ_WRITE 
GO
