USE [master]
GO
/****** Object:  Database [PREGUNCHACO]    Script Date: 02/09/2021 20:58:24 ******/
CREATE DATABASE [PREGUNCHACO]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PREGUNCHACO', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\PREGUNCHACO.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PREGUNCHACO_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\PREGUNCHACO_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [PREGUNCHACO] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PREGUNCHACO].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PREGUNCHACO] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PREGUNCHACO] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PREGUNCHACO] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PREGUNCHACO] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PREGUNCHACO] SET ARITHABORT OFF 
GO
ALTER DATABASE [PREGUNCHACO] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PREGUNCHACO] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PREGUNCHACO] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PREGUNCHACO] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PREGUNCHACO] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PREGUNCHACO] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PREGUNCHACO] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PREGUNCHACO] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PREGUNCHACO] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PREGUNCHACO] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PREGUNCHACO] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PREGUNCHACO] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PREGUNCHACO] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PREGUNCHACO] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PREGUNCHACO] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PREGUNCHACO] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PREGUNCHACO] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PREGUNCHACO] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PREGUNCHACO] SET  MULTI_USER 
GO
ALTER DATABASE [PREGUNCHACO] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PREGUNCHACO] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PREGUNCHACO] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PREGUNCHACO] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PREGUNCHACO] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PREGUNCHACO] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'PREGUNCHACO', N'ON'
GO
ALTER DATABASE [PREGUNCHACO] SET QUERY_STORE = OFF
GO
USE [PREGUNCHACO]
GO
/****** Object:  Table [dbo].[auth_group]    Script Date: 02/09/2021 20:58:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[auth_group](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](150) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [auth_group_name_a6ea08ec_uniq] UNIQUE NONCLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[auth_group_permissions]    Script Date: 02/09/2021 20:58:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[auth_group_permissions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[group_id] [int] NOT NULL,
	[permission_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[auth_permission]    Script Date: 02/09/2021 20:58:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[auth_permission](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[content_type_id] [int] NOT NULL,
	[codename] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[django_admin_log]    Script Date: 02/09/2021 20:58:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[django_admin_log](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[action_time] [datetime2](7) NOT NULL,
	[object_id] [nvarchar](max) NULL,
	[object_repr] [nvarchar](200) NOT NULL,
	[action_flag] [smallint] NOT NULL,
	[change_message] [nvarchar](max) NOT NULL,
	[content_type_id] [int] NULL,
	[user_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[django_content_type]    Script Date: 02/09/2021 20:58:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[django_content_type](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[app_label] [nvarchar](100) NOT NULL,
	[model] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[django_migrations]    Script Date: 02/09/2021 20:58:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[django_migrations](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[app] [nvarchar](255) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[applied] [datetime2](7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[django_session]    Script Date: 02/09/2021 20:58:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[django_session](
	[session_key] [nvarchar](40) NOT NULL,
	[session_data] [nvarchar](max) NOT NULL,
	[expire_date] [datetime2](7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[session_key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pregunta_categoria]    Script Date: 02/09/2021 20:58:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pregunta_categoria](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Categoria] [nvarchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pregunta_elegirrespuesta]    Script Date: 02/09/2021 20:58:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pregunta_elegirrespuesta](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[correcta] [bit] NOT NULL,
	[texto] [nvarchar](max) NOT NULL,
	[pregunta_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pregunta_jugador]    Script Date: 02/09/2021 20:58:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pregunta_jugador](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[puntaje_total] [numeric](10, 2) NULL,
	[jugador_id] [int] NOT NULL,
	[mejor_puntuacion] [numeric](10, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[jugador_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pregunta_pregunta]    Script Date: 02/09/2021 20:58:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pregunta_pregunta](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[texto] [nvarchar](max) NOT NULL,
	[categorias_id] [int] NOT NULL,
	[max_puntaje] [numeric](6, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pregunta_preguntasrespondidas]    Script Date: 02/09/2021 20:58:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pregunta_preguntasrespondidas](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[correcta] [bit] NOT NULL,
	[puntaje_obtenido] [numeric](6, 2) NOT NULL,
	[jugador_user_id] [int] NOT NULL,
	[pregunta_id] [int] NOT NULL,
	[respuesta_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuarios_usuario]    Script Date: 02/09/2021 20:58:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuarios_usuario](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[password] [nvarchar](128) NOT NULL,
	[last_login] [datetime2](7) NULL,
	[is_superuser] [bit] NOT NULL,
	[username] [nvarchar](150) NOT NULL,
	[first_name] [nvarchar](30) NOT NULL,
	[last_name] [nvarchar](150) NOT NULL,
	[email] [nvarchar](254) NOT NULL,
	[is_staff] [bit] NOT NULL,
	[is_active] [bit] NOT NULL,
	[date_joined] [datetime2](7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuarios_usuario_groups]    Script Date: 02/09/2021 20:58:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuarios_usuario_groups](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[usuario_id] [int] NOT NULL,
	[group_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuarios_usuario_user_permissions]    Script Date: 02/09/2021 20:58:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuarios_usuario_user_permissions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[usuario_id] [int] NOT NULL,
	[permission_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [auth_group_permissions_group_id_b120cbf9]    Script Date: 02/09/2021 20:58:24 ******/
CREATE NONCLUSTERED INDEX [auth_group_permissions_group_id_b120cbf9] ON [dbo].[auth_group_permissions]
(
	[group_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [auth_group_permissions_group_id_permission_id_0cd325b0_uniq]    Script Date: 02/09/2021 20:58:24 ******/
CREATE UNIQUE NONCLUSTERED INDEX [auth_group_permissions_group_id_permission_id_0cd325b0_uniq] ON [dbo].[auth_group_permissions]
(
	[group_id] ASC,
	[permission_id] ASC
)
WHERE ([group_id] IS NOT NULL AND [permission_id] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [auth_group_permissions_permission_id_84c5c92e]    Script Date: 02/09/2021 20:58:24 ******/
CREATE NONCLUSTERED INDEX [auth_group_permissions_permission_id_84c5c92e] ON [dbo].[auth_group_permissions]
(
	[permission_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [auth_permission_content_type_id_2f476e4b]    Script Date: 02/09/2021 20:58:24 ******/
CREATE NONCLUSTERED INDEX [auth_permission_content_type_id_2f476e4b] ON [dbo].[auth_permission]
(
	[content_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [auth_permission_content_type_id_codename_01ab375a_uniq]    Script Date: 02/09/2021 20:58:24 ******/
CREATE UNIQUE NONCLUSTERED INDEX [auth_permission_content_type_id_codename_01ab375a_uniq] ON [dbo].[auth_permission]
(
	[content_type_id] ASC,
	[codename] ASC
)
WHERE ([content_type_id] IS NOT NULL AND [codename] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [django_admin_log_content_type_id_c4bce8eb]    Script Date: 02/09/2021 20:58:24 ******/
CREATE NONCLUSTERED INDEX [django_admin_log_content_type_id_c4bce8eb] ON [dbo].[django_admin_log]
(
	[content_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [django_admin_log_user_id_c564eba6]    Script Date: 02/09/2021 20:58:24 ******/
CREATE NONCLUSTERED INDEX [django_admin_log_user_id_c564eba6] ON [dbo].[django_admin_log]
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [django_content_type_app_label_model_76bd3d3b_uniq]    Script Date: 02/09/2021 20:58:24 ******/
CREATE UNIQUE NONCLUSTERED INDEX [django_content_type_app_label_model_76bd3d3b_uniq] ON [dbo].[django_content_type]
(
	[app_label] ASC,
	[model] ASC
)
WHERE ([app_label] IS NOT NULL AND [model] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [django_session_expire_date_a5c62663]    Script Date: 02/09/2021 20:58:24 ******/
CREATE NONCLUSTERED INDEX [django_session_expire_date_a5c62663] ON [dbo].[django_session]
(
	[expire_date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [pregunta_categoria_Categoria_43cafa4d_uniq]    Script Date: 02/09/2021 20:58:24 ******/
CREATE UNIQUE NONCLUSTERED INDEX [pregunta_categoria_Categoria_43cafa4d_uniq] ON [dbo].[pregunta_categoria]
(
	[Categoria] ASC
)
WHERE ([Categoria] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [pregunta_elegirrespuesta_pregunta_id_80ca01ed]    Script Date: 02/09/2021 20:58:24 ******/
CREATE NONCLUSTERED INDEX [pregunta_elegirrespuesta_pregunta_id_80ca01ed] ON [dbo].[pregunta_elegirrespuesta]
(
	[pregunta_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [pregunta_pregunta_categorias_id_739fe435]    Script Date: 02/09/2021 20:58:24 ******/
CREATE NONCLUSTERED INDEX [pregunta_pregunta_categorias_id_739fe435] ON [dbo].[pregunta_pregunta]
(
	[categorias_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [pregunta_preguntasrespondidas_pregunta_id_6a364ccb]    Script Date: 02/09/2021 20:58:24 ******/
CREATE NONCLUSTERED INDEX [pregunta_preguntasrespondidas_pregunta_id_6a364ccb] ON [dbo].[pregunta_preguntasrespondidas]
(
	[pregunta_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [usuarios_usuario_groups_group_id_e77f6dcf]    Script Date: 02/09/2021 20:58:24 ******/
CREATE NONCLUSTERED INDEX [usuarios_usuario_groups_group_id_e77f6dcf] ON [dbo].[usuarios_usuario_groups]
(
	[group_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [usuarios_usuario_groups_usuario_id_7a34077f]    Script Date: 02/09/2021 20:58:24 ******/
CREATE NONCLUSTERED INDEX [usuarios_usuario_groups_usuario_id_7a34077f] ON [dbo].[usuarios_usuario_groups]
(
	[usuario_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [usuarios_usuario_groups_usuario_id_group_id_4ed5b09e_uniq]    Script Date: 02/09/2021 20:58:24 ******/
CREATE UNIQUE NONCLUSTERED INDEX [usuarios_usuario_groups_usuario_id_group_id_4ed5b09e_uniq] ON [dbo].[usuarios_usuario_groups]
(
	[usuario_id] ASC,
	[group_id] ASC
)
WHERE ([usuario_id] IS NOT NULL AND [group_id] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [usuarios_usuario_user_permissions_permission_id_4e5c0f2f]    Script Date: 02/09/2021 20:58:24 ******/
CREATE NONCLUSTERED INDEX [usuarios_usuario_user_permissions_permission_id_4e5c0f2f] ON [dbo].[usuarios_usuario_user_permissions]
(
	[permission_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [usuarios_usuario_user_permissions_usuario_id_60aeea80]    Script Date: 02/09/2021 20:58:24 ******/
CREATE NONCLUSTERED INDEX [usuarios_usuario_user_permissions_usuario_id_60aeea80] ON [dbo].[usuarios_usuario_user_permissions]
(
	[usuario_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [usuarios_usuario_user_permissions_usuario_id_permission_id_217cadcd_uniq]    Script Date: 02/09/2021 20:58:24 ******/
CREATE UNIQUE NONCLUSTERED INDEX [usuarios_usuario_user_permissions_usuario_id_permission_id_217cadcd_uniq] ON [dbo].[usuarios_usuario_user_permissions]
(
	[usuario_id] ASC,
	[permission_id] ASC
)
WHERE ([usuario_id] IS NOT NULL AND [permission_id] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[auth_group_permissions]  WITH CHECK ADD  CONSTRAINT [auth_group_permissions_group_id_b120cbf9_fk_auth_group_id] FOREIGN KEY([group_id])
REFERENCES [dbo].[auth_group] ([id])
GO
ALTER TABLE [dbo].[auth_group_permissions] CHECK CONSTRAINT [auth_group_permissions_group_id_b120cbf9_fk_auth_group_id]
GO
ALTER TABLE [dbo].[auth_group_permissions]  WITH CHECK ADD  CONSTRAINT [auth_group_permissions_permission_id_84c5c92e_fk_auth_permission_id] FOREIGN KEY([permission_id])
REFERENCES [dbo].[auth_permission] ([id])
GO
ALTER TABLE [dbo].[auth_group_permissions] CHECK CONSTRAINT [auth_group_permissions_permission_id_84c5c92e_fk_auth_permission_id]
GO
ALTER TABLE [dbo].[auth_permission]  WITH CHECK ADD  CONSTRAINT [auth_permission_content_type_id_2f476e4b_fk_django_content_type_id] FOREIGN KEY([content_type_id])
REFERENCES [dbo].[django_content_type] ([id])
GO
ALTER TABLE [dbo].[auth_permission] CHECK CONSTRAINT [auth_permission_content_type_id_2f476e4b_fk_django_content_type_id]
GO
ALTER TABLE [dbo].[django_admin_log]  WITH CHECK ADD  CONSTRAINT [django_admin_log_content_type_id_c4bce8eb_fk_django_content_type_id] FOREIGN KEY([content_type_id])
REFERENCES [dbo].[django_content_type] ([id])
GO
ALTER TABLE [dbo].[django_admin_log] CHECK CONSTRAINT [django_admin_log_content_type_id_c4bce8eb_fk_django_content_type_id]
GO
ALTER TABLE [dbo].[django_admin_log]  WITH CHECK ADD  CONSTRAINT [django_admin_log_user_id_c564eba6_fk_usuarios_usuario_id] FOREIGN KEY([user_id])
REFERENCES [dbo].[usuarios_usuario] ([id])
GO
ALTER TABLE [dbo].[django_admin_log] CHECK CONSTRAINT [django_admin_log_user_id_c564eba6_fk_usuarios_usuario_id]
GO
ALTER TABLE [dbo].[pregunta_elegirrespuesta]  WITH CHECK ADD  CONSTRAINT [pregunta_elegirrespuesta_pregunta_id_80ca01ed_fk_pregunta_pregunta_id] FOREIGN KEY([pregunta_id])
REFERENCES [dbo].[pregunta_pregunta] ([id])
GO
ALTER TABLE [dbo].[pregunta_elegirrespuesta] CHECK CONSTRAINT [pregunta_elegirrespuesta_pregunta_id_80ca01ed_fk_pregunta_pregunta_id]
GO
ALTER TABLE [dbo].[pregunta_jugador]  WITH CHECK ADD  CONSTRAINT [pregunta_jugador_jugador_id_1daf09fc_fk_usuarios_usuario_id] FOREIGN KEY([jugador_id])
REFERENCES [dbo].[usuarios_usuario] ([id])
GO
ALTER TABLE [dbo].[pregunta_jugador] CHECK CONSTRAINT [pregunta_jugador_jugador_id_1daf09fc_fk_usuarios_usuario_id]
GO
ALTER TABLE [dbo].[pregunta_pregunta]  WITH CHECK ADD  CONSTRAINT [pregunta_pregunta_categorias_id_739fe435_fk_pregunta_categoria_id] FOREIGN KEY([categorias_id])
REFERENCES [dbo].[pregunta_categoria] ([id])
GO
ALTER TABLE [dbo].[pregunta_pregunta] CHECK CONSTRAINT [pregunta_pregunta_categorias_id_739fe435_fk_pregunta_categoria_id]
GO
ALTER TABLE [dbo].[pregunta_preguntasrespondidas]  WITH CHECK ADD  CONSTRAINT [pregunta_preguntasrespondidas_jugador_user_id_ef57cf29_fk_pregunta_jugador_id] FOREIGN KEY([jugador_user_id])
REFERENCES [dbo].[pregunta_jugador] ([id])
GO
ALTER TABLE [dbo].[pregunta_preguntasrespondidas] CHECK CONSTRAINT [pregunta_preguntasrespondidas_jugador_user_id_ef57cf29_fk_pregunta_jugador_id]
GO
ALTER TABLE [dbo].[pregunta_preguntasrespondidas]  WITH CHECK ADD  CONSTRAINT [pregunta_preguntasrespondidas_pregunta_id_6a364ccb_fk_pregunta_pregunta_id] FOREIGN KEY([pregunta_id])
REFERENCES [dbo].[pregunta_pregunta] ([id])
GO
ALTER TABLE [dbo].[pregunta_preguntasrespondidas] CHECK CONSTRAINT [pregunta_preguntasrespondidas_pregunta_id_6a364ccb_fk_pregunta_pregunta_id]
GO
ALTER TABLE [dbo].[pregunta_preguntasrespondidas]  WITH CHECK ADD  CONSTRAINT [pregunta_preguntasrespondidas_respuesta_id_f7a83558_fk_pregunta_elegirrespuesta_id] FOREIGN KEY([respuesta_id])
REFERENCES [dbo].[pregunta_elegirrespuesta] ([id])
GO
ALTER TABLE [dbo].[pregunta_preguntasrespondidas] CHECK CONSTRAINT [pregunta_preguntasrespondidas_respuesta_id_f7a83558_fk_pregunta_elegirrespuesta_id]
GO
ALTER TABLE [dbo].[usuarios_usuario_groups]  WITH CHECK ADD  CONSTRAINT [usuarios_usuario_groups_group_id_e77f6dcf_fk_auth_group_id] FOREIGN KEY([group_id])
REFERENCES [dbo].[auth_group] ([id])
GO
ALTER TABLE [dbo].[usuarios_usuario_groups] CHECK CONSTRAINT [usuarios_usuario_groups_group_id_e77f6dcf_fk_auth_group_id]
GO
ALTER TABLE [dbo].[usuarios_usuario_groups]  WITH CHECK ADD  CONSTRAINT [usuarios_usuario_groups_usuario_id_7a34077f_fk_usuarios_usuario_id] FOREIGN KEY([usuario_id])
REFERENCES [dbo].[usuarios_usuario] ([id])
GO
ALTER TABLE [dbo].[usuarios_usuario_groups] CHECK CONSTRAINT [usuarios_usuario_groups_usuario_id_7a34077f_fk_usuarios_usuario_id]
GO
ALTER TABLE [dbo].[usuarios_usuario_user_permissions]  WITH CHECK ADD  CONSTRAINT [usuarios_usuario_user_permissions_permission_id_4e5c0f2f_fk_auth_permission_id] FOREIGN KEY([permission_id])
REFERENCES [dbo].[auth_permission] ([id])
GO
ALTER TABLE [dbo].[usuarios_usuario_user_permissions] CHECK CONSTRAINT [usuarios_usuario_user_permissions_permission_id_4e5c0f2f_fk_auth_permission_id]
GO
ALTER TABLE [dbo].[usuarios_usuario_user_permissions]  WITH CHECK ADD  CONSTRAINT [usuarios_usuario_user_permissions_usuario_id_60aeea80_fk_usuarios_usuario_id] FOREIGN KEY([usuario_id])
REFERENCES [dbo].[usuarios_usuario] ([id])
GO
ALTER TABLE [dbo].[usuarios_usuario_user_permissions] CHECK CONSTRAINT [usuarios_usuario_user_permissions_usuario_id_60aeea80_fk_usuarios_usuario_id]
GO
ALTER TABLE [dbo].[django_admin_log]  WITH CHECK ADD  CONSTRAINT [django_admin_log_action_flag_a8637d59_check] CHECK  (([action_flag]>=(0)))
GO
ALTER TABLE [dbo].[django_admin_log] CHECK CONSTRAINT [django_admin_log_action_flag_a8637d59_check]
GO
USE [master]
GO
ALTER DATABASE [PREGUNCHACO] SET  READ_WRITE 
GO
