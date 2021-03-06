USE [PREGUNCHACO]
GO
/****** Object:  Table [dbo].[auth_group]    Script Date: 03/09/2021 20:05:15 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[auth_group_permissions]    Script Date: 03/09/2021 20:05:15 ******/
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
/****** Object:  Table [dbo].[auth_permission]    Script Date: 03/09/2021 20:05:15 ******/
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
/****** Object:  Table [dbo].[django_admin_log]    Script Date: 03/09/2021 20:05:15 ******/
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
/****** Object:  Table [dbo].[django_content_type]    Script Date: 03/09/2021 20:05:15 ******/
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
/****** Object:  Table [dbo].[django_migrations]    Script Date: 03/09/2021 20:05:15 ******/
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
/****** Object:  Table [dbo].[django_session]    Script Date: 03/09/2021 20:05:15 ******/
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
/****** Object:  Table [dbo].[pregunta_categoria]    Script Date: 03/09/2021 20:05:15 ******/
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
/****** Object:  Table [dbo].[pregunta_elegirrespuesta]    Script Date: 03/09/2021 20:05:15 ******/
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
/****** Object:  Table [dbo].[pregunta_jugador]    Script Date: 03/09/2021 20:05:15 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pregunta_pregunta]    Script Date: 03/09/2021 20:05:15 ******/
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
/****** Object:  Table [dbo].[pregunta_preguntasrespondidas]    Script Date: 03/09/2021 20:05:15 ******/
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
/****** Object:  Table [dbo].[usuarios_usuario]    Script Date: 03/09/2021 20:05:15 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuarios_usuario_groups]    Script Date: 03/09/2021 20:05:15 ******/
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
/****** Object:  Table [dbo].[usuarios_usuario_user_permissions]    Script Date: 03/09/2021 20:05:15 ******/
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
SET IDENTITY_INSERT [dbo].[auth_permission] ON 

INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (1, N'Can add log entry', 1, N'add_logentry')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (2, N'Can change log entry', 1, N'change_logentry')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (3, N'Can delete log entry', 1, N'delete_logentry')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (4, N'Can view log entry', 1, N'view_logentry')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (5, N'Can add permission', 2, N'add_permission')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (6, N'Can change permission', 2, N'change_permission')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (7, N'Can delete permission', 2, N'delete_permission')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (8, N'Can view permission', 2, N'view_permission')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (9, N'Can add group', 3, N'add_group')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (10, N'Can change group', 3, N'change_group')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (11, N'Can delete group', 3, N'delete_group')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (12, N'Can view group', 3, N'view_group')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (13, N'Can add content type', 4, N'add_contenttype')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (14, N'Can change content type', 4, N'change_contenttype')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (15, N'Can delete content type', 4, N'delete_contenttype')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (16, N'Can view content type', 4, N'view_contenttype')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (17, N'Can add session', 5, N'add_session')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (18, N'Can change session', 5, N'change_session')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (19, N'Can delete session', 5, N'delete_session')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (20, N'Can view session', 5, N'view_session')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (21, N'Can add user', 6, N'add_usuario')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (22, N'Can change user', 6, N'change_usuario')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (23, N'Can delete user', 6, N'delete_usuario')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (24, N'Can view user', 6, N'view_usuario')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (25, N'Can add pregunta', 7, N'add_pregunta')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (26, N'Can change pregunta', 7, N'change_pregunta')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (27, N'Can delete pregunta', 7, N'delete_pregunta')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (28, N'Can view pregunta', 7, N'view_pregunta')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (29, N'Can add elegir respuesta', 8, N'add_elegirrespuesta')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (30, N'Can change elegir respuesta', 8, N'change_elegirrespuesta')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (31, N'Can delete elegir respuesta', 8, N'delete_elegirrespuesta')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (32, N'Can view elegir respuesta', 8, N'view_elegirrespuesta')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (33, N'Can add categoria', 9, N'add_categoria')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (34, N'Can change categoria', 9, N'change_categoria')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (35, N'Can delete categoria', 9, N'delete_categoria')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (36, N'Can view categoria', 9, N'view_categoria')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (37, N'Can add jugador', 10, N'add_jugador')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (38, N'Can change jugador', 10, N'change_jugador')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (39, N'Can delete jugador', 10, N'delete_jugador')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (40, N'Can view jugador', 10, N'view_jugador')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (41, N'Can add preguntas respondidas', 11, N'add_preguntasrespondidas')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (42, N'Can change preguntas respondidas', 11, N'change_preguntasrespondidas')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (43, N'Can delete preguntas respondidas', 11, N'delete_preguntasrespondidas')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (44, N'Can view preguntas respondidas', 11, N'view_preguntasrespondidas')
SET IDENTITY_INSERT [dbo].[auth_permission] OFF
GO
SET IDENTITY_INSERT [dbo].[django_admin_log] ON 

INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (1, CAST(N'2021-08-30T18:19:18.6924870' AS DateTime2), N'1', N'Geografía', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (2, CAST(N'2021-08-30T18:19:28.9359100' AS DateTime2), N'2', N'Cultura y Arte', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (3, CAST(N'2021-08-30T18:19:33.8880530' AS DateTime2), N'3', N'Historia', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (4, CAST(N'2021-08-30T18:20:04.5544120' AS DateTime2), N'4', N'Deporte', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (5, CAST(N'2021-08-30T18:20:36.3679580' AS DateTime2), N'5', N'Economía', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (6, CAST(N'2021-08-30T18:20:40.8554380' AS DateTime2), N'6', N'Ciencia y Educación', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (7, CAST(N'2021-08-30T18:20:47.4559000' AS DateTime2), N'7', N'Entretenimiento', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (8, CAST(N'2021-08-30T18:29:36.3422020' AS DateTime2), N'1', N'Resistencia es conocida como', 1, N'[{"added": {}}, {"added": {"name": "elegir respuesta", "object": "La ciudad de las esculturas"}}, {"added": {"name": "elegir respuesta", "object": "Ciudad Museo"}}, {"added": {"name": "elegir respuesta", "object": "Ciudad Capital"}}]', 7, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (9, CAST(N'2021-08-30T18:32:01.3420920' AS DateTime2), N'2', N'¿Cuántas esculturas hay en Resistencia?', 1, N'[{"added": {}}, {"added": {"name": "elegir respuesta", "object": "200"}}, {"added": {"name": "elegir respuesta", "object": "700"}}, {"added": {"name": "elegir respuesta", "object": "600"}}]', 7, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (10, CAST(N'2021-08-30T18:32:10.1390740' AS DateTime2), N'1', N'Resistencia es conocida como', 2, N'[{"changed": {"fields": ["Maximo Puntaje"]}}]', 7, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (11, CAST(N'2021-08-30T18:33:15.5265440' AS DateTime2), N'3', N'En la bandera del Chaco hay un arado rodeado de 25 estrellas ¿Qué representan?', 1, N'[{"added": {}}, {"added": {"name": "elegir respuesta", "object": "Las ciudades principales"}}, {"added": {"name": "elegir respuesta", "object": "Los departamentos provinciales"}}, {"added": {"name": "elegir respuesta", "object": "Grandes personajes que forzaron Chaco"}}]', 7, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (12, CAST(N'2021-08-30T18:33:57.6974720' AS DateTime2), N'4', N'En un emblemático edificio de la ciudad de Resistencia se encuentra un mural del reconocido pintor Emilio Pettoruti ¿Dónde se encuentra emplazado?', 1, N'[{"added": {}}, {"added": {"name": "elegir respuesta", "object": "La Municipalidad de la Ciudad"}}, {"added": {"name": "elegir respuesta", "object": "El Fog\u00f3n de los Arrieros"}}, {"added": {"name": "elegir respuesta", "object": "Casa de Gobierno"}}]', 7, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (13, CAST(N'2021-08-30T18:34:40.8611480' AS DateTime2), N'5', N'La Fiesta Provincial del Inmigrante se realiza en', 1, N'[{"added": {}}, {"added": {"name": "elegir respuesta", "object": "Castelli"}}, {"added": {"name": "elegir respuesta", "object": "Las Bre\u00f1as"}}, {"added": {"name": "elegir respuesta", "object": "Puerto Tirol"}}]', 7, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (14, CAST(N'2021-08-30T18:36:25.5626840' AS DateTime2), N'6', N'El ex ferrocarril General Belgrano conectaba a:', 1, N'[{"added": {}}, {"added": {"name": "elegir respuesta", "object": "Puerto de Barranqueras con Formosa"}}, {"added": {"name": "elegir respuesta", "object": "Puerto de Barranqueras con Salta"}}, {"added": {"name": "elegir respuesta", "object": "Puerto de Barranquera con Santiago del Estero"}}]', 7, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (15, CAST(N'2021-08-30T18:36:58.2821170' AS DateTime2), N'7', N'¿Quién fue el primer gobernador del Territorio Nacional del Chaco?', 1, N'[{"added": {}}, {"added": {"name": "elegir respuesta", "object": "Gral. Lorenzo Winter"}}, {"added": {"name": "elegir respuesta", "object": "Gral. Julio de Vedia"}}, {"added": {"name": "elegir respuesta", "object": "Gral. Antonio D\u00f3novan"}}]', 7, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (16, CAST(N'2021-08-30T18:37:58.5379770' AS DateTime2), N'8', N'El Puente General Belgrano que une las provincias de Chaco y Corrientes se terminó de construir en:', 1, N'[{"added": {}}, {"added": {"name": "elegir respuesta", "object": "1973"}}, {"added": {"name": "elegir respuesta", "object": "1974"}}, {"added": {"name": "elegir respuesta", "object": "1976"}}]', 7, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (17, CAST(N'2021-08-30T18:39:58.2984120' AS DateTime2), N'9', N'La primera ciudad colonial del Chaco fue', 1, N'[{"added": {}}, {"added": {"name": "elegir respuesta", "object": "Esteco"}}, {"added": {"name": "elegir respuesta", "object": "Concepci\u00f3n del Bermejo"}}, {"added": {"name": "elegir respuesta", "object": "San Fernando del R\u00edo Negro"}}]', 7, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (18, CAST(N'2021-08-30T18:40:53.3228150' AS DateTime2), N'10', N'Nuestra primera constitución se promulgó en', 1, N'[{"added": {}}, {"added": {"name": "elegir respuesta", "object": "1951"}}, {"added": {"name": "elegir respuesta", "object": "1994"}}, {"added": {"name": "elegir respuesta", "object": "1862"}}]', 7, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (19, CAST(N'2021-08-30T18:41:24.5314580' AS DateTime2), N'11', N'En el ámbito automovilístico deportivo Chaco tiene un exponente a nivel nacional e internacional, ¿Quién es?', 1, N'[{"added": {}}, {"added": {"name": "elegir respuesta", "object": "Juan Manuel Silva"}}, {"added": {"name": "elegir respuesta", "object": "Giorgio Carrara"}}, {"added": {"name": "elegir respuesta", "object": "Marcos Siebert"}}]', 7, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (20, CAST(N'2021-08-30T18:42:24.3488200' AS DateTime2), N'12', N'En el ámbito de los juegos olímpicos, el Chaco tiene un medallista en:', 1, N'[{"added": {}}, {"added": {"name": "elegir respuesta", "object": "B\u00e1squet"}}, {"added": {"name": "elegir respuesta", "object": "F\u00fatbol"}}, {"added": {"name": "elegir respuesta", "object": "Hockey"}}]', 7, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (21, CAST(N'2021-08-30T18:42:57.1177950' AS DateTime2), N'13', N'Marcela Gómez, chaqueña, participó en los Juegos Olímpicos de Tokio en:', 1, N'[{"added": {}}, {"added": {"name": "elegir respuesta", "object": "Nataci\u00f3n"}}, {"added": {"name": "elegir respuesta", "object": "Remo"}}, {"added": {"name": "elegir respuesta", "object": "Atletismo"}}]', 7, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (22, CAST(N'2021-08-30T18:43:33.9047040' AS DateTime2), N'14', N'El club de fútbol más antiguo del Chaco es', 1, N'[{"added": {}}, {"added": {"name": "elegir respuesta", "object": "For Ever"}}, {"added": {"name": "elegir respuesta", "object": "Sarmiento"}}, {"added": {"name": "elegir respuesta", "object": "Don Orione"}}]', 7, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (23, CAST(N'2021-08-30T18:44:27.3393820' AS DateTime2), N'15', N'La ciudad de las Breñas logró jugar en el Campeonato Argentino de Clubes en', 1, N'[{"added": {}}, {"added": {"name": "elegir respuesta", "object": "Baloncesto"}}, {"added": {"name": "elegir respuesta", "object": "F\u00fatbol"}}, {"added": {"name": "elegir respuesta", "object": "Nataci\u00f3n"}}, {"added": {"name": "elegir respuesta", "object": "Tiro"}}]', 7, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (24, CAST(N'2021-08-30T18:46:11.2121480' AS DateTime2), N'16', N'¿En qué sectores se divide geográficamente la provincia del Chaco?', 1, N'[{"added": {}}, {"added": {"name": "elegir respuesta", "object": "Litoral Chaque\u00f1o, centro Chaque\u00f1o e Impenetrable Chaque\u00f1o"}}, {"added": {"name": "elegir respuesta", "object": "Litoral Chaque\u00f1o e Impenetrable Chaque\u00f1o"}}, {"added": {"name": "elegir respuesta", "object": "Chaco Boreal y Chaco Austral"}}]', 7, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (25, CAST(N'2021-08-30T18:47:25.6896800' AS DateTime2), N'17', N'Campo del Cielo: Patrimonio Cultural y Turístico del Chaco, ¿Dónde se ubica?', 1, N'[{"added": {}}, {"added": {"name": "elegir respuesta", "object": "Maip\u00fa"}}, {"added": {"name": "elegir respuesta", "object": "Bermejo"}}, {"added": {"name": "elegir respuesta", "object": "12 de Octubre"}}]', 7, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (26, CAST(N'2021-08-30T18:48:01.3157640' AS DateTime2), N'18', N'Al norte el límite natural establecido entre la Provincia de Chaco y Formosa es:', 1, N'[{"added": {}}, {"added": {"name": "elegir respuesta", "object": "Pilcomayo"}}, {"added": {"name": "elegir respuesta", "object": "Paran\u00e1"}}, {"added": {"name": "elegir respuesta", "object": "Bermejo"}}]', 7, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (27, CAST(N'2021-08-30T18:48:22.8968270' AS DateTime2), N'19', N'Al sur, el límite establecido entre la Provincia del Chaco y Santa Fe es:', 1, N'[{"added": {}}, {"added": {"name": "elegir respuesta", "object": "a)\tParalelo 28"}}, {"added": {"name": "elegir respuesta", "object": "b)\tParalelo 30"}}, {"added": {"name": "elegir respuesta", "object": "c)\tParalelo 29"}}]', 7, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (28, CAST(N'2021-08-30T18:49:02.3403010' AS DateTime2), N'20', N'¿Cuántos departamentos tiene la provincia del Chaco?', 1, N'[{"added": {}}, {"added": {"name": "elegir respuesta", "object": "25"}}, {"added": {"name": "elegir respuesta", "object": "20"}}, {"added": {"name": "elegir respuesta", "object": "10"}}]', 7, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (29, CAST(N'2021-08-30T18:51:21.7578880' AS DateTime2), N'21', N'La producción destacada chaqueña que perdura en la memoria y porla cual se la reconoce a la provincia fue:', 1, N'[{"added": {}}, {"added": {"name": "elegir respuesta", "object": "Ca\u00f1a de az\u00facar"}}, {"added": {"name": "elegir respuesta", "object": "Algod\u00f3n"}}, {"added": {"name": "elegir respuesta", "object": "Producci\u00f3n de tanino"}}]', 7, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (30, CAST(N'2021-08-30T18:52:25.0454500' AS DateTime2), N'22', N'A inicios del siglo XX, la actividad económica más importante del territorio era', 1, N'[{"added": {}}, {"added": {"name": "elegir respuesta", "object": "Algod\u00f3n"}}, {"added": {"name": "elegir respuesta", "object": "Pesca"}}, {"added": {"name": "elegir respuesta", "object": "Caza"}}]', 7, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (31, CAST(N'2021-08-30T18:53:10.5362060' AS DateTime2), N'23', N'El tanino se desarrolló en', 1, N'[{"added": {}}, {"added": {"name": "elegir respuesta", "object": "Vicentini"}}, {"added": {"name": "elegir respuesta", "object": "La Verde"}}, {"added": {"name": "elegir respuesta", "object": "La Escondida"}}]', 7, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (32, CAST(N'2021-08-30T18:57:35.3798410' AS DateTime2), N'24', N'¿Que localidad es conocida por ser algodonera?', 1, N'[{"added": {}}, {"added": {"name": "elegir respuesta", "object": "Resistencia"}}, {"added": {"name": "elegir respuesta", "object": "Margarita Bel\u00e9n"}}, {"added": {"name": "elegir respuesta", "object": "Quitilipi"}}]', 7, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (33, CAST(N'2021-08-30T18:58:34.2398960' AS DateTime2), N'25', N'Las Reservas Naturales del Chaco son', 1, N'[{"added": {}}, {"added": {"name": "elegir respuesta", "object": "Villa R\u00edo Bermejito"}}, {"added": {"name": "elegir respuesta", "object": "Parque Provincial Loro Hablador"}}, {"added": {"name": "elegir respuesta", "object": "Campo del Cielo"}}]', 7, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (34, CAST(N'2021-08-30T18:59:17.0748250' AS DateTime2), N'26', N'La población actual del Chaco oscila entre:', 1, N'[{"added": {}}, {"added": {"name": "elegir respuesta", "object": "300.000"}}, {"added": {"name": "elegir respuesta", "object": "2.000.000"}}, {"added": {"name": "elegir respuesta", "object": "1.000.000"}}]', 7, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (35, CAST(N'2021-08-30T19:00:51.0204120' AS DateTime2), N'27', N'Un escritor reconocido en el ámbito chaqueño recibió el Premio Pionero de la Letras Chaqueñas, otorgado por la provincia del Chaco y la SADE local en 1985. ¿Quién fue?', 1, N'[{"added": {}}, {"added": {"name": "elegir respuesta", "object": "Tony Zalazar"}}, {"added": {"name": "elegir respuesta", "object": "Aledo Luis Meloni"}}, {"added": {"name": "elegir respuesta", "object": "Tete Romero"}}]', 7, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (36, CAST(N'2021-08-30T19:01:28.1304860' AS DateTime2), N'28', N'¿Cuál es la flor provincial del Chaco?', 1, N'[{"added": {}}, {"added": {"name": "elegir respuesta", "object": "Flor del cardo"}}, {"added": {"name": "elegir respuesta", "object": "Flor del Ceibo"}}, {"added": {"name": "elegir respuesta", "object": "Flor rosada del palo borracho"}}]', 7, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (37, CAST(N'2021-08-30T19:13:40.1379290' AS DateTime2), N'29', N'La ley 1532 divido a la Gobernación del Chaco en', 1, N'[{"added": {}}, {"added": {"name": "elegir respuesta", "object": "Dos Gobernaciones (Chaco Austral y Chaco Central)"}}, {"added": {"name": "elegir respuesta", "object": "Tres Gobernaciones"}}, {"added": {"name": "elegir respuesta", "object": "Cuatro Gobernaciones"}}]', 7, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (38, CAST(N'2021-08-30T19:14:22.7839480' AS DateTime2), N'30', N'¿Qué Parques Nacionales existen en el Chaco?', 1, N'[{"added": {}}, {"added": {"name": "elegir respuesta", "object": "Parque Nacional Chaco"}}, {"added": {"name": "elegir respuesta", "object": "Parque Nacional El Impenetrable"}}, {"added": {"name": "elegir respuesta", "object": "Parque Nacional Iber\u00e1"}}]', 7, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (39, CAST(N'2021-08-30T19:15:00.4939750' AS DateTime2), N'31', N'Por Decreto N° 1491 el Gobierno de la Provincia del Chaco se declaró a un instrumento musical como “Patrimonio Cultural de la provincia del Chaco”, ¿Cuál es?', 1, N'[{"added": {}}, {"added": {"name": "elegir respuesta", "object": "Acorde\u00f3n"}}, {"added": {"name": "elegir respuesta", "object": "N\u00b4vik\u00e9"}}, {"added": {"name": "elegir respuesta", "object": "Charango"}}]', 7, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (40, CAST(N'2021-08-30T19:15:48.6677190' AS DateTime2), N'32', N'Un conjunto coral chaqueño fue reconocido como “Patrimonio Cultural Viviente” ¿Cuál es?', 1, N'[{"added": {}}, {"added": {"name": "elegir respuesta", "object": "El coro polif\u00f3nico de Resistencia"}}, {"added": {"name": "elegir respuesta", "object": "El coro de ni\u00f1os"}}, {"added": {"name": "elegir respuesta", "object": "El coro Chelaalap\u00ed"}}]', 7, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (41, CAST(N'2021-08-30T19:18:07.8015410' AS DateTime2), N'33', N'¿En que ciudad nació Luis Landriscina?', 1, N'[{"added": {}}, {"added": {"name": "elegir respuesta", "object": "Villa Angela"}}, {"added": {"name": "elegir respuesta", "object": "Colonia Baranda"}}, {"added": {"name": "elegir respuesta", "object": "Juan Jos\u00e9 Castelli"}}]', 7, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (42, CAST(N'2021-08-30T19:19:42.9335910' AS DateTime2), N'34', N'Desde que año se realiza la Bienal Internacional de Esculturas', 1, N'[{"added": {}}, {"added": {"name": "elegir respuesta", "object": "1992"}}, {"added": {"name": "elegir respuesta", "object": "1988"}}, {"added": {"name": "elegir respuesta", "object": "1998"}}]', 7, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (43, CAST(N'2021-08-30T19:20:55.0247080' AS DateTime2), N'35', N'¿Que reconocido cantante vive en la ciudad de Resistencia?', 1, N'[{"added": {}}, {"added": {"name": "elegir respuesta", "object": "El Chaque\u00f1o Palavecino"}}, {"added": {"name": "elegir respuesta", "object": "Axel"}}, {"added": {"name": "elegir respuesta", "object": "Abel Pintos"}}]', 7, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (44, CAST(N'2021-08-30T19:26:05.1840410' AS DateTime2), N'30', N'¿Qué Parques Nacional existe en el Chaco?', 2, N'[{"changed": {"fields": ["Texto de la pregunta"]}}]', 7, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (45, CAST(N'2021-08-30T19:26:15.3543130' AS DateTime2), N'30', N'¿Qué Parque Nacional existe en el Chaco?', 2, N'[{"changed": {"fields": ["Texto de la pregunta"]}}]', 7, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (67, CAST(N'2021-08-31T16:26:42.6713710' AS DateTime2), N'1', N'pregunChaco', 2, N'[{"changed": {"fields": ["Username"]}}]', 6, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (68, CAST(N'2021-08-31T16:27:49.0628860' AS DateTime2), N'2', N'carlos', 3, N'', 6, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (69, CAST(N'2021-09-01T15:44:09.0844850' AS DateTime2), N'328', N'PreguntasRespondidas object (328)', 3, N'', 11, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (70, CAST(N'2021-09-01T15:44:09.1184870' AS DateTime2), N'327', N'PreguntasRespondidas object (327)', 3, N'', 11, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (71, CAST(N'2021-09-01T15:44:09.1224840' AS DateTime2), N'326', N'PreguntasRespondidas object (326)', 3, N'', 11, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (72, CAST(N'2021-09-01T15:44:09.1244830' AS DateTime2), N'325', N'PreguntasRespondidas object (325)', 3, N'', 11, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (73, CAST(N'2021-09-01T15:44:09.1264830' AS DateTime2), N'324', N'PreguntasRespondidas object (324)', 3, N'', 11, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (74, CAST(N'2021-09-01T15:44:09.1284830' AS DateTime2), N'323', N'PreguntasRespondidas object (323)', 3, N'', 11, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (75, CAST(N'2021-09-01T15:44:09.1304850' AS DateTime2), N'322', N'PreguntasRespondidas object (322)', 3, N'', 11, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (76, CAST(N'2021-09-01T15:44:09.1324830' AS DateTime2), N'321', N'PreguntasRespondidas object (321)', 3, N'', 11, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (77, CAST(N'2021-09-01T15:44:09.1344840' AS DateTime2), N'320', N'PreguntasRespondidas object (320)', 3, N'', 11, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (78, CAST(N'2021-09-01T15:44:09.1364830' AS DateTime2), N'319', N'PreguntasRespondidas object (319)', 3, N'', 11, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (79, CAST(N'2021-09-01T15:44:09.1404820' AS DateTime2), N'318', N'PreguntasRespondidas object (318)', 3, N'', 11, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (80, CAST(N'2021-09-01T15:44:09.1424820' AS DateTime2), N'317', N'PreguntasRespondidas object (317)', 3, N'', 11, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (81, CAST(N'2021-09-01T15:44:09.1444810' AS DateTime2), N'316', N'PreguntasRespondidas object (316)', 3, N'', 11, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (82, CAST(N'2021-09-01T15:44:09.1464860' AS DateTime2), N'315', N'PreguntasRespondidas object (315)', 3, N'', 11, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (83, CAST(N'2021-09-01T15:44:09.1484830' AS DateTime2), N'314', N'PreguntasRespondidas object (314)', 3, N'', 11, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (84, CAST(N'2021-09-01T15:44:09.1504850' AS DateTime2), N'313', N'PreguntasRespondidas object (313)', 3, N'', 11, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (85, CAST(N'2021-09-01T15:44:09.1524830' AS DateTime2), N'312', N'PreguntasRespondidas object (312)', 3, N'', 11, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (86, CAST(N'2021-09-01T15:44:09.1564820' AS DateTime2), N'311', N'PreguntasRespondidas object (311)', 3, N'', 11, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (87, CAST(N'2021-09-01T15:44:09.1584830' AS DateTime2), N'310', N'PreguntasRespondidas object (310)', 3, N'', 11, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (88, CAST(N'2021-09-01T15:44:09.1614820' AS DateTime2), N'309', N'PreguntasRespondidas object (309)', 3, N'', 11, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (89, CAST(N'2021-09-01T15:44:09.1634820' AS DateTime2), N'308', N'PreguntasRespondidas object (308)', 3, N'', 11, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (90, CAST(N'2021-09-01T15:44:09.1654820' AS DateTime2), N'307', N'PreguntasRespondidas object (307)', 3, N'', 11, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (91, CAST(N'2021-09-01T15:44:09.1684830' AS DateTime2), N'306', N'PreguntasRespondidas object (306)', 3, N'', 11, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (92, CAST(N'2021-09-01T15:44:09.1744790' AS DateTime2), N'305', N'PreguntasRespondidas object (305)', 3, N'', 11, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (93, CAST(N'2021-09-01T17:06:37.7931090' AS DateTime2), N'4', N'Jugador object (4)', 3, N'', 10, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (94, CAST(N'2021-09-01T17:06:37.8400070' AS DateTime2), N'3', N'Jugador object (3)', 3, N'', 10, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (95, CAST(N'2021-09-01T21:11:04.4132580' AS DateTime2), N'3', N'carlos', 2, N'[{"changed": {"fields": ["Staff status"]}}]', 6, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (96, CAST(N'2021-09-01T21:12:28.3995000' AS DateTime2), N'3', N'carlos', 2, N'[{"changed": {"fields": ["Superuser status"]}}]', 6, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (97, CAST(N'2021-09-01T22:45:46.7440550' AS DateTime2), N'6', N'Jugador object (6)', 3, N'', 10, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (98, CAST(N'2021-09-01T22:45:46.7440550' AS DateTime2), N'5', N'Jugador object (5)', 3, N'', 10, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (99, CAST(N'2021-09-02T23:53:52.1245660' AS DateTime2), N'7', N'Jugador object (7)', 3, N'', 10, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (100, CAST(N'2021-09-02T23:54:39.7805660' AS DateTime2), N'4', N'carlos2', 3, N'', 6, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (101, CAST(N'2021-09-02T23:54:39.7875720' AS DateTime2), N'3', N'carlos', 3, N'', 6, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (102, CAST(N'2021-09-02T23:55:12.4185660' AS DateTime2), N'1', N'admin', 2, N'[{"changed": {"fields": ["Username"]}}]', 6, 1)
SET IDENTITY_INSERT [dbo].[django_admin_log] OFF
GO
SET IDENTITY_INSERT [dbo].[django_content_type] ON 

INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (1, N'admin', N'logentry')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (3, N'auth', N'group')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (2, N'auth', N'permission')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (4, N'contenttypes', N'contenttype')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (9, N'pregunta', N'categoria')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (8, N'pregunta', N'elegirrespuesta')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (10, N'pregunta', N'jugador')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (7, N'pregunta', N'pregunta')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (11, N'pregunta', N'preguntasrespondidas')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (5, N'sessions', N'session')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (6, N'usuarios', N'usuario')
SET IDENTITY_INSERT [dbo].[django_content_type] OFF
GO
SET IDENTITY_INSERT [dbo].[django_migrations] ON 

INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (1, N'contenttypes', N'0001_initial', CAST(N'2021-08-30T18:16:40.6639910' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (2, N'contenttypes', N'0002_remove_content_type_name', CAST(N'2021-08-30T18:16:41.3079810' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (3, N'auth', N'0001_initial', CAST(N'2021-08-30T18:16:41.3359820' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (4, N'auth', N'0002_alter_permission_name_max_length', CAST(N'2021-08-30T18:16:41.3648800' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (5, N'auth', N'0003_alter_user_email_max_length', CAST(N'2021-08-30T18:16:41.3768810' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (6, N'auth', N'0004_alter_user_username_opts', CAST(N'2021-08-30T18:16:41.3891440' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (7, N'auth', N'0005_alter_user_last_login_null', CAST(N'2021-08-30T18:16:41.4001190' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (8, N'auth', N'0006_require_contenttypes_0002', CAST(N'2021-08-30T18:16:41.4081300' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (9, N'auth', N'0007_alter_validators_add_error_messages', CAST(N'2021-08-30T18:16:41.4201300' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (10, N'auth', N'0008_alter_user_username_max_length', CAST(N'2021-08-30T18:16:41.4341290' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (11, N'auth', N'0009_alter_user_last_name_max_length', CAST(N'2021-08-30T18:16:41.4461290' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (12, N'auth', N'0010_alter_group_name_max_length', CAST(N'2021-08-30T18:16:42.0441290' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (13, N'auth', N'0011_update_proxy_permissions', CAST(N'2021-08-30T18:16:42.0561320' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (14, N'usuarios', N'0001_initial', CAST(N'2021-08-30T18:16:42.0791290' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (15, N'admin', N'0001_initial', CAST(N'2021-08-30T18:16:42.1191300' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (16, N'admin', N'0002_logentry_remove_auto_add', CAST(N'2021-08-30T18:16:42.1411300' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (17, N'admin', N'0003_logentry_add_action_flag_choices', CAST(N'2021-08-30T18:16:42.1551320' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (18, N'pregunta', N'0001_initial', CAST(N'2021-08-30T18:16:42.1711300' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (19, N'pregunta', N'0002_categoria', CAST(N'2021-08-30T18:16:42.1861290' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (20, N'pregunta', N'0003_auto_20210824_1602', CAST(N'2021-08-30T18:16:42.8070550' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (21, N'pregunta', N'0004_jugador_preguntasrespondidas', CAST(N'2021-08-30T18:16:42.8488320' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (22, N'pregunta', N'0005_auto_20210827_0401', CAST(N'2021-08-30T18:16:43.6503270' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (23, N'pregunta', N'0006_auto_20210827_1854', CAST(N'2021-08-30T18:16:44.2920140' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (24, N'pregunta', N'0007_auto_20210827_2147', CAST(N'2021-08-30T18:16:44.3570140' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (25, N'pregunta', N'0008_auto_20210827_2214', CAST(N'2021-08-30T18:16:44.3950140' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (26, N'pregunta', N'0009_auto_20210828_2001', CAST(N'2021-08-30T18:16:44.4140150' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (27, N'pregunta', N'0010_auto_20210828_2012', CAST(N'2021-08-30T18:16:44.4300130' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (28, N'sessions', N'0001_initial', CAST(N'2021-08-30T18:16:44.4400140' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (29, N'pregunta', N'0011_jugador_mejor_puntuacion', CAST(N'2021-08-31T16:19:49.4415390' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (30, N'pregunta', N'0012_auto_20210830_1931', CAST(N'2021-08-31T16:19:49.4685360' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (31, N'pregunta', N'0013_auto_20210831_1319', CAST(N'2021-08-31T16:19:49.4958020' AS DateTime2))
SET IDENTITY_INSERT [dbo].[django_migrations] OFF
GO
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'6fr81mwy1uzbpyl54wt9o8y5b4ql1l28', N'ODI2M2M1ZDk4MWM1YTQzYmVkYWNjZDlmMDNjYjdmMjVlMDNiZWZiMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3ODc4YTA5NjkwZjg3MjNjNzU4YzFiMWUzNzViYmJmMjZjZTkxN2RkIn0=', CAST(N'2021-09-15T02:05:27.1462930' AS DateTime2))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'9l86prjkdvlo426p34t3ottu1xvgovea', N'ODI2M2M1ZDk4MWM1YTQzYmVkYWNjZDlmMDNjYjdmMjVlMDNiZWZiMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3ODc4YTA5NjkwZjg3MjNjNzU4YzFiMWUzNzViYmJmMjZjZTkxN2RkIn0=', CAST(N'2021-09-13T19:23:30.3208630' AS DateTime2))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'd6c28j0iwx0ougxph4lfxjaz8tarxu6y', N'ODI2M2M1ZDk4MWM1YTQzYmVkYWNjZDlmMDNjYjdmMjVlMDNiZWZiMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3ODc4YTA5NjkwZjg3MjNjNzU4YzFiMWUzNzViYmJmMjZjZTkxN2RkIn0=', CAST(N'2021-09-17T02:54:16.1648970' AS DateTime2))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'f9hoggm5d7gewt63tc96pb6czqsuu6t8', N'ODI2M2M1ZDk4MWM1YTQzYmVkYWNjZDlmMDNjYjdmMjVlMDNiZWZiMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3ODc4YTA5NjkwZjg3MjNjNzU4YzFiMWUzNzViYmJmMjZjZTkxN2RkIn0=', CAST(N'2021-09-13T18:18:13.2659520' AS DateTime2))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'kc2qly0f0qipi4bcbnnmtufuaplfgxah', N'ODI2M2M1ZDk4MWM1YTQzYmVkYWNjZDlmMDNjYjdmMjVlMDNiZWZiMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3ODc4YTA5NjkwZjg3MjNjNzU4YzFiMWUzNzViYmJmMjZjZTkxN2RkIn0=', CAST(N'2021-09-15T01:00:47.1883060' AS DateTime2))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'lntwgn06hbtxwmg0ty0gzypkdh6lhka0', N'ODI2M2M1ZDk4MWM1YTQzYmVkYWNjZDlmMDNjYjdmMjVlMDNiZWZiMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3ODc4YTA5NjkwZjg3MjNjNzU4YzFiMWUzNzViYmJmMjZjZTkxN2RkIn0=', CAST(N'2021-09-17T03:06:00.2436240' AS DateTime2))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'nyvo24t6q8s0fms32q9o9271z6ihitta', N'ODI2M2M1ZDk4MWM1YTQzYmVkYWNjZDlmMDNjYjdmMjVlMDNiZWZiMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3ODc4YTA5NjkwZjg3MjNjNzU4YzFiMWUzNzViYmJmMjZjZTkxN2RkIn0=', CAST(N'2021-09-16T03:29:30.7873490' AS DateTime2))
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'zicoxkyfxjupf19l65lhttjkxrv02cqw', N'ODI2M2M1ZDk4MWM1YTQzYmVkYWNjZDlmMDNjYjdmMjVlMDNiZWZiMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3ODc4YTA5NjkwZjg3MjNjNzU4YzFiMWUzNzViYmJmMjZjZTkxN2RkIn0=', CAST(N'2021-09-14T17:25:14.0636780' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[pregunta_categoria] ON 

INSERT [dbo].[pregunta_categoria] ([id], [Categoria]) VALUES (1, N'Geografía')
INSERT [dbo].[pregunta_categoria] ([id], [Categoria]) VALUES (2, N'Cultura y Arte')
INSERT [dbo].[pregunta_categoria] ([id], [Categoria]) VALUES (3, N'Historia')
INSERT [dbo].[pregunta_categoria] ([id], [Categoria]) VALUES (4, N'Deporte')
INSERT [dbo].[pregunta_categoria] ([id], [Categoria]) VALUES (5, N'Economía')
INSERT [dbo].[pregunta_categoria] ([id], [Categoria]) VALUES (6, N'Ciencia y Educación')
INSERT [dbo].[pregunta_categoria] ([id], [Categoria]) VALUES (7, N'Entretenimiento')
SET IDENTITY_INSERT [dbo].[pregunta_categoria] OFF
GO
SET IDENTITY_INSERT [dbo].[pregunta_elegirrespuesta] ON 

INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (1, 1, N'La ciudad de las esculturas', 1)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (2, 0, N'Ciudad Museo', 1)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (3, 0, N'Ciudad Capital', 1)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (4, 0, N'200', 2)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (5, 0, N'700', 2)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (6, 1, N'600', 2)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (7, 0, N'Las ciudades principales', 3)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (8, 1, N'Los departamentos provinciales', 3)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (9, 0, N'Grandes personajes que forzaron Chaco', 3)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (10, 0, N'La Municipalidad de la Ciudad', 4)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (11, 0, N'El Fogón de los Arrieros', 4)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (12, 1, N'Casa de Gobierno', 4)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (13, 0, N'Castelli', 5)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (14, 1, N'Las Breñas', 5)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (15, 0, N'Puerto Tirol', 5)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (16, 0, N'Puerto de Barranqueras con Formosa', 6)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (17, 1, N'Puerto de Barranqueras con Salta', 6)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (18, 0, N'Puerto de Barranquera con Santiago del Estero', 6)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (19, 0, N'Gral. Lorenzo Winter', 7)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (20, 1, N'Gral. Julio de Vedia', 7)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (21, 0, N'Gral. Antonio Dónovan', 7)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (22, 0, N'1973', 8)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (23, 1, N'1974', 8)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (24, 0, N'1976', 8)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (25, 0, N'Esteco', 9)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (26, 1, N'Concepción del Bermejo', 9)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (27, 0, N'San Fernando del Río Negro', 9)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (28, 1, N'1951', 10)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (29, 0, N'1994', 10)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (30, 0, N'1862', 10)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (31, 1, N'Juan Manuel Silva', 11)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (32, 0, N'Giorgio Carrara', 11)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (33, 0, N'Marcos Siebert', 11)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (34, 1, N'Básquet', 12)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (35, 0, N'Fútbol', 12)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (36, 0, N'Hockey', 12)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (37, 0, N'Natación', 13)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (38, 0, N'Remo', 13)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (39, 1, N'Atletismo', 13)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (40, 0, N'For Ever', 14)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (41, 1, N'Sarmiento', 14)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (42, 0, N'Don Orione', 14)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (43, 1, N'Baloncesto', 15)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (44, 0, N'Fútbol', 15)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (45, 0, N'Natación', 15)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (46, 0, N'Tiro', 15)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (47, 1, N'Litoral Chaqueño, centro Chaqueño e Impenetrable Chaqueño', 16)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (48, 0, N'Litoral Chaqueño e Impenetrable Chaqueño', 16)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (49, 0, N'Chaco Boreal y Chaco Austral', 16)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (50, 0, N'Maipú', 17)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (51, 0, N'Bermejo', 17)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (52, 1, N'12 de Octubre', 17)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (53, 0, N'Pilcomayo', 18)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (54, 0, N'Paraná', 18)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (55, 1, N'Bermejo', 18)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (56, 1, N'a)	Paralelo 28', 19)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (57, 0, N'b)	Paralelo 30', 19)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (58, 0, N'c)	Paralelo 29', 19)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (59, 1, N'25', 20)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (60, 0, N'20', 20)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (61, 0, N'10', 20)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (62, 0, N'Caña de azúcar', 21)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (63, 1, N'Algodón', 21)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (64, 0, N'Producción de tanino', 21)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (65, 1, N'Algodón', 22)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (66, 0, N'Pesca', 22)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (67, 0, N'Caza', 22)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (68, 1, N'Vicentini', 23)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (69, 0, N'La Verde', 23)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (70, 0, N'La Escondida', 23)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (71, 0, N'Resistencia', 24)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (72, 0, N'Margarita Belén', 24)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (73, 1, N'Quitilipi', 24)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (74, 0, N'Villa Río Bermejito', 25)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (75, 1, N'Parque Provincial Loro Hablador', 25)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (76, 0, N'Campo del Cielo', 25)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (77, 0, N'300.000', 26)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (78, 0, N'2.000.000', 26)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (79, 1, N'1.000.000', 26)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (80, 0, N'Tony Zalazar', 27)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (81, 1, N'Aledo Luis Meloni', 27)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (82, 0, N'Tete Romero', 27)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (83, 0, N'Flor del cardo', 28)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (84, 0, N'Flor del Ceibo', 28)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (85, 1, N'Flor rosada del palo borracho', 28)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (86, 1, N'Dos Gobernaciones (Chaco Austral y Chaco Central)', 29)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (87, 0, N'Tres Gobernaciones', 29)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (88, 0, N'Cuatro Gobernaciones', 29)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (89, 1, N'Parque Nacional Chaco', 30)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (90, 0, N'Parque Nacional El Impenetrable', 30)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (91, 0, N'Parque Nacional Iberá', 30)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (92, 0, N'Acordeón', 31)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (93, 1, N'N´viké', 31)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (94, 0, N'Charango', 31)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (95, 0, N'El coro polifónico de Resistencia', 32)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (96, 0, N'El coro de niños', 32)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (97, 1, N'El coro Chelaalapí', 32)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (98, 0, N'Villa Angela', 33)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (99, 1, N'Colonia Baranda', 33)
GO
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (100, 0, N'Juan José Castelli', 33)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (101, 0, N'1992', 34)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (102, 1, N'1988', 34)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (103, 0, N'1998', 34)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (104, 0, N'El Chaqueño Palavecino', 35)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (105, 0, N'Axel', 35)
INSERT [dbo].[pregunta_elegirrespuesta] ([id], [correcta], [texto], [pregunta_id]) VALUES (106, 1, N'Abel Pintos', 35)
SET IDENTITY_INSERT [dbo].[pregunta_elegirrespuesta] OFF
GO
SET IDENTITY_INSERT [dbo].[pregunta_jugador] ON 

INSERT [dbo].[pregunta_jugador] ([id], [puntaje_total], [jugador_id], [mejor_puntuacion]) VALUES (8, CAST(1.00 AS Numeric(10, 2)), 1, CAST(2.00 AS Numeric(10, 2)))
SET IDENTITY_INSERT [dbo].[pregunta_jugador] OFF
GO
SET IDENTITY_INSERT [dbo].[pregunta_pregunta] ON 

INSERT [dbo].[pregunta_pregunta] ([id], [texto], [categorias_id], [max_puntaje]) VALUES (1, N'Resistencia es conocida como', 2, CAST(1.00 AS Numeric(6, 2)))
INSERT [dbo].[pregunta_pregunta] ([id], [texto], [categorias_id], [max_puntaje]) VALUES (2, N'¿Cuántas esculturas hay en Resistencia?', 2, CAST(1.00 AS Numeric(6, 2)))
INSERT [dbo].[pregunta_pregunta] ([id], [texto], [categorias_id], [max_puntaje]) VALUES (3, N'En la bandera del Chaco hay un arado rodeado de 25 estrellas ¿Qué representan?', 2, CAST(1.00 AS Numeric(6, 2)))
INSERT [dbo].[pregunta_pregunta] ([id], [texto], [categorias_id], [max_puntaje]) VALUES (4, N'En un emblemático edificio de la ciudad de Resistencia se encuentra un mural del reconocido pintor Emilio Pettoruti ¿Dónde se encuentra emplazado?', 2, CAST(1.00 AS Numeric(6, 2)))
INSERT [dbo].[pregunta_pregunta] ([id], [texto], [categorias_id], [max_puntaje]) VALUES (5, N'La Fiesta Provincial del Inmigrante se realiza en', 2, CAST(1.00 AS Numeric(6, 2)))
INSERT [dbo].[pregunta_pregunta] ([id], [texto], [categorias_id], [max_puntaje]) VALUES (6, N'El ex ferrocarril General Belgrano conectaba a:', 3, CAST(1.00 AS Numeric(6, 2)))
INSERT [dbo].[pregunta_pregunta] ([id], [texto], [categorias_id], [max_puntaje]) VALUES (7, N'¿Quién fue el primer gobernador del Territorio Nacional del Chaco?', 3, CAST(1.00 AS Numeric(6, 2)))
INSERT [dbo].[pregunta_pregunta] ([id], [texto], [categorias_id], [max_puntaje]) VALUES (8, N'El Puente General Belgrano que une las provincias de Chaco y Corrientes se terminó de construir en:', 3, CAST(1.00 AS Numeric(6, 2)))
INSERT [dbo].[pregunta_pregunta] ([id], [texto], [categorias_id], [max_puntaje]) VALUES (9, N'La primera ciudad colonial del Chaco fue', 3, CAST(1.00 AS Numeric(6, 2)))
INSERT [dbo].[pregunta_pregunta] ([id], [texto], [categorias_id], [max_puntaje]) VALUES (10, N'Nuestra primera constitución se promulgó en', 3, CAST(1.00 AS Numeric(6, 2)))
INSERT [dbo].[pregunta_pregunta] ([id], [texto], [categorias_id], [max_puntaje]) VALUES (11, N'En el ámbito automovilístico deportivo Chaco tiene un exponente a nivel nacional e internacional, ¿Quién es?', 4, CAST(1.00 AS Numeric(6, 2)))
INSERT [dbo].[pregunta_pregunta] ([id], [texto], [categorias_id], [max_puntaje]) VALUES (12, N'En el ámbito de los juegos olímpicos, el Chaco tiene un medallista en:', 4, CAST(1.00 AS Numeric(6, 2)))
INSERT [dbo].[pregunta_pregunta] ([id], [texto], [categorias_id], [max_puntaje]) VALUES (13, N'Marcela Gómez, chaqueña, participó en los Juegos Olímpicos de Tokio en:', 4, CAST(1.00 AS Numeric(6, 2)))
INSERT [dbo].[pregunta_pregunta] ([id], [texto], [categorias_id], [max_puntaje]) VALUES (14, N'El club de fútbol más antiguo del Chaco es', 4, CAST(1.00 AS Numeric(6, 2)))
INSERT [dbo].[pregunta_pregunta] ([id], [texto], [categorias_id], [max_puntaje]) VALUES (15, N'La ciudad de las Breñas logró jugar en el Campeonato Argentino de Clubes en', 4, CAST(1.00 AS Numeric(6, 2)))
INSERT [dbo].[pregunta_pregunta] ([id], [texto], [categorias_id], [max_puntaje]) VALUES (16, N'¿En qué sectores se divide geográficamente la provincia del Chaco?', 1, CAST(1.00 AS Numeric(6, 2)))
INSERT [dbo].[pregunta_pregunta] ([id], [texto], [categorias_id], [max_puntaje]) VALUES (17, N'Campo del Cielo: Patrimonio Cultural y Turístico del Chaco, ¿Dónde se ubica?', 1, CAST(1.00 AS Numeric(6, 2)))
INSERT [dbo].[pregunta_pregunta] ([id], [texto], [categorias_id], [max_puntaje]) VALUES (18, N'Al norte el límite natural establecido entre la Provincia de Chaco y Formosa es:', 1, CAST(1.00 AS Numeric(6, 2)))
INSERT [dbo].[pregunta_pregunta] ([id], [texto], [categorias_id], [max_puntaje]) VALUES (19, N'Al sur, el límite establecido entre la Provincia del Chaco y Santa Fe es:', 1, CAST(1.00 AS Numeric(6, 2)))
INSERT [dbo].[pregunta_pregunta] ([id], [texto], [categorias_id], [max_puntaje]) VALUES (20, N'¿Cuántos departamentos tiene la provincia del Chaco?', 1, CAST(1.00 AS Numeric(6, 2)))
INSERT [dbo].[pregunta_pregunta] ([id], [texto], [categorias_id], [max_puntaje]) VALUES (21, N'La producción destacada chaqueña que perdura en la memoria y porla cual se la reconoce a la provincia fue:', 5, CAST(1.00 AS Numeric(6, 2)))
INSERT [dbo].[pregunta_pregunta] ([id], [texto], [categorias_id], [max_puntaje]) VALUES (22, N'A inicios del siglo XX, la actividad económica más importante del territorio era', 5, CAST(1.00 AS Numeric(6, 2)))
INSERT [dbo].[pregunta_pregunta] ([id], [texto], [categorias_id], [max_puntaje]) VALUES (23, N'El tanino se desarrolló en', 5, CAST(1.00 AS Numeric(6, 2)))
INSERT [dbo].[pregunta_pregunta] ([id], [texto], [categorias_id], [max_puntaje]) VALUES (24, N'¿Que localidad es conocida por ser algodonera?', 5, CAST(1.00 AS Numeric(6, 2)))
INSERT [dbo].[pregunta_pregunta] ([id], [texto], [categorias_id], [max_puntaje]) VALUES (25, N'Las Reservas Naturales del Chaco son', 5, CAST(1.00 AS Numeric(6, 2)))
INSERT [dbo].[pregunta_pregunta] ([id], [texto], [categorias_id], [max_puntaje]) VALUES (26, N'La población actual del Chaco oscila entre:', 6, CAST(1.00 AS Numeric(6, 2)))
INSERT [dbo].[pregunta_pregunta] ([id], [texto], [categorias_id], [max_puntaje]) VALUES (27, N'Un escritor reconocido en el ámbito chaqueño recibió el Premio Pionero de la Letras Chaqueñas, otorgado por la provincia del Chaco y la SADE local en 1985. ¿Quién fue?', 6, CAST(1.00 AS Numeric(6, 2)))
INSERT [dbo].[pregunta_pregunta] ([id], [texto], [categorias_id], [max_puntaje]) VALUES (28, N'¿Cuál es la flor provincial del Chaco?', 6, CAST(1.00 AS Numeric(6, 2)))
INSERT [dbo].[pregunta_pregunta] ([id], [texto], [categorias_id], [max_puntaje]) VALUES (29, N'La ley 1532 divido a la Gobernación del Chaco en', 6, CAST(1.00 AS Numeric(6, 2)))
INSERT [dbo].[pregunta_pregunta] ([id], [texto], [categorias_id], [max_puntaje]) VALUES (30, N'¿Qué Parque Nacional existe en el Chaco?', 6, CAST(1.00 AS Numeric(6, 2)))
INSERT [dbo].[pregunta_pregunta] ([id], [texto], [categorias_id], [max_puntaje]) VALUES (31, N'Por Decreto N° 1491 el Gobierno de la Provincia del Chaco se declaró a un instrumento musical como “Patrimonio Cultural de la provincia del Chaco”, ¿Cuál es?', 7, CAST(1.00 AS Numeric(6, 2)))
INSERT [dbo].[pregunta_pregunta] ([id], [texto], [categorias_id], [max_puntaje]) VALUES (32, N'Un conjunto coral chaqueño fue reconocido como “Patrimonio Cultural Viviente” ¿Cuál es?', 7, CAST(1.00 AS Numeric(6, 2)))
INSERT [dbo].[pregunta_pregunta] ([id], [texto], [categorias_id], [max_puntaje]) VALUES (33, N'¿En que ciudad nació Luis Landriscina?', 7, CAST(1.00 AS Numeric(6, 2)))
INSERT [dbo].[pregunta_pregunta] ([id], [texto], [categorias_id], [max_puntaje]) VALUES (34, N'Desde que año se realiza la Bienal Internacional de Esculturas', 7, CAST(1.00 AS Numeric(6, 2)))
INSERT [dbo].[pregunta_pregunta] ([id], [texto], [categorias_id], [max_puntaje]) VALUES (35, N'¿Que reconocido cantante vive en la ciudad de Resistencia?', 7, CAST(1.00 AS Numeric(6, 2)))
SET IDENTITY_INSERT [dbo].[pregunta_pregunta] OFF
GO
SET IDENTITY_INSERT [dbo].[usuarios_usuario] ON 

INSERT [dbo].[usuarios_usuario] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (1, N'pbkdf2_sha256$180000$y05pnuD2pu3C$5WMhnhhpmeoV/HQ7zjIWcODMNVZ2E3NPOXewu6QZMwQ=', CAST(N'2021-09-03T03:08:22.5279790' AS DateTime2), 1, N'admin', N'', N'', N'', 1, 1, CAST(N'2021-08-30T18:17:58.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[usuarios_usuario] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [auth_group_name_a6ea08ec_uniq]    Script Date: 03/09/2021 20:05:16 ******/
ALTER TABLE [dbo].[auth_group] ADD  CONSTRAINT [auth_group_name_a6ea08ec_uniq] UNIQUE NONCLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UQ__pregunta__C719C2E813B48F48]    Script Date: 03/09/2021 20:05:16 ******/
ALTER TABLE [dbo].[pregunta_jugador] ADD UNIQUE NONCLUSTERED 
(
	[jugador_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__usuarios__F3DBC572717AF023]    Script Date: 03/09/2021 20:05:16 ******/
ALTER TABLE [dbo].[usuarios_usuario] ADD UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
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
