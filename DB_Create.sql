USE [master]
GO

/****** Object:  Database [congress]    Script Date: 3/6/2021 3:07:18 PM ******/
CREATE DATABASE [congress]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Congress', FILENAME = N'I:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Congress.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Congress_log', FILENAME = N'I:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Congress_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [congress].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [congress] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [congress] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [congress] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [congress] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [congress] SET ARITHABORT OFF 
GO

ALTER DATABASE [congress] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [congress] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [congress] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [congress] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [congress] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [congress] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [congress] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [congress] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [congress] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [congress] SET  DISABLE_BROKER 
GO

ALTER DATABASE [congress] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [congress] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [congress] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [congress] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [congress] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [congress] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [congress] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [congress] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [congress] SET  MULTI_USER 
GO

ALTER DATABASE [congress] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [congress] SET DB_CHAINING OFF 
GO

ALTER DATABASE [congress] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [congress] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [congress] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [congress] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO

ALTER DATABASE [congress] SET QUERY_STORE = OFF
GO

ALTER DATABASE [congress] SET  READ_WRITE 
GO


