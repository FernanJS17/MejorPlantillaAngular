
CREATE DATABASE [SistemaProcinco]
GO
USE [SistemaProcinco]
GO
/****** Object:  Schema [Acc]    Script Date: 27/04/2024 21:50:39 ******/
CREATE SCHEMA [Acc]
GO
/****** Object:  Schema [Gas]    Script Date: 27/04/2024 21:50:39 ******/
CREATE SCHEMA [Pro]
GO
/****** Object:  Schema [Grl]    Script Date: 27/04/2024 21:50:39 ******/
CREATE SCHEMA [Grl]
GO


CREATE TABLE [Grl].[tbPersonas](
	[Perso_Id] [int] IDENTITY(1,1) NOT NULL,
	[Perso_DNI] [varchar](50) NULL,
	[Perso_Nombre] [varchar](60) NULL,
	[Perso_Apellido] [varchar](60) NULL,
	[Perso_Correo] [varchar](60) NULL,
	[Perso_FechaNacimiento] [date] NULL,
	[Perso_Sexo] [char](1) NULL,
	[Estc_Id] [int] NULL,
	[Perso_Direccion] [varchar](60) NULL,
	[Ciud_id] [varchar](4) NULL,
	[Perso_UsuarioCreacion] [int] NULL,
	[Perso_FechaCreacion] [datetime] NULL,
	[Perso_UsuarioModificacion] [int] NULL,
	[Perso_FechaModificacion] [datetime] NULL,
	[Perso_Estado] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Perso_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [Acc].[tbPantallas](
	[Pant_Id] [int] IDENTITY(1,1) NOT NULL,
	[Pant_Descripcion] [varchar](60) NOT NULL,
	[Pant_UsuarioCreacion] [int] NOT NULL,
	[Pant_FechaCreacion] [datetime] NOT NULL,
	[Pant_UsuarioModificacion] [int] NULL,
	[Pant_FechaModificacion] [datetime] NULL,
	[Pant_Estado] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Pant_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Acc].[tbPantallasPorRoles]    Script Date: 27/04/2024 21:50:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Acc].[tbPantallasPorRoles](
	[PaPr_Id] [int] IDENTITY(1,1) NOT NULL,
	[Pant_Id] [int] NOT NULL,
	[Role_Id] [int] NOT NULL,
	[PaPr_UsuarioCreacion] [int] NULL,
	[PaPr_FechaCreacion] [datetime] NULL,
	[PaPr_UsuarioModificacion] [int] NULL,
	[PaPr_FechaModificacion] [datetime] NULL,
	[PaPr_Estado] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[PaPr_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Acc].[tbRoles]    Script Date: 27/04/2024 21:50:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Acc].[tbRoles](
	[Role_Id] [int] IDENTITY(1,1) NOT NULL,
	[Role_Descripcion] [varchar](30) NOT NULL,
	[Role_UsuarioCreacion] [int] NULL,
	[Role_FechaCreacion] [datetime] NULL,
	[Role_UsuarioModificacion] [int] NULL,
	[Role_FechaModificacion] [datetime] NULL,
	[Role_Estado] [bit] NULL,
 CONSTRAINT [PK__tbRoles__D80AB4BB88BBECB0] PRIMARY KEY CLUSTERED 
(
	[Role_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Acc].[tbUsuarios]    Script Date: 27/04/2024 21:50:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Acc].[tbUsuarios](
	[Usua_Id] [int] IDENTITY(1,1) NOT NULL,
	[Usua_Usuario] [varchar](60) NOT NULL,
	[Usua_Contraseña] [varchar](max) NOT NULL,
	[Usua_EsAdmin] [bit] NULL,
	[Role_Id] [int] NOT NULL,
	[Usua_UsuarioCreacion] [int] NULL,
	[Usua_FechaCreacion] [datetime] NOT NULL,
	[Usua_UsuarioModificacion] [int] NULL,
	[Usua_FechaModificacion] [datetime] NULL,
	[Usua_Estado] [bit] NULL,
	[Perso_Id] [int] NULL,
	[Usua_VerificarCorreo] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Usua_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

/****** Object:  Table [Grl].[tbCiudades]    Script Date: 27/04/2024 21:50:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Grl].[tbCiudades](
	[Ciud_Id] [varchar](4) NOT NULL,
	[Ciud_Descripcion] [varchar](40) NOT NULL,
	[Esta_Id] [varchar](2) NOT NULL,
	[Ciud_UsuarioCreacion] [int] NOT NULL,
	[Ciud_FechaCreacion] [datetime] NOT NULL,
	[Ciud_UsuarioModificacion] [int] NULL,
	[Ciud_FechaModificacion] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Ciud_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Grl].[tbEstados]    Script Date: 27/04/2024 21:50:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Grl].[tbEstados](
	[Esta_Id] [varchar](2) NOT NULL,
	[Esta_Descripcion] [varchar](40) NOT NULL,
	[Esta_UsuarioCreacion] [int] NOT NULL,
	[Esta_FechaCreacion] [datetime] NOT NULL,
	[Esta_UsuarioModificacion] [int] NULL,
	[Esta_FechaModificacion] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Esta_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Grl].[tbEstadosCiviles]    Script Date: 27/04/2024 21:50:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Grl].[tbEstadosCiviles](
	[Estc_Id] [int] IDENTITY(1,1) NOT NULL,
	[Estc_Descripcion] [varchar](30) NOT NULL,
	[Estc_UsuarioCreacion] [int] NOT NULL,
	[Estc_FechaCreacion] [datetime] NOT NULL,
	[Estc_UsuarioModificacion] [int] NULL,
	[Estc_FechaModificacion] [datetime] NULL,
	[Estc_Estado] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Estc_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET IDENTITY_INSERT [Acc].[tbPantallas] ON 
INSERT [Acc].[tbPantallas] ([Pant_Id], [Pant_Descripcion], [Pant_UsuarioCreacion], [Pant_FechaCreacion], [Pant_UsuarioModificacion], [Pant_FechaModificacion], [Pant_Estado]) VALUES (1, N'Roles', 1, CAST(N'2024-03-16T00:26:43.053' AS DateTime), NULL, NULL, 1)
INSERT [Acc].[tbPantallas] ([Pant_Id], [Pant_Descripcion], [Pant_UsuarioCreacion], [Pant_FechaCreacion], [Pant_UsuarioModificacion], [Pant_FechaModificacion], [Pant_Estado]) VALUES (2, N'Usuarios', 1, CAST(N'2024-03-16T00:26:43.053' AS DateTime), NULL, NULL, 1)
INSERT [Acc].[tbPantallas] ([Pant_Id], [Pant_Descripcion], [Pant_UsuarioCreacion], [Pant_FechaCreacion], [Pant_UsuarioModificacion], [Pant_FechaModificacion], [Pant_Estado]) VALUES (3, N'Busqueda', 1, CAST(N'2024-03-16T00:26:43.053' AS DateTime), NULL, NULL, 1)
INSERT [Acc].[tbPantallas] ([Pant_Id], [Pant_Descripcion], [Pant_UsuarioCreacion], [Pant_FechaCreacion], [Pant_UsuarioModificacion], [Pant_FechaModificacion], [Pant_Estado]) VALUES (4, N'Reportar Sitios', 1, CAST(N'2024-03-16T00:26:43.053' AS DateTime), NULL, NULL, 1)
INSERT [Acc].[tbPantallas] ([Pant_Id], [Pant_Descripcion], [Pant_UsuarioCreacion], [Pant_FechaCreacion], [Pant_UsuarioModificacion], [Pant_FechaModificacion], [Pant_Estado]) VALUES (5, N'Reportes', 1, CAST(N'2024-03-16T00:26:43.053' AS DateTime), NULL, NULL, 1)
INSERT [Acc].[tbPantallas] ([Pant_Id], [Pant_Descripcion], [Pant_UsuarioCreacion], [Pant_FechaCreacion], [Pant_UsuarioModificacion], [Pant_FechaModificacion], [Pant_Estado]) VALUES (6, N'Cargos', 1, CAST(N'2024-03-16T00:26:43.053' AS DateTime), NULL, NULL, 1)
INSERT [Acc].[tbPantallas] ([Pant_Id], [Pant_Descripcion], [Pant_UsuarioCreacion], [Pant_FechaCreacion], [Pant_UsuarioModificacion], [Pant_FechaModificacion], [Pant_Estado]) VALUES (7, N'Empleados', 1, CAST(N'2024-03-16T00:26:43.053' AS DateTime), NULL, NULL, 1)
INSERT [Acc].[tbPantallas] ([Pant_Id], [Pant_Descripcion], [Pant_UsuarioCreacion], [Pant_FechaCreacion], [Pant_UsuarioModificacion], [Pant_FechaModificacion], [Pant_Estado]) VALUES (8, N'Paises', 1, CAST(N'2024-03-16T00:26:43.053' AS DateTime), NULL, NULL, 1)
INSERT [Acc].[tbPantallas] ([Pant_Id], [Pant_Descripcion], [Pant_UsuarioCreacion], [Pant_FechaCreacion], [Pant_UsuarioModificacion], [Pant_FechaModificacion], [Pant_Estado]) VALUES (9, N'Estados', 1, CAST(N'2024-03-16T00:26:43.053' AS DateTime), NULL, NULL, 1)
INSERT [Acc].[tbPantallas] ([Pant_Id], [Pant_Descripcion], [Pant_UsuarioCreacion], [Pant_FechaCreacion], [Pant_UsuarioModificacion], [Pant_FechaModificacion], [Pant_Estado]) VALUES (10, N'Ciudades', 1, CAST(N'2024-03-16T00:26:43.053' AS DateTime), NULL, NULL, 1)
INSERT [Acc].[tbPantallas] ([Pant_Id], [Pant_Descripcion], [Pant_UsuarioCreacion], [Pant_FechaCreacion], [Pant_UsuarioModificacion], [Pant_FechaModificacion], [Pant_Estado]) VALUES (11, N'Estados Civiles', 1, CAST(N'2024-03-16T00:26:43.053' AS DateTime), NULL, NULL, 1)
INSERT [Acc].[tbPantallas] ([Pant_Id], [Pant_Descripcion], [Pant_UsuarioCreacion], [Pant_FechaCreacion], [Pant_UsuarioModificacion], [Pant_FechaModificacion], [Pant_Estado]) VALUES (12, N'Personas', 1, CAST(N'2024-03-16T00:26:43.053' AS DateTime), NULL, NULL, 1)
SET IDENTITY_INSERT [Acc].[tbPantallas] OFF
GO
SET IDENTITY_INSERT [Acc].[tbRoles] ON 

INSERT [Acc].[tbRoles] ([Role_Id], [Role_Descripcion], [Role_UsuarioCreacion], [Role_FechaCreacion], [Role_UsuarioModificacion], [Role_FechaModificacion], [Role_Estado]) VALUES (1, N'Administrador', 1, CAST(N'2024-03-01T00:00:00.000' AS DateTime), NULL, NULL, 1)
INSERT [Acc].[tbRoles] ([Role_Id], [Role_Descripcion], [Role_UsuarioCreacion], [Role_FechaCreacion], [Role_UsuarioModificacion], [Role_FechaModificacion], [Role_Estado]) VALUES (2, N'Usuario', 1, CAST(N'2023-03-01T00:00:00.000' AS DateTime), NULL, NULL, 1)
SET IDENTITY_INSERT [Acc].[tbRoles] OFF
GO
SET IDENTITY_INSERT [Acc].[tbUsuarios] ON 

INSERT [Acc].[tbUsuarios] ([Usua_Id], [Usua_Usuario], [Usua_Contraseña], [Usua_EsAdmin], [Role_Id], [Usua_UsuarioCreacion], [Usua_FechaCreacion], [Usua_UsuarioModificacion], [Usua_FechaModificacion], [Usua_Estado], [Perso_Id], [Usua_VerificarCorreo]) VALUES (1, N'Administrador', N'111', 1, 1, 1, CAST(N'2024-03-01T00:00:00.000' AS DateTime), 1, CAST(N'2024-04-11T00:10:35.120' AS DateTime), 0, 1, NULL)
INSERT [Acc].[tbUsuarios] ([Usua_Id], [Usua_Usuario], [Usua_Contraseña], [Usua_EsAdmin], [Role_Id], [Usua_UsuarioCreacion], [Usua_FechaCreacion], [Usua_UsuarioModificacion], [Usua_FechaModificacion], [Usua_Estado], [Perso_Id], [Usua_VerificarCorreo]) VALUES (4, N'Invitado01', N'4C5755601BB315D8EE56065C7AB9B3E19120DE5744F3B47A252CBF5B2B33584DEBEB46629D3EDE1456936D4A4FFBFAD8172A59FE1A201BBE4C919F77BFC763B6', 1, 1, 1, CAST(N'2024-11-04T00:00:00.000' AS DateTime), 1, CAST(N'2024-04-20T22:14:32.520' AS DateTime), 1, 1, NULL)
INSERT [Acc].[tbUsuarios] ([Usua_Id], [Usua_Usuario], [Usua_Contraseña], [Usua_EsAdmin], [Role_Id], [Usua_UsuarioCreacion], [Usua_FechaCreacion], [Usua_UsuarioModificacion], [Usua_FechaModificacion], [Usua_Estado], [Perso_Id], [Usua_VerificarCorreo]) VALUES (5, N'Adminn', N'887375DAEC62A9F02D32A63C9E14C7641A9A8A42E4FA8F6590EB928D9744B57BB5057A1D227E4D40EF911AC030590BBCE2BFDB78103FF0B79094CEE8425601F5', 1, 1, 1, CAST(N'2024-11-04T00:00:00.000' AS DateTime), 1, CAST(N'2024-04-18T22:54:57.263' AS DateTime), 0, 1, NULL)
INSERT [Acc].[tbUsuarios] ([Usua_Id], [Usua_Usuario], [Usua_Contraseña], [Usua_EsAdmin], [Role_Id], [Usua_UsuarioCreacion], [Usua_FechaCreacion], [Usua_UsuarioModificacion], [Usua_FechaModificacion], [Usua_Estado], [Perso_Id], [Usua_VerificarCorreo]) VALUES (18, N'sua', N'9C70B581E98829ADBE5D4A0973B716E677731ABB2DE5994192C2ECFD06E27A2F55CCF652580A9914B14A0606A421A81C397712928C905F11010B44626021AB10', 1, 1, 1, CAST(N'2024-04-18T17:00:22.290' AS DateTime), NULL, NULL, 1, 1, NULL)
INSERT [Acc].[tbUsuarios] ([Usua_Id], [Usua_Usuario], [Usua_Contraseña], [Usua_EsAdmin], [Role_Id], [Usua_UsuarioCreacion], [Usua_FechaCreacion], [Usua_UsuarioModificacion], [Usua_FechaModificacion], [Usua_Estado], [Perso_Id], [Usua_VerificarCorreo]) VALUES (22, N'michell', N'E04CF536A06754F6F06DA3602E3A069CD121281C6C803DFD66CE4EC957DD9687EC53317EEDCC35F2930BDFEB85EE72E4CBD6A691699E7E055E1882DABAC15A2A', 0, 1, 1, CAST(N'2024-04-18T17:13:03.687' AS DateTime), NULL, NULL, 1, 1, NULL)
INSERT [Acc].[tbUsuarios] ([Usua_Id], [Usua_Usuario], [Usua_Contraseña], [Usua_EsAdmin], [Role_Id], [Usua_UsuarioCreacion], [Usua_FechaCreacion], [Usua_UsuarioModificacion], [Usua_FechaModificacion], [Usua_Estado], [Perso_Id], [Usua_VerificarCorreo]) VALUES (26, N'suaa', N'854925659D3A1D0FC8E3EBB6557ED00AECCAFE0636BADFEE273FCB51A9A7E90C3F7F755633E1A9D1D73CE654C34AE4FFCE6A457B307023EE941B60CFD6934BAB', 1, 1, 1, CAST(N'2024-04-18T17:23:28.457' AS DateTime), NULL, NULL, 1, 1, NULL)
INSERT [Acc].[tbUsuarios] ([Usua_Id], [Usua_Usuario], [Usua_Contraseña], [Usua_EsAdmin], [Role_Id], [Usua_UsuarioCreacion], [Usua_FechaCreacion], [Usua_UsuarioModificacion], [Usua_FechaModificacion], [Usua_Estado], [Perso_Id], [Usua_VerificarCorreo]) VALUES (27, N'suaaa', N'813D00895B26351A54F3380016887DAD2A8E1FABF18983E2972247DE23A66D97911603DCA3CD2631BE63851EB163792FE52CF787F3FEE01FF8A8F44ECA6DAE4A', 0, 1, 1, CAST(N'2024-04-18T17:23:50.070' AS DateTime), 1, CAST(N'2024-04-25T12:06:47.580' AS DateTime), 0, 2, N'c15662beb4ed5760b2966a06c0254acdf2bdc301bccc2629755bcb47b5d36089')
INSERT [Acc].[tbUsuarios] ([Usua_Id], [Usua_Usuario], [Usua_Contraseña], [Usua_EsAdmin], [Role_Id], [Usua_UsuarioCreacion], [Usua_FechaCreacion], [Usua_UsuarioModificacion], [Usua_FechaModificacion], [Usua_Estado], [Perso_Id], [Usua_VerificarCorreo]) VALUES (32, N'suaaaa', N'0881F8151D400E2E77749FC1829098AAD5A432073620B7A435B601E06FC48D0D0FDF3FCF99B13D960392F93FB55EB620D1EED3C0B79FE3898AFD0B0443B068A4', 1, 1, 1, CAST(N'2024-04-18T17:30:06.470' AS DateTime), NULL, NULL, 0, 1, NULL)
INSERT [Acc].[tbUsuarios] ([Usua_Id], [Usua_Usuario], [Usua_Contraseña], [Usua_EsAdmin], [Role_Id], [Usua_UsuarioCreacion], [Usua_FechaCreacion], [Usua_UsuarioModificacion], [Usua_FechaModificacion], [Usua_Estado], [Perso_Id], [Usua_VerificarCorreo]) VALUES (48, N'yaa', N'65507DBA19E41EFFADAD1012CF11C02D3DE685D1E865C397C47583BE0C1FB8B5D867E476B84D973F49794E10CB480FD9B93BD8D78AC5E09FB1EA8B15F0FD3009', 0, 2, 1, CAST(N'2024-04-18T17:55:09.453' AS DateTime), 1, CAST(N'2024-04-18T22:48:01.467' AS DateTime), 0, 1, NULL)
INSERT [Acc].[tbUsuarios] ([Usua_Id], [Usua_Usuario], [Usua_Contraseña], [Usua_EsAdmin], [Role_Id], [Usua_UsuarioCreacion], [Usua_FechaCreacion], [Usua_UsuarioModificacion], [Usua_FechaModificacion], [Usua_Estado], [Perso_Id], [Usua_VerificarCorreo]) VALUES (49, N'edita', N'B5400D840A2E09FC4E51D33FE44CD346B0D9305F2D9A9E396210F2C7F743DC1D7C44D63BA083CC991B87E68A60CEE15F87FAFB2994A386D70627D6AA632E167F', 0, 2, 1, CAST(N'2024-04-18T22:55:59.853' AS DateTime), 1, CAST(N'2024-04-18T22:56:42.360' AS DateTime), 1, 5, NULL)
INSERT [Acc].[tbUsuarios] ([Usua_Id], [Usua_Usuario], [Usua_Contraseña], [Usua_EsAdmin], [Role_Id], [Usua_UsuarioCreacion], [Usua_FechaCreacion], [Usua_UsuarioModificacion], [Usua_FechaModificacion], [Usua_Estado], [Perso_Id], [Usua_VerificarCorreo]) VALUES (51, N'a', N'1F40FC92DA241694750979EE6CF582F2D5D7D28E18335DE05ABC54D0560E0F5302860C652BF08D560252AA5E74210546F369FBBBCE8C12CFC7957B2652FE9A75', 0, 2, 1, CAST(N'2024-04-18T23:04:52.217' AS DateTime), 1, CAST(N'2024-04-18T23:05:00.980' AS DateTime), 0, 2, NULL)
INSERT [Acc].[tbUsuarios] ([Usua_Id], [Usua_Usuario], [Usua_Contraseña], [Usua_EsAdmin], [Role_Id], [Usua_UsuarioCreacion], [Usua_FechaCreacion], [Usua_UsuarioModificacion], [Usua_FechaModificacion], [Usua_Estado], [Perso_Id], [Usua_VerificarCorreo]) VALUES (52, N'52', N'5267768822EE624D48FCE15EC5CA79CBD602CB7F4C2157A516556991F22EF8C7B5EF7B18D1FF41C59370EFB0858651D44A936C11B7B144C48FE04DF3C6A3E8DA', 0, 2, 18, CAST(N'2024-04-18T23:06:24.290' AS DateTime), 18, CAST(N'2024-04-18T23:06:34.673' AS DateTime), 0, 2, NULL)
INSERT [Acc].[tbUsuarios] ([Usua_Id], [Usua_Usuario], [Usua_Contraseña], [Usua_EsAdmin], [Role_Id], [Usua_UsuarioCreacion], [Usua_FechaCreacion], [Usua_UsuarioModificacion], [Usua_FechaModificacion], [Usua_Estado], [Perso_Id], [Usua_VerificarCorreo]) VALUES (53, N'cc', N'ACC28DB2BEB7B42BAA1CB0243D401CCB4E3FCE44D7B02879A52799AADFF541522D8822598B2FA664F9D5156C00C924805D75C3868BD56C2ACB81D37E98E35ADC', 0, 2, 1, CAST(N'2024-04-18T23:20:03.107' AS DateTime), 1, CAST(N'2024-04-18T23:20:14.563' AS DateTime), 0, 2, NULL)
INSERT [Acc].[tbUsuarios] ([Usua_Id], [Usua_Usuario], [Usua_Contraseña], [Usua_EsAdmin], [Role_Id], [Usua_UsuarioCreacion], [Usua_FechaCreacion], [Usua_UsuarioModificacion], [Usua_FechaModificacion], [Usua_Estado], [Perso_Id], [Usua_VerificarCorreo]) VALUES (54, N'ss', N'2C1EE68372215B1CE064426B5CDBD4EF2581ACE0DD3B21FA2BE27F364827242E83F68B68BE03F5B3E24BE5D1B4315F98A0A96D19713FB3A19DC455FB6ADC3431', 0, 2, 1, CAST(N'2024-04-18T23:36:30.407' AS DateTime), 1, CAST(N'2024-04-18T23:37:45.473' AS DateTime), 0, 2, NULL)
INSERT [Acc].[tbUsuarios] ([Usua_Id], [Usua_Usuario], [Usua_Contraseña], [Usua_EsAdmin], [Role_Id], [Usua_UsuarioCreacion], [Usua_FechaCreacion], [Usua_UsuarioModificacion], [Usua_FechaModificacion], [Usua_Estado], [Perso_Id], [Usua_VerificarCorreo]) VALUES (55, N'ww', N'AA66509891AD28030349BA9581E8C92528FAAB6A34349061A44B6F8FCD8D6877A67B05508983F12F8610302D1783401A07EC41C7E9EBD656DE34EC60D84D9511', 0, 2, 1, CAST(N'2024-04-18T23:48:30.020' AS DateTime), 1, CAST(N'2024-04-20T21:11:29.480' AS DateTime), 0, 1, NULL)
INSERT [Acc].[tbUsuarios] ([Usua_Id], [Usua_Usuario], [Usua_Contraseña], [Usua_EsAdmin], [Role_Id], [Usua_UsuarioCreacion], [Usua_FechaCreacion], [Usua_UsuarioModificacion], [Usua_FechaModificacion], [Usua_Estado], [Perso_Id], [Usua_VerificarCorreo]) VALUES (56, N'vv', N'7B0776DBAC74A9ABB8A0D0119C73AE82EFBB1B95AF009F0669E2B52C9664F7FBB458DDF3ABD7CCF0617AB69362A13ADE046C4F19490710E5D8937BA72EFA90AA', 1, 2, 1, CAST(N'2024-04-18T23:50:29.253' AS DateTime), 1, CAST(N'2024-04-18T23:50:42.103' AS DateTime), 0, 2, NULL)
INSERT [Acc].[tbUsuarios] ([Usua_Id], [Usua_Usuario], [Usua_Contraseña], [Usua_EsAdmin], [Role_Id], [Usua_UsuarioCreacion], [Usua_FechaCreacion], [Usua_UsuarioModificacion], [Usua_FechaModificacion], [Usua_Estado], [Perso_Id], [Usua_VerificarCorreo]) VALUES (57, N'saa', N'30A76625D5FC75E3AB6793B19819935E65E43CF3745832061CB432A5DE7FDC17D66EDE77973D5AED065BC7E3E0536EBCC5129506955574E230B92B71BD2CB1C7', 0, 1, 1, CAST(N'2024-04-19T00:01:44.803' AS DateTime), 1, CAST(N'2024-04-19T00:01:57.377' AS DateTime), 0, 2, NULL)
INSERT [Acc].[tbUsuarios] ([Usua_Id], [Usua_Usuario], [Usua_Contraseña], [Usua_EsAdmin], [Role_Id], [Usua_UsuarioCreacion], [Usua_FechaCreacion], [Usua_UsuarioModificacion], [Usua_FechaModificacion], [Usua_Estado], [Perso_Id], [Usua_VerificarCorreo]) VALUES (58, N'sdd', N'28E2BCFB7724D64C3E166FF8A541A20F4005C4E453FDC657237554DA443BB0E2550304C4E7F143437A72479D30A517D61F290040220E7EEAEDA21AC23CAEDDE9', 1, 2, 1, CAST(N'2024-04-19T09:54:11.167' AS DateTime), 1, CAST(N'2024-04-19T11:02:58.973' AS DateTime), 0, 1, NULL)
INSERT [Acc].[tbUsuarios] ([Usua_Id], [Usua_Usuario], [Usua_Contraseña], [Usua_EsAdmin], [Role_Id], [Usua_UsuarioCreacion], [Usua_FechaCreacion], [Usua_UsuarioModificacion], [Usua_FechaModificacion], [Usua_Estado], [Perso_Id], [Usua_VerificarCorreo]) VALUES (59, N'prueba', N'FB131BC57A477C8C9D068F1EE5622AC304195A77164CCC2D75D82DFE1A727BA8D674ED87F96143B2B416AACEFB555E3045C356FAA23E6D21DE72B85822E39FDD', 0, 1, 1, CAST(N'2024-04-20T17:15:43.353' AS DateTime), NULL, NULL, 1, 1, NULL)
INSERT [Acc].[tbUsuarios] ([Usua_Id], [Usua_Usuario], [Usua_Contraseña], [Usua_EsAdmin], [Role_Id], [Usua_UsuarioCreacion], [Usua_FechaCreacion], [Usua_UsuarioModificacion], [Usua_FechaModificacion], [Usua_Estado], [Perso_Id], [Usua_VerificarCorreo]) VALUES (60, N'prueba2', N'FB131BC57A477C8C9D068F1EE5622AC304195A77164CCC2D75D82DFE1A727BA8D674ED87F96143B2B416AACEFB555E3045C356FAA23E6D21DE72B85822E39FDD', 0, 1, 1, CAST(N'2024-04-20T17:23:02.970' AS DateTime), NULL, NULL, 0, 1, NULL)
INSERT [Acc].[tbUsuarios] ([Usua_Id], [Usua_Usuario], [Usua_Contraseña], [Usua_EsAdmin], [Role_Id], [Usua_UsuarioCreacion], [Usua_FechaCreacion], [Usua_UsuarioModificacion], [Usua_FechaModificacion], [Usua_Estado], [Perso_Id], [Usua_VerificarCorreo]) VALUES (61, N'prueba3', N'FB131BC57A477C8C9D068F1EE5622AC304195A77164CCC2D75D82DFE1A727BA8D674ED87F96143B2B416AACEFB555E3045C356FAA23E6D21DE72B85822E39FDD', 0, 1, 1, CAST(N'2024-04-20T17:23:28.437' AS DateTime), NULL, NULL, 0, 1, NULL)
INSERT [Acc].[tbUsuarios] ([Usua_Id], [Usua_Usuario], [Usua_Contraseña], [Usua_EsAdmin], [Role_Id], [Usua_UsuarioCreacion], [Usua_FechaCreacion], [Usua_UsuarioModificacion], [Usua_FechaModificacion], [Usua_Estado], [Perso_Id], [Usua_VerificarCorreo]) VALUES (73, N'juan24', N'FB131BC57A477C8C9D068F1EE5622AC304195A77164CCC2D75D82DFE1A727BA8D674ED87F96143B2B416AACEFB555E3045C356FAA23E6D21DE72B85822E39FDD', 1, 2, 1, CAST(N'2024-04-20T22:55:34.443' AS DateTime), 1, CAST(N'2024-04-21T00:45:10.703' AS DateTime), 1, 1, NULL)
INSERT [Acc].[tbUsuarios] ([Usua_Id], [Usua_Usuario], [Usua_Contraseña], [Usua_EsAdmin], [Role_Id], [Usua_UsuarioCreacion], [Usua_FechaCreacion], [Usua_UsuarioModificacion], [Usua_FechaModificacion], [Usua_Estado], [Perso_Id], [Usua_VerificarCorreo]) VALUES (75, N'juan2024', N'FB131BC57A477C8C9D068F1EE5622AC304195A77164CCC2D75D82DFE1A727BA8D674ED87F96143B2B416AACEFB555E3045C356FAA23E6D21DE72B85822E39FDD', 1, 1, 1, CAST(N'2024-04-20T23:07:01.940' AS DateTime), NULL, NULL, 1, 1, NULL)
INSERT [Acc].[tbUsuarios] ([Usua_Id], [Usua_Usuario], [Usua_Contraseña], [Usua_EsAdmin], [Role_Id], [Usua_UsuarioCreacion], [Usua_FechaCreacion], [Usua_UsuarioModificacion], [Usua_FechaModificacion], [Usua_Estado], [Perso_Id], [Usua_VerificarCorreo]) VALUES (76, N'prueba2024', N'EF76D932B366EB3687B150948CC2CAC76EFB0F9F9929FFC076F36B275D58B6A5D8A6AEA3DB9FF9A8CD3FF5D0B73F25FB7A0AA577DCCA205D525B38100BE49BAE', 0, 1, 1, CAST(N'2024-04-20T23:08:00.607' AS DateTime), 1, CAST(N'2024-04-21T00:45:24.473' AS DateTime), 1, 5, NULL)
INSERT [Acc].[tbUsuarios] ([Usua_Id], [Usua_Usuario], [Usua_Contraseña], [Usua_EsAdmin], [Role_Id], [Usua_UsuarioCreacion], [Usua_FechaCreacion], [Usua_UsuarioModificacion], [Usua_FechaModificacion], [Usua_Estado], [Perso_Id], [Usua_VerificarCorreo]) VALUES (77, N'test007', N'FB131BC57A477C8C9D068F1EE5622AC304195A77164CCC2D75D82DFE1A727BA8D674ED87F96143B2B416AACEFB555E3045C356FAA23E6D21DE72B85822E39FDD', 0, 1, 1, CAST(N'2024-04-20T23:50:05.917' AS DateTime), NULL, NULL, 1, 1, NULL)
INSERT [Acc].[tbUsuarios] ([Usua_Id], [Usua_Usuario], [Usua_Contraseña], [Usua_EsAdmin], [Role_Id], [Usua_UsuarioCreacion], [Usua_FechaCreacion], [Usua_UsuarioModificacion], [Usua_FechaModificacion], [Usua_Estado], [Perso_Id], [Usua_VerificarCorreo]) VALUES (78, N'ddb', N'1DB779C5B3259B42E63C621B073C10B36C005840B6E71A141F1AF86A780D366F0FA241FA129AA18ABD042BE420EAC02FBA852478B7481EAD6ECFC5B948655A6C', 0, 2, 1, CAST(N'2024-04-21T17:26:22.583' AS DateTime), NULL, NULL, 1, 6, NULL)
INSERT [Acc].[tbUsuarios] ([Usua_Id], [Usua_Usuario], [Usua_Contraseña], [Usua_EsAdmin], [Role_Id], [Usua_UsuarioCreacion], [Usua_FechaCreacion], [Usua_UsuarioModificacion], [Usua_FechaModificacion], [Usua_Estado], [Perso_Id], [Usua_VerificarCorreo]) VALUES (79, N'juan444', N'FB131BC57A477C8C9D068F1EE5622AC304195A77164CCC2D75D82DFE1A727BA8D674ED87F96143B2B416AACEFB555E3045C356FAA23E6D21DE72B85822E39FDD', 0, 2, 1, CAST(N'2024-04-22T17:46:40.553' AS DateTime), NULL, NULL, 1, 5, NULL)
INSERT [Acc].[tbUsuarios] ([Usua_Id], [Usua_Usuario], [Usua_Contraseña], [Usua_EsAdmin], [Role_Id], [Usua_UsuarioCreacion], [Usua_FechaCreacion], [Usua_UsuarioModificacion], [Usua_FechaModificacion], [Usua_Estado], [Perso_Id], [Usua_VerificarCorreo]) VALUES (80, N'ess', N'A01626647AA0C79C4F0CCDE07C1E446E0FDCE6D67ABF746A68F9041F76C752CDE31D1D2D346FCBD58E8D56F5529EACDF624D7D5A1AA641EBEBBBE0B7D8AD04BE', 0, 2, 1, CAST(N'2024-04-24T21:54:10.527' AS DateTime), NULL, NULL, 1, 12, NULL)
INSERT [Acc].[tbUsuarios] ([Usua_Id], [Usua_Usuario], [Usua_Contraseña], [Usua_EsAdmin], [Role_Id], [Usua_UsuarioCreacion], [Usua_FechaCreacion], [Usua_UsuarioModificacion], [Usua_FechaModificacion], [Usua_Estado], [Perso_Id], [Usua_VerificarCorreo]) VALUES (81, N'sess', N'4CF3926C781388137541BD72B553DE13D4723733CF5E9B0D0A3D4F3BB92E778EA92ABAADBD03B6F5AB159A4EF95E24C25147D7C4B51D06834731592D6DFC3FE8', 0, 2, 1, CAST(N'2024-04-24T23:11:09.263' AS DateTime), NULL, NULL, 1, 13, NULL)
INSERT [Acc].[tbUsuarios] ([Usua_Id], [Usua_Usuario], [Usua_Contraseña], [Usua_EsAdmin], [Role_Id], [Usua_UsuarioCreacion], [Usua_FechaCreacion], [Usua_UsuarioModificacion], [Usua_FechaModificacion], [Usua_Estado], [Perso_Id], [Usua_VerificarCorreo]) VALUES (82, N'wwe', N'AFB32A1F04068A7DBD66A6167F4F5D7CF62805E2CCACE4D29A6C916C6497BFB65829B67687E53910DBBC230B73613865FE8DFCEB0A1D79FE912AFEBDA108C33E', 0, 2, 1, CAST(N'2024-04-25T03:18:36.510' AS DateTime), NULL, NULL, 1, 15, NULL)
INSERT [Acc].[tbUsuarios] ([Usua_Id], [Usua_Usuario], [Usua_Contraseña], [Usua_EsAdmin], [Role_Id], [Usua_UsuarioCreacion], [Usua_FechaCreacion], [Usua_UsuarioModificacion], [Usua_FechaModificacion], [Usua_Estado], [Perso_Id], [Usua_VerificarCorreo]) VALUES (83, N'fast', N'FB5B2F7F3010F9C4F8D8BDB528C8A3D402F0413BF9E1E35A4FA0FF857015AE269638FBE6911BAE14B51F555E27748F499CE6B68D593C4DDD059818D42860099A', 0, 2, 1, CAST(N'2024-04-25T11:21:35.287' AS DateTime), 1, CAST(N'2024-04-26T13:02:50.607' AS DateTime), 1, 16, N'23123')
INSERT [Acc].[tbUsuarios] ([Usua_Id], [Usua_Usuario], [Usua_Contraseña], [Usua_EsAdmin], [Role_Id], [Usua_UsuarioCreacion], [Usua_FechaCreacion], [Usua_UsuarioModificacion], [Usua_FechaModificacion], [Usua_Estado], [Perso_Id], [Usua_VerificarCorreo]) VALUES (84, N'aver', N'037202BE4A67DA65EC005F1FECF3E1EDD4A1FE0C6D5136394D736F59C3C9D1C49D9976F3F462633B7765DF4863E5DF4A7A47ADAFBF6E9CBF210C59F6038C7E89', 0, 2, NULL, CAST(N'2024-04-25T11:09:38.207' AS DateTime), NULL, NULL, 1, 17, NULL)
INSERT [Acc].[tbUsuarios] ([Usua_Id], [Usua_Usuario], [Usua_Contraseña], [Usua_EsAdmin], [Role_Id], [Usua_UsuarioCreacion], [Usua_FechaCreacion], [Usua_UsuarioModificacion], [Usua_FechaModificacion], [Usua_Estado], [Perso_Id], [Usua_VerificarCorreo]) VALUES (85, N'ssaa', N'6EF7CF4D35BC405FD032E370BD5A59692D6983AF8AC8F7C342839070EBE3D1903D613C629486A1959D0837636BD3710940074E4B81759ACDDC44576DE6D4D679', 0, 2, NULL, CAST(N'2024-04-25T11:13:37.647' AS DateTime), NULL, NULL, 1, 18, NULL)
INSERT [Acc].[tbUsuarios] ([Usua_Id], [Usua_Usuario], [Usua_Contraseña], [Usua_EsAdmin], [Role_Id], [Usua_UsuarioCreacion], [Usua_FechaCreacion], [Usua_UsuarioModificacion], [Usua_FechaModificacion], [Usua_Estado], [Perso_Id], [Usua_VerificarCorreo]) VALUES (86, N'ssfsfg', N'4D698DDC7E0BF21F98FF98E2E2FB5C201F8E90D38B6E01271CA44D5A49D6413A5700644D1F4108DE01075DA45AD4C336B00D8532EF360FD30ADE8F7C3307429E', 0, 2, NULL, CAST(N'2024-04-25T11:16:04.293' AS DateTime), NULL, NULL, 1, 19, NULL)
INSERT [Acc].[tbUsuarios] ([Usua_Id], [Usua_Usuario], [Usua_Contraseña], [Usua_EsAdmin], [Role_Id], [Usua_UsuarioCreacion], [Usua_FechaCreacion], [Usua_UsuarioModificacion], [Usua_FechaModificacion], [Usua_Estado], [Perso_Id], [Usua_VerificarCorreo]) VALUES (87, N'funcionapls', N'3F7306D2C0F4092C6E9C67CD8B25CC77E0310D271DF9EABA2433BC663041FCB8CB72BE24090D458DE19A5CAA06326058455A599EDE02547719CAA5082A63EB66', 0, 2, NULL, CAST(N'2024-04-25T12:34:31.803' AS DateTime), NULL, NULL, 1, 20, NULL)
INSERT [Acc].[tbUsuarios] ([Usua_Id], [Usua_Usuario], [Usua_Contraseña], [Usua_EsAdmin], [Role_Id], [Usua_UsuarioCreacion], [Usua_FechaCreacion], [Usua_UsuarioModificacion], [Usua_FechaModificacion], [Usua_Estado], [Perso_Id], [Usua_VerificarCorreo]) VALUES (88, N'yordii', N'C135DB9DC81BF4397AA5F16DE68DFEA97207BFF99C5A7BDE1CE01BEC2DC296E6274DADF941B5B2D11CE0F72FF470D9D2E8C3A37C5B7DBFD201003AB73551BD7F', 0, 1, 1, CAST(N'2024-04-26T12:48:18.937' AS DateTime), NULL, NULL, 1, 12, NULL)
SET IDENTITY_INSERT [Acc].[tbUsuarios] OFF

GO
INSERT [Grl].[tbCiudades] ([Ciud_Id], [Ciud_Descripcion], [Esta_Id], [Ciud_UsuarioCreacion], [Ciud_FechaCreacion], [Ciud_UsuarioModificacion], [Ciud_FechaModificacion]) VALUES (N'001', N'La Ceiba', N'01', 1, CAST(N'2024-04-01T22:54:38.500' AS DateTime), NULL, NULL)
INSERT [Grl].[tbCiudades] ([Ciud_Id], [Ciud_Descripcion], [Esta_Id], [Ciud_UsuarioCreacion], [Ciud_FechaCreacion], [Ciud_UsuarioModificacion], [Ciud_FechaModificacion]) VALUES (N'002', N'Jutiapa', N'01', 1, CAST(N'2024-04-01T22:54:38.500' AS DateTime), NULL, NULL)
INSERT [Grl].[tbCiudades] ([Ciud_Id], [Ciud_Descripcion], [Esta_Id], [Ciud_UsuarioCreacion], [Ciud_FechaCreacion], [Ciud_UsuarioModificacion], [Ciud_FechaModificacion]) VALUES (N'004', N'Trujillo', N'02', 1, CAST(N'2024-04-01T22:54:38.500' AS DateTime), NULL, NULL)
INSERT [Grl].[tbCiudades] ([Ciud_Id], [Ciud_Descripcion], [Esta_Id], [Ciud_UsuarioCreacion], [Ciud_FechaCreacion], [Ciud_UsuarioModificacion], [Ciud_FechaModificacion]) VALUES (N'005', N'Tocoa', N'02', 1, CAST(N'2024-04-01T22:54:38.500' AS DateTime), NULL, NULL)
INSERT [Grl].[tbCiudades] ([Ciud_Id], [Ciud_Descripcion], [Esta_Id], [Ciud_UsuarioCreacion], [Ciud_FechaCreacion], [Ciud_UsuarioModificacion], [Ciud_FechaModificacion]) VALUES (N'006', N'Sonaguera', N'02', 1, CAST(N'2024-04-01T22:54:38.500' AS DateTime), NULL, NULL)
INSERT [Grl].[tbCiudades] ([Ciud_Id], [Ciud_Descripcion], [Esta_Id], [Ciud_UsuarioCreacion], [Ciud_FechaCreacion], [Ciud_UsuarioModificacion], [Ciud_FechaModificacion]) VALUES (N'007', N'Comayagua', N'03', 1, CAST(N'2024-04-01T22:54:38.500' AS DateTime), NULL, NULL)
INSERT [Grl].[tbCiudades] ([Ciud_Id], [Ciud_Descripcion], [Esta_Id], [Ciud_UsuarioCreacion], [Ciud_FechaCreacion], [Ciud_UsuarioModificacion], [Ciud_FechaModificacion]) VALUES (N'008', N'Siguatepeque', N'03', 1, CAST(N'2024-04-01T22:54:38.500' AS DateTime), NULL, NULL)
INSERT [Grl].[tbCiudades] ([Ciud_Id], [Ciud_Descripcion], [Esta_Id], [Ciud_UsuarioCreacion], [Ciud_FechaCreacion], [Ciud_UsuarioModificacion], [Ciud_FechaModificacion]) VALUES (N'009', N'La Libertad', N'03', 1, CAST(N'2024-04-01T22:54:38.500' AS DateTime), NULL, NULL)
INSERT [Grl].[tbCiudades] ([Ciud_Id], [Ciud_Descripcion], [Esta_Id], [Ciud_UsuarioCreacion], [Ciud_FechaCreacion], [Ciud_UsuarioModificacion], [Ciud_FechaModificacion]) VALUES (N'010', N'Santa Rosa de Copán', N'04', 1, CAST(N'2024-04-01T22:54:38.500' AS DateTime), NULL, NULL)
INSERT [Grl].[tbCiudades] ([Ciud_Id], [Ciud_Descripcion], [Esta_Id], [Ciud_UsuarioCreacion], [Ciud_FechaCreacion], [Ciud_UsuarioModificacion], [Ciud_FechaModificacion]) VALUES (N'011', N'La Entrada', N'04', 1, CAST(N'2024-04-01T22:54:38.500' AS DateTime), NULL, NULL)
INSERT [Grl].[tbCiudades] ([Ciud_Id], [Ciud_Descripcion], [Esta_Id], [Ciud_UsuarioCreacion], [Ciud_FechaCreacion], [Ciud_UsuarioModificacion], [Ciud_FechaModificacion]) VALUES (N'012', N'Copán Ruinas', N'04', 1, CAST(N'2024-04-01T22:54:38.500' AS DateTime), NULL, NULL)
INSERT [Grl].[tbCiudades] ([Ciud_Id], [Ciud_Descripcion], [Esta_Id], [Ciud_UsuarioCreacion], [Ciud_FechaCreacion], [Ciud_UsuarioModificacion], [Ciud_FechaModificacion]) VALUES (N'013', N'San Pedro Sula', N'05', 1, CAST(N'2024-04-01T22:54:38.500' AS DateTime), NULL, NULL)
INSERT [Grl].[tbCiudades] ([Ciud_Id], [Ciud_Descripcion], [Esta_Id], [Ciud_UsuarioCreacion], [Ciud_FechaCreacion], [Ciud_UsuarioModificacion], [Ciud_FechaModificacion]) VALUES (N'014', N'Villanueva', N'05', 1, CAST(N'2024-04-01T22:54:38.500' AS DateTime), NULL, NULL)
INSERT [Grl].[tbCiudades] ([Ciud_Id], [Ciud_Descripcion], [Esta_Id], [Ciud_UsuarioCreacion], [Ciud_FechaCreacion], [Ciud_UsuarioModificacion], [Ciud_FechaModificacion]) VALUES (N'015', N'Choloma', N'05', 1, CAST(N'2024-04-01T22:54:38.500' AS DateTime), NULL, NULL)
INSERT [Grl].[tbCiudades] ([Ciud_Id], [Ciud_Descripcion], [Esta_Id], [Ciud_UsuarioCreacion], [Ciud_FechaCreacion], [Ciud_UsuarioModificacion], [Ciud_FechaModificacion]) VALUES (N'016', N'Adelaida', N'14', 1, CAST(N'2024-04-01T22:57:45.450' AS DateTime), NULL, NULL)
INSERT [Grl].[tbCiudades] ([Ciud_Id], [Ciud_Descripcion], [Esta_Id], [Ciud_UsuarioCreacion], [Ciud_FechaCreacion], [Ciud_UsuarioModificacion], [Ciud_FechaModificacion]) VALUES (N'017', N'Mount Gambier', N'14', 1, CAST(N'2024-04-01T22:57:45.450' AS DateTime), NULL, NULL)
INSERT [Grl].[tbCiudades] ([Ciud_Id], [Ciud_Descripcion], [Esta_Id], [Ciud_UsuarioCreacion], [Ciud_FechaCreacion], [Ciud_UsuarioModificacion], [Ciud_FechaModificacion]) VALUES (N'018', N'El Progreso', N'14', 1, CAST(N'2024-04-01T22:57:45.450' AS DateTime), NULL, NULL)
INSERT [Grl].[tbCiudades] ([Ciud_Id], [Ciud_Descripcion], [Esta_Id], [Ciud_UsuarioCreacion], [Ciud_FechaCreacion], [Ciud_UsuarioModificacion], [Ciud_FechaModificacion]) VALUES (N'019', N'Buenos Aires', N'06', 1, CAST(N'2024-04-01T22:57:45.450' AS DateTime), NULL, NULL)
INSERT [Grl].[tbCiudades] ([Ciud_Id], [Ciud_Descripcion], [Esta_Id], [Ciud_UsuarioCreacion], [Ciud_FechaCreacion], [Ciud_UsuarioModificacion], [Ciud_FechaModificacion]) VALUES (N'021', N'Mar del Plata', N'06', 1, CAST(N'2024-04-01T22:57:45.450' AS DateTime), NULL, NULL)
INSERT [Grl].[tbCiudades] ([Ciud_Id], [Ciud_Descripcion], [Esta_Id], [Ciud_UsuarioCreacion], [Ciud_FechaCreacion], [Ciud_UsuarioModificacion], [Ciud_FechaModificacion]) VALUES (N'4543', N'NBVNB', N'03', 1, CAST(N'2024-04-12T12:30:45.787' AS DateTime), NULL, NULL)
GO
INSERT [Grl].[tbEstados] ([Esta_Id], [Esta_Descripcion], [Esta_UsuarioCreacion], [Esta_FechaCreacion], [Esta_UsuarioModificacion], [Esta_FechaModificacion]) VALUES (N'01', N'Atlántida', 1, CAST(N'2024-04-01T22:47:11.870' AS DateTime), 1, CAST(N'2024-04-04T11:02:31.347' AS DateTime))
INSERT [Grl].[tbEstados] ([Esta_Id], [Esta_Descripcion], [Esta_UsuarioCreacion], [Esta_FechaCreacion], [Esta_UsuarioModificacion], [Esta_FechaModificacion]) VALUES (N'02', N'Colón', 1, CAST(N'2024-04-01T22:47:11.870' AS DateTime), NULL, NULL)
INSERT [Grl].[tbEstados] ([Esta_Id], [Esta_Descripcion], [Esta_UsuarioCreacion], [Esta_FechaCreacion], [Esta_UsuarioModificacion], [Esta_FechaModificacion]) VALUES (N'03', N'Comayagua', 1, CAST(N'2024-04-01T22:47:11.870' AS DateTime), NULL, NULL)
INSERT [Grl].[tbEstados] ([Esta_Id], [Esta_Descripcion], [Esta_UsuarioCreacion], [Esta_FechaCreacion], [Esta_UsuarioModificacion], [Esta_FechaModificacion]) VALUES (N'04', N'Copán', 1, CAST(N'2024-04-01T22:47:11.870' AS DateTime), NULL, NULL)
INSERT [Grl].[tbEstados] ([Esta_Id], [Esta_Descripcion], [Esta_UsuarioCreacion], [Esta_FechaCreacion], [Esta_UsuarioModificacion], [Esta_FechaModificacion]) VALUES (N'05', N'Cortés', 1, CAST(N'2024-04-01T22:47:11.870' AS DateTime), NULL, NULL)
INSERT [Grl].[tbEstados] ([Esta_Id], [Esta_Descripcion], [Esta_UsuarioCreacion], [Esta_FechaCreacion], [Esta_UsuarioModificacion], [Esta_FechaModificacion]) VALUES (N'06', N'Buenos Aires', 1, CAST(N'2024-04-01T22:47:48.100' AS DateTime), NULL, NULL)
INSERT [Grl].[tbEstados] ([Esta_Id], [Esta_Descripcion], [Esta_UsuarioCreacion], [Esta_FechaCreacion], [Esta_UsuarioModificacion], [Esta_FechaModificacion]) VALUES (N'07', N'Córdoba', 1, CAST(N'2024-04-01T22:47:48.100' AS DateTime), NULL, NULL)
INSERT [Grl].[tbEstados] ([Esta_Id], [Esta_Descripcion], [Esta_UsuarioCreacion], [Esta_FechaCreacion], [Esta_UsuarioModificacion], [Esta_FechaModificacion]) VALUES (N'08', N'Santa Fe', 1, CAST(N'2024-04-01T22:47:48.100' AS DateTime), NULL, NULL)
INSERT [Grl].[tbEstados] ([Esta_Id], [Esta_Descripcion], [Esta_UsuarioCreacion], [Esta_FechaCreacion], [Esta_UsuarioModificacion], [Esta_FechaModificacion]) VALUES (N'09', N'Mendoza', 1, CAST(N'2024-04-01T22:47:48.100' AS DateTime), NULL, NULL)
INSERT [Grl].[tbEstados] ([Esta_Id], [Esta_Descripcion], [Esta_UsuarioCreacion], [Esta_FechaCreacion], [Esta_UsuarioModificacion], [Esta_FechaModificacion]) VALUES (N'10', N'Tucumán', 1, CAST(N'2024-04-01T22:47:48.100' AS DateTime), NULL, NULL)
INSERT [Grl].[tbEstados] ([Esta_Id], [Esta_Descripcion], [Esta_UsuarioCreacion], [Esta_FechaCreacion], [Esta_UsuarioModificacion], [Esta_FechaModificacion]) VALUES (N'11', N'Nueva Gales del Sur', 1, CAST(N'2024-04-01T22:49:24.880' AS DateTime), NULL, NULL)
INSERT [Grl].[tbEstados] ([Esta_Id], [Esta_Descripcion], [Esta_UsuarioCreacion], [Esta_FechaCreacion], [Esta_UsuarioModificacion], [Esta_FechaModificacion]) VALUES (N'12', N'Victoria', 1, CAST(N'2024-04-01T22:49:24.880' AS DateTime), NULL, NULL)
INSERT [Grl].[tbEstados] ([Esta_Id], [Esta_Descripcion], [Esta_UsuarioCreacion], [Esta_FechaCreacion], [Esta_UsuarioModificacion], [Esta_FechaModificacion]) VALUES (N'13', N'Queensland', 1, CAST(N'2024-04-01T22:49:24.880' AS DateTime), NULL, NULL)
INSERT [Grl].[tbEstados] ([Esta_Id], [Esta_Descripcion], [Esta_UsuarioCreacion], [Esta_FechaCreacion], [Esta_UsuarioModificacion], [Esta_FechaModificacion]) VALUES (N'14', N'Australia Meridional', 1, CAST(N'2024-04-01T22:49:24.880' AS DateTime), NULL, NULL)
INSERT [Grl].[tbEstados] ([Esta_Id], [Esta_Descripcion], [Esta_UsuarioCreacion], [Esta_FechaCreacion], [Esta_UsuarioModificacion], [Esta_FechaModificacion]) VALUES (N'15', N'Australia Occidental', 1, CAST(N'2024-04-01T22:49:24.880' AS DateTime), NULL, NULL)
INSERT [Grl].[tbEstados] ([Esta_Id], [Esta_Descripcion], [Esta_UsuarioCreacion], [Esta_FechaCreacion], [Esta_UsuarioModificacion], [Esta_FechaModificacion]) VALUES (N'32', N'New', 1, CAST(N'2024-04-12T12:27:25.180' AS DateTime), NULL, NULL)
INSERT [Grl].[tbEstados] ([Esta_Id], [Esta_Descripcion], [Esta_UsuarioCreacion], [Esta_FechaCreacion], [Esta_UsuarioModificacion], [Esta_FechaModificacion]) VALUES (N'43', N'SEKYHTFGF', 1, CAST(N'2024-04-12T12:30:12.970' AS DateTime), NULL, NULL)
INSERT [Grl].[tbEstados] ([Esta_Id], [Esta_Descripcion], [Esta_UsuarioCreacion], [Esta_FechaCreacion], [Esta_UsuarioModificacion], [Esta_FechaModificacion]) VALUES (N'95', N'NewActu', 1, CAST(N'2024-04-03T19:26:07.567' AS DateTime), 1, CAST(N'2024-04-03T20:02:34.163' AS DateTime))
GO
SET IDENTITY_INSERT [Grl].[tbEstadosCiviles] ON 

INSERT [Grl].[tbEstadosCiviles] ([Estc_Id], [Estc_Descripcion], [Estc_UsuarioCreacion], [Estc_FechaCreacion], [Estc_UsuarioModificacion], [Estc_FechaModificacion], [Estc_Estado]) VALUES (1, N'Soltero', 1, CAST(N'2023-10-11T00:00:00.000' AS DateTime), 1, CAST(N'2024-04-10T17:35:12.660' AS DateTime), 1)
INSERT [Grl].[tbEstadosCiviles] ([Estc_Id], [Estc_Descripcion], [Estc_UsuarioCreacion], [Estc_FechaCreacion], [Estc_UsuarioModificacion], [Estc_FechaModificacion], [Estc_Estado]) VALUES (2, N'Casado', 1, CAST(N'2024-04-10T17:18:47.473' AS DateTime), NULL, NULL, 1)
INSERT [Grl].[tbEstadosCiviles] ([Estc_Id], [Estc_Descripcion], [Estc_UsuarioCreacion], [Estc_FechaCreacion], [Estc_UsuarioModificacion], [Estc_FechaModificacion], [Estc_Estado]) VALUES (3, N'FDSFFGFDGFDFF', 1, CAST(N'2024-04-12T12:32:16.527' AS DateTime), NULL, NULL, 0)
SET IDENTITY_INSERT [Grl].[tbEstadosCiviles] OFF
GO
SET IDENTITY_INSERT [Grl].[tbPersonas] ON 

INSERT [Grl].[tbPersonas] ([Perso_Id], [Perso_DNI], [Perso_Nombre], [Perso_Apellido], [Perso_Correo], [Perso_FechaNacimiento], [Perso_Sexo], [Estc_Id], [Perso_Direccion], [Ciud_id], [Perso_UsuarioCreacion], [Perso_FechaCreacion], [Perso_UsuarioModificacion], [Perso_FechaModificacion], [Perso_Estado]) VALUES (1, N'0501', N'Fernando', N'Matute', N'fernanmc15@gmail.com', CAST(N'1999-10-10' AS Date), N'M', 1, N'ave 13, Col. San Carlos', N'010', 1, CAST(N'2024-10-04T00:00:00.000' AS DateTime), NULL, NULL, 1)
INSERT [Grl].[tbPersonas] ([Perso_Id], [Perso_DNI], [Perso_Nombre], [Perso_Apellido], [Perso_Correo], [Perso_FechaNacimiento], [Perso_Sexo], [Estc_Id], [Perso_Direccion], [Ciud_id], [Perso_UsuarioCreacion], [Perso_FechaCreacion], [Perso_UsuarioModificacion], [Perso_FechaModificacion], [Perso_Estado]) VALUES (2, N'1804200502571', N'Sua Abigail', N'Rubio Euceda', N'suarubio@hotmail.com', CAST(N'2024-05-05' AS Date), N'f', 2, N'Tela', N'002', 1, CAST(N'2024-05-05T00:00:00.000' AS DateTime), NULL, NULL, 1)
INSERT [Grl].[tbPersonas] ([Perso_Id], [Perso_DNI], [Perso_Nombre], [Perso_Apellido], [Perso_Correo], [Perso_FechaNacimiento], [Perso_Sexo], [Estc_Id], [Perso_Direccion], [Ciud_id], [Perso_UsuarioCreacion], [Perso_FechaCreacion], [Perso_UsuarioModificacion], [Perso_FechaModificacion], [Perso_Estado]) VALUES (5, N'1804200502572', N'Adamarys', N'Carabantes', N'adamarys@hotmail.com', CAST(N'2000-05-05' AS Date), N'f', 3, N'El Progreso', N'004', 1, CAST(N'2024-05-05T00:00:00.000' AS DateTime), NULL, NULL, 1)
INSERT [Grl].[tbPersonas] ([Perso_Id], [Perso_DNI], [Perso_Nombre], [Perso_Apellido], [Perso_Correo], [Perso_FechaNacimiento], [Perso_Sexo], [Estc_Id], [Perso_Direccion], [Ciud_id], [Perso_UsuarioCreacion], [Perso_FechaCreacion], [Perso_UsuarioModificacion], [Perso_FechaModificacion], [Perso_Estado]) VALUES (6, N'1804200501515', N'Andrea Michell', N'Guevara', N'michell13@gmail.com', CAST(N'2005-05-05' AS Date), N'f', 2, N'El Progreso', N'018', NULL, CAST(N'2024-04-16T21:12:26.073' AS DateTime), NULL, NULL, 1)
INSERT [Grl].[tbPersonas] ([Perso_Id], [Perso_DNI], [Perso_Nombre], [Perso_Apellido], [Perso_Correo], [Perso_FechaNacimiento], [Perso_Sexo], [Estc_Id], [Perso_Direccion], [Ciud_id], [Perso_UsuarioCreacion], [Perso_FechaCreacion], [Perso_UsuarioModificacion], [Perso_FechaModificacion], [Perso_Estado]) VALUES (12, N'1231', N'ess', N'ess', N'ess', CAST(N'2024-04-25' AS Date), N'f', 1, N'ess', N'001', NULL, CAST(N'2024-04-24T21:53:12.977' AS DateTime), NULL, NULL, 1)
INSERT [Grl].[tbPersonas] ([Perso_Id], [Perso_DNI], [Perso_Nombre], [Perso_Apellido], [Perso_Correo], [Perso_FechaNacimiento], [Perso_Sexo], [Estc_Id], [Perso_Direccion], [Ciud_id], [Perso_UsuarioCreacion], [Perso_FechaCreacion], [Perso_UsuarioModificacion], [Perso_FechaModificacion], [Perso_Estado]) VALUES (13, N'3211', N'sess', N'sess', N'sess', CAST(N'2024-04-25' AS Date), N'm', 2, N'sess', N'002', NULL, CAST(N'2024-04-24T23:11:09.090' AS DateTime), NULL, NULL, 1)
INSERT [Grl].[tbPersonas] ([Perso_Id], [Perso_DNI], [Perso_Nombre], [Perso_Apellido], [Perso_Correo], [Perso_FechaNacimiento], [Perso_Sexo], [Estc_Id], [Perso_Direccion], [Ciud_id], [Perso_UsuarioCreacion], [Perso_FechaCreacion], [Perso_UsuarioModificacion], [Perso_FechaModificacion], [Perso_Estado]) VALUES (15, N'wwe', N'wwe', N'wwe', N'wwe@gmail.com', NULL, NULL, 1, N'wwe', N'019', NULL, CAST(N'2024-04-25T03:18:36.503' AS DateTime), NULL, NULL, 1)
INSERT [Grl].[tbPersonas] ([Perso_Id], [Perso_DNI], [Perso_Nombre], [Perso_Apellido], [Perso_Correo], [Perso_FechaNacimiento], [Perso_Sexo], [Estc_Id], [Perso_Direccion], [Ciud_id], [Perso_UsuarioCreacion], [Perso_FechaCreacion], [Perso_UsuarioModificacion], [Perso_FechaModificacion], [Perso_Estado]) VALUES (16, N'0501-2000', N'Karolina', N'Herrera', N'kh@gmail.com', NULL, NULL, 1, N'nueva direccion', N'021', NULL, CAST(N'2024-04-25T11:21:35.260' AS DateTime), NULL, NULL, 1)
INSERT [Grl].[tbPersonas] ([Perso_Id], [Perso_DNI], [Perso_Nombre], [Perso_Apellido], [Perso_Correo], [Perso_FechaNacimiento], [Perso_Sexo], [Estc_Id], [Perso_Direccion], [Ciud_id], [Perso_UsuarioCreacion], [Perso_FechaCreacion], [Perso_UsuarioModificacion], [Perso_FechaModificacion], [Perso_Estado]) VALUES (17, N'3212', N'aver', N'aver', N'aver@gmail.com', CAST(N'2024-04-25' AS Date), N'f', 1, N'sps', N'001', NULL, CAST(N'2024-04-25T11:09:37.423' AS DateTime), NULL, NULL, 1)
INSERT [Grl].[tbPersonas] ([Perso_Id], [Perso_DNI], [Perso_Nombre], [Perso_Apellido], [Perso_Correo], [Perso_FechaNacimiento], [Perso_Sexo], [Estc_Id], [Perso_Direccion], [Ciud_id], [Perso_UsuarioCreacion], [Perso_FechaCreacion], [Perso_UsuarioModificacion], [Perso_FechaModificacion], [Perso_Estado]) VALUES (18, N'4234', N'ssaa', N'ssaa', N'ssaa', CAST(N'2024-04-25' AS Date), N'f', 2, N'ssaa', N'002', NULL, CAST(N'2024-04-25T11:13:37.050' AS DateTime), NULL, NULL, 1)
INSERT [Grl].[tbPersonas] ([Perso_Id], [Perso_DNI], [Perso_Nombre], [Perso_Apellido], [Perso_Correo], [Perso_FechaNacimiento], [Perso_Sexo], [Estc_Id], [Perso_Direccion], [Ciud_id], [Perso_UsuarioCreacion], [Perso_FechaCreacion], [Perso_UsuarioModificacion], [Perso_FechaModificacion], [Perso_Estado]) VALUES (19, N'5234', N'ssfsfg', N'ssfsfg', N'ssfsfg', CAST(N'2024-04-25' AS Date), N'f', 2, N'ssfsfg', N'002', NULL, CAST(N'2024-04-25T11:16:04.210' AS DateTime), NULL, NULL, 1)
INSERT [Grl].[tbPersonas] ([Perso_Id], [Perso_DNI], [Perso_Nombre], [Perso_Apellido], [Perso_Correo], [Perso_FechaNacimiento], [Perso_Sexo], [Estc_Id], [Perso_Direccion], [Ciud_id], [Perso_UsuarioCreacion], [Perso_FechaCreacion], [Perso_UsuarioModificacion], [Perso_FechaModificacion], [Perso_Estado]) VALUES (20, N'434234', N'funcionapls', N'funcionapls', N'sggg@ggg.com', NULL, NULL, 1, N'funcionapls', N'019', NULL, CAST(N'2024-04-25T12:34:31.783' AS DateTime), NULL, NULL, 1)
SET IDENTITY_INSERT [Grl].[tbPersonas] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_tbPantallas_Pant_Descripcion]    Script Date: 27/04/2024 21:50:46 ******/
ALTER TABLE [Acc].[tbPantallas] ADD  CONSTRAINT [UK_tbPantallas_Pant_Descripcion] UNIQUE NONCLUSTERED 
(
	[Pant_Descripcion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_tbRoles_Role_Descripcion]    Script Date: 27/04/2024 21:50:46 ******/
ALTER TABLE [Acc].[tbRoles] ADD  CONSTRAINT [UK_tbRoles_Role_Descripcion] UNIQUE NONCLUSTERED 
(
	[Role_Descripcion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_tbUsuarios_Usua_Usuario]    Script Date: 27/04/2024 21:50:46 ******/
ALTER TABLE [Acc].[tbUsuarios] ADD  CONSTRAINT [UK_tbUsuarios_Usua_Usuario] UNIQUE NONCLUSTERED 
(
	[Usua_Usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO

/****** Object:  Index [UK_tbCiudades_Ciud_Descripcion]    Script Date: 27/04/2024 21:50:46 ******/
ALTER TABLE [Grl].[tbCiudades] ADD  CONSTRAINT [UK_tbCiudades_Ciud_Descripcion] UNIQUE NONCLUSTERED 
(
	[Ciud_Descripcion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_tbEstados_Esta_Descripcion]    Script Date: 27/04/2024 21:50:46 ******/
ALTER TABLE [Grl].[tbEstados] ADD  CONSTRAINT [UK_tbEstados_Esta_Descripcion] UNIQUE NONCLUSTERED 
(
	[Esta_Descripcion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_tbEstadosCiviles_Estc_Descripcion]    Script Date: 27/04/2024 21:50:46 ******/
ALTER TABLE [Grl].[tbEstadosCiviles] ADD  CONSTRAINT [UK_tbEstadosCiviles_Estc_Descripcion] UNIQUE NONCLUSTERED 
(
	[Estc_Descripcion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO

ALTER TABLE [Acc].[tbPantallas] ADD  DEFAULT ((1)) FOR [Pant_Estado]
GO
ALTER TABLE [Acc].[tbPantallasPorRoles] ADD  DEFAULT ((1)) FOR [PaPr_Estado]
GO
ALTER TABLE [Acc].[tbRoles] ADD  CONSTRAINT [DF__tbRoles__Role_Es__48CFD27E]  DEFAULT ((1)) FOR [Role_Estado]
GO
ALTER TABLE [Acc].[tbUsuarios] ADD  DEFAULT ((1)) FOR [Usua_Estado]
GO
ALTER TABLE [Grl].[tbEstadosCiviles] ADD  DEFAULT ((1)) FOR [Estc_Estado]
GO
ALTER TABLE [Grl].[tbPersonas] ADD  DEFAULT ((1)) FOR [Perso_Estado]
GO
ALTER TABLE [Acc].[tbPantallas]  WITH CHECK ADD  CONSTRAINT [FK_tbPantallas_tbUsuarios_UsuarioCreacion] FOREIGN KEY([Pant_UsuarioCreacion])
REFERENCES [Acc].[tbUsuarios] ([Usua_Id])
GO
ALTER TABLE [Acc].[tbPantallas] CHECK CONSTRAINT [FK_tbPantallas_tbUsuarios_UsuarioCreacion]
GO
ALTER TABLE [Acc].[tbPantallas]  WITH CHECK ADD  CONSTRAINT [FK_tbPantallas_tbUsuarios_UsuarioModificacion] FOREIGN KEY([Pant_UsuarioModificacion])
REFERENCES [Acc].[tbUsuarios] ([Usua_Id])
GO
ALTER TABLE [Acc].[tbPantallas] CHECK CONSTRAINT [FK_tbPantallas_tbUsuarios_UsuarioModificacion]
GO
ALTER TABLE [Acc].[tbPantallasPorRoles]  WITH CHECK ADD  CONSTRAINT [FK_tbPantallasPorRoles_tbUsuarios_UsuarioCreacion] FOREIGN KEY([PaPr_UsuarioCreacion])
REFERENCES [Acc].[tbUsuarios] ([Usua_Id])
GO
ALTER TABLE [Acc].[tbPantallasPorRoles] CHECK CONSTRAINT [FK_tbPantallasPorRoles_tbUsuarios_UsuarioCreacion]
GO
ALTER TABLE [Acc].[tbPantallasPorRoles]  WITH CHECK ADD  CONSTRAINT [FK_tbPantallasPorRoles_tbUsuarios_UsuarioModificacion] FOREIGN KEY([PaPr_UsuarioModificacion])
REFERENCES [Acc].[tbUsuarios] ([Usua_Id])
GO
ALTER TABLE [Acc].[tbPantallasPorRoles] CHECK CONSTRAINT [FK_tbPantallasPorRoles_tbUsuarios_UsuarioModificacion]
GO
ALTER TABLE [Acc].[tbPantallasPorRoles]  WITH CHECK ADD  CONSTRAINT [FK_tbPantallasxRol_tbPantallas_Pant_Id] FOREIGN KEY([Pant_Id])
REFERENCES [Acc].[tbPantallas] ([Pant_Id])
GO
ALTER TABLE [Acc].[tbPantallasPorRoles] CHECK CONSTRAINT [FK_tbPantallasxRol_tbPantallas_Pant_Id]
GO
ALTER TABLE [Acc].[tbPantallasPorRoles]  WITH CHECK ADD  CONSTRAINT [FK_tbPantallasxRol_tbRoles_Role_Id] FOREIGN KEY([Role_Id])
REFERENCES [Acc].[tbRoles] ([Role_Id])
GO
ALTER TABLE [Acc].[tbPantallasPorRoles] CHECK CONSTRAINT [FK_tbPantallasxRol_tbRoles_Role_Id]
GO
ALTER TABLE [Acc].[tbRoles]  WITH CHECK ADD  CONSTRAINT [FK_tbRoles_tbUsuarios_UsuarioCreacion] FOREIGN KEY([Role_UsuarioCreacion])
REFERENCES [Acc].[tbUsuarios] ([Usua_Id])
GO
ALTER TABLE [Acc].[tbRoles] CHECK CONSTRAINT [FK_tbRoles_tbUsuarios_UsuarioCreacion]
GO
ALTER TABLE [Acc].[tbRoles]  WITH CHECK ADD  CONSTRAINT [FK_tbRoles_tbUsuarios_UsuarioModificacion] FOREIGN KEY([Role_UsuarioModificacion])
REFERENCES [Acc].[tbUsuarios] ([Usua_Id])
GO
ALTER TABLE [Acc].[tbRoles] CHECK CONSTRAINT [FK_tbRoles_tbUsuarios_UsuarioModificacion]
GO
ALTER TABLE [Acc].[tbUsuarios]  WITH CHECK ADD  CONSTRAINT [FK_tbUsuarios_tbPersonas_Perso_Id] FOREIGN KEY([Perso_Id])
REFERENCES [Grl].[tbPersonas] ([Perso_Id])
GO
ALTER TABLE [Acc].[tbUsuarios] CHECK CONSTRAINT [FK_tbUsuarios_tbPersonas_Perso_Id]
GO
ALTER TABLE [Acc].[tbUsuarios]  WITH CHECK ADD  CONSTRAINT [FK_tbUsuarios_tbRoles_Role_Id] FOREIGN KEY([Role_Id])
REFERENCES [Acc].[tbRoles] ([Role_Id])
GO
ALTER TABLE [Acc].[tbUsuarios] CHECK CONSTRAINT [FK_tbUsuarios_tbRoles_Role_Id]
GO
ALTER TABLE [Acc].[tbUsuarios]  WITH CHECK ADD  CONSTRAINT [FK_tbUsuarios_tbUsuarios_UsuarioCreacion] FOREIGN KEY([Usua_UsuarioCreacion])
REFERENCES [Acc].[tbUsuarios] ([Usua_Id])
GO
ALTER TABLE [Acc].[tbUsuarios] CHECK CONSTRAINT [FK_tbUsuarios_tbUsuarios_UsuarioCreacion]
GO
ALTER TABLE [Acc].[tbUsuarios]  WITH CHECK ADD  CONSTRAINT [FK_tbUsuarios_tbUsuarios_UsuarioModificacion] FOREIGN KEY([Usua_UsuarioModificacion])
REFERENCES [Acc].[tbUsuarios] ([Usua_Id])
GO
ALTER TABLE [Acc].[tbUsuarios] CHECK CONSTRAINT [FK_tbUsuarios_tbUsuarios_UsuarioModificacion]
GO
ALTER TABLE [Grl].[tbCiudades]  WITH CHECK ADD  CONSTRAINT [FK_tbCiudades_tbEstartamentos_Esta_Id] FOREIGN KEY([Esta_Id])
REFERENCES [Grl].[tbEstados] ([Esta_Id])
GO
ALTER TABLE [Grl].[tbCiudades] CHECK CONSTRAINT [FK_tbCiudades_tbEstartamentos_Esta_Id]
GO
ALTER TABLE [Grl].[tbCiudades]  WITH CHECK ADD  CONSTRAINT [FK_tbCiudades_tbUsuarios_UsuarioCreacion] FOREIGN KEY([Ciud_UsuarioCreacion])
REFERENCES [Acc].[tbUsuarios] ([Usua_Id])
GO
ALTER TABLE [Grl].[tbCiudades] CHECK CONSTRAINT [FK_tbCiudades_tbUsuarios_UsuarioCreacion]
GO
ALTER TABLE [Grl].[tbCiudades]  WITH CHECK ADD  CONSTRAINT [FK_tbCiudades_tbUsuarios_UsuarioModificacion] FOREIGN KEY([Ciud_UsuarioModificacion])
REFERENCES [Acc].[tbUsuarios] ([Usua_Id])
GO
ALTER TABLE [Grl].[tbCiudades] CHECK CONSTRAINT [FK_tbCiudades_tbUsuarios_UsuarioModificacion]
GO
ALTER TABLE [Grl].[tbEstados]  WITH CHECK ADD  CONSTRAINT [FK_tbEstados_tbUsuarios_UsuarioCreacion] FOREIGN KEY([Esta_UsuarioCreacion])
REFERENCES [Acc].[tbUsuarios] ([Usua_Id])
GO
ALTER TABLE [Grl].[tbEstados] CHECK CONSTRAINT [FK_tbEstados_tbUsuarios_UsuarioCreacion]
GO
ALTER TABLE [Grl].[tbEstados]  WITH CHECK ADD  CONSTRAINT [FK_tbEstados_tbUsuarios_UsuarioModificacion] FOREIGN KEY([Esta_UsuarioModificacion])
REFERENCES [Acc].[tbUsuarios] ([Usua_Id])
GO
ALTER TABLE [Grl].[tbEstados] CHECK CONSTRAINT [FK_tbEstados_tbUsuarios_UsuarioModificacion]
GO
ALTER TABLE [Grl].[tbEstadosCiviles]  WITH CHECK ADD  CONSTRAINT [FK_tbEstadosCiviles_tbUsuarios_UsuarioCreacion] FOREIGN KEY([Estc_UsuarioCreacion])
REFERENCES [Acc].[tbUsuarios] ([Usua_Id])
GO
ALTER TABLE [Grl].[tbEstadosCiviles] CHECK CONSTRAINT [FK_tbEstadosCiviles_tbUsuarios_UsuarioCreacion]
GO
ALTER TABLE [Grl].[tbEstadosCiviles]  WITH CHECK ADD  CONSTRAINT [FK_tbEstadosCiviles_tbUsuarios_UsuarioModificacion] FOREIGN KEY([Estc_UsuarioModificacion])
REFERENCES [Acc].[tbUsuarios] ([Usua_Id])
GO
ALTER TABLE [Grl].[tbEstadosCiviles] CHECK CONSTRAINT [FK_tbEstadosCiviles_tbUsuarios_UsuarioModificacion]
GO
ALTER TABLE [Grl].[tbPersonas]  WITH CHECK ADD  CONSTRAINT [FK_tbPersonas_tbCiudades_Ciud_Id] FOREIGN KEY([Ciud_id])
REFERENCES [Grl].[tbCiudades] ([Ciud_Id])
GO
ALTER TABLE [Grl].[tbPersonas] CHECK CONSTRAINT [FK_tbPersonas_tbCiudades_Ciud_Id]
GO
ALTER TABLE [Grl].[tbPersonas]  WITH CHECK ADD  CONSTRAINT [FK_tbPersonas_tbEstadosCiviles_Estc_Id] FOREIGN KEY([Estc_Id])
REFERENCES [Grl].[tbEstadosCiviles] ([Estc_Id])
GO
ALTER TABLE [Grl].[tbPersonas] CHECK CONSTRAINT [FK_tbPersonas_tbEstadosCiviles_Estc_Id]
GO
ALTER TABLE [Grl].[tbPersonas]  WITH CHECK ADD  CONSTRAINT [FK_tbPersonas_tbUsuarios_UsuarioCreacion] FOREIGN KEY([Perso_UsuarioCreacion])
REFERENCES [Acc].[tbUsuarios] ([Usua_Id])
GO
ALTER TABLE [Grl].[tbPersonas] CHECK CONSTRAINT [FK_tbPersonas_tbUsuarios_UsuarioCreacion]
GO
ALTER TABLE [Grl].[tbPersonas]  WITH CHECK ADD  CONSTRAINT [FK_tbPersonas_tbUsuarios_UsuarioModificacion] FOREIGN KEY([Perso_UsuarioModificacion])
REFERENCES [Acc].[tbUsuarios] ([Usua_Id])
GO
ALTER TABLE [Grl].[tbPersonas] CHECK CONSTRAINT [FK_tbPersonas_tbUsuarios_UsuarioModificacion]
GO
/****** Object:  StoredProcedure [Acc].[SP_Pantallas_Actualizar]    Script Date: 27/04/2024 21:50:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Acc].[SP_Pantallas_Actualizar]
    @Pant_Id INT,
    @Pant_Descripcion VARCHAR(60),
    @Pant_UsuarioModificacion INT,
    @Pant_FechaModificacion DATETIME
AS
BEGIN
    BEGIN TRY
        UPDATE Acc.tbPantallas
        SET Pant_Descripcion = @Pant_Descripcion,
            Pant_UsuarioModificacion = @Pant_UsuarioModificacion,
            Pant_FechaModificacion = @Pant_FechaModificacion
        WHERE Pant_Id = @Pant_Id;
        SELECT 1;
    END TRY
    BEGIN CATCH
        SELECT 0;
    END CATCH
END;


GO
/****** Object:  StoredProcedure [Acc].[SP_Pantallas_Eliminar]    Script Date: 27/04/2024 21:50:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Acc].[SP_Pantallas_Eliminar]
    @Pant_Id INT
AS
BEGIN
    BEGIN TRY
        UPDATE Acc.tbPantallas
        SET Pant_Estado = 0
        WHERE Pant_Id = @Pant_Id;
        SELECT 1;
    END TRY
    BEGIN CATCH
        SELECT 0;
    END CATCH
END;


GO
/****** Object:  StoredProcedure [Acc].[SP_Pantallas_Insertar]    Script Date: 27/04/2024 21:50:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Acc].[SP_Pantallas_Insertar]
    @Pant_Descripcion VARCHAR(60),
    @Pant_UsuarioCreacion INT,
    @Pant_FechaCreacion DATETIME
AS
BEGIN
    BEGIN TRY
        INSERT INTO Acc.tbPantallas (
            Pant_Descripcion,
            Pant_UsuarioCreacion,
            Pant_FechaCreacion
        )
        VALUES (
            @Pant_Descripcion,
            @Pant_UsuarioCreacion,
            @Pant_FechaCreacion
        );
        SELECT 1;
    END TRY
    BEGIN CATCH
        SELECT 0;
    END CATCH
END;

GO
/****** Object:  StoredProcedure [Acc].[SP_Pantallas_LlenarEditar]    Script Date: 27/04/2024 21:50:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Acc].[SP_Pantallas_LlenarEditar]
	@Pant_Id INT
AS
BEGIN
    SELECT *
    FROM Acc.tbPantallas
    WHERE Pant_Id = @Pant_Id
END;

GO
/****** Object:  StoredProcedure [Acc].[SP_Pantallas_Seleccionar]    Script Date: 27/04/2024 21:50:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Acc].[SP_Pantallas_Seleccionar]
    @RoleId INT
AS
BEGIN
    SELECT Pan.Pant_Id, Pan.Pant_Descripcion
    FROM Acc.tbPantallas AS Pan
    WHERE Pan.Pant_Estado = 1
      AND NOT EXISTS (
          SELECT 1
          FROM Acc.tbPantallasPorRoles AS PxR
          WHERE PxR.Role_Id = @RoleId AND PxR.Pant_Id = Pan.Pant_Id
      )
END

GO
/****** Object:  StoredProcedure [Acc].[SP_PantallasPorRoles_Actualizar]    Script Date: 27/04/2024 21:50:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Acc].[SP_PantallasPorRoles_Actualizar]
    @PaPr_Id INT,
    @Pant_Id INT,
    @Role_Id INT,
    @PaPr_UsuarioModificacion INT,
    @PaPr_FechaModificacion DATETIME
AS
BEGIN
    BEGIN TRY
        UPDATE Acc.tbPantallasPorRoles
        SET Pant_Id = @Pant_Id,
            Role_Id = @Role_Id,
            PaPr_UsuarioModificacion = @PaPr_UsuarioModificacion,
            PaPr_FechaModificacion = @PaPr_FechaModificacion
        WHERE PaPr_Id = @PaPr_Id;
        SELECT 1;
    END TRY
    BEGIN CATCH
        SELECT 0;
    END CATCH
END;

GO
/****** Object:  StoredProcedure [Acc].[SP_PantallasPorRoles_Eliminar]    Script Date: 27/04/2024 21:50:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Acc].[SP_PantallasPorRoles_Eliminar]
   	@PaPr_Id INT
AS
BEGIN
    BEGIN TRY
        DELETE FROM acc.tbPantallasPorRoles
	WHERE  PaPr_Id = @PaPr_Id
        SELECT 1;
    END TRY
    BEGIN CATCH
        SELECT 0;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Acc].[SP_PantallasPorRoles_Insertar]    Script Date: 27/04/2024 21:50:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Acc].[SP_PantallasPorRoles_Insertar]
    @Pant_Id INT,
    @Role_Id INT,
    @PaPr_UsuarioCreacion INT,
    @PaPr_FechaCreacion DATETIME
AS
BEGIN
    BEGIN TRY
        INSERT INTO Acc.tbPantallasPorRoles (
            Pant_Id,
            Role_Id,
            PaPr_UsuarioCreacion,
            PaPr_FechaCreacion
        )
        VALUES (
            @Pant_Id,
            @Role_Id,
            @PaPr_UsuarioCreacion,
            @PaPr_FechaCreacion
        );
        SELECT 1;
    END TRY
    BEGIN CATCH
        SELECT 0;
    END CATCH
END;

GO
/****** Object:  StoredProcedure [Acc].[SP_PantallasPorRoles_LlenarEditar]    Script Date: 27/04/2024 21:50:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Acc].[SP_PantallasPorRoles_LlenarEditar]
	@PaPr_Id INT
AS
BEGIN
    SELECT *
    FROM Acc.tbPantallasPorRoles
    WHERE PaPr_Id = @PaPr_Id
END;

GO
/****** Object:  StoredProcedure [Acc].[SP_PantallasPorRoles_Mostrar]    Script Date: 27/04/2024 21:50:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE[Acc].[SP_PantallasPorRoles_Mostrar]
@Role_Id INT
AS
BEGIN
	SELECT  PaPr_Id, PanRo.Pant_Id, Pant_Descripcion
	FROM Acc.tbPantallasPorRoles AS PanRo 
	INNER JOIN Acc.tbPantallas AS PAN ON PAN.Pant_Id = PanRo.Pant_Id
	WHERE Role_Id = @Role_Id and Pan.Pant_Estado = 1
END
GO
/****** Object:  StoredProcedure [Acc].[SP_PantallasPorRoles_Seleccionar]    Script Date: 27/04/2024 21:50:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Acc].[SP_PantallasPorRoles_Seleccionar]
@Role_Id INT
AS
BEGIN
	SELECT	PanRo.Role_Id,
	PAN.Pant_Id,
			Pant_Descripcion
	FROM Acc.tbPantallasPorRoles AS PanRo 
	INNER JOIN Acc.tbPantallas AS PAN ON PAN.Pant_Id = PanRo.Pant_Id
	WHERE  Pan.Pant_Estado = 1 AND PanRo.Role_Id = @Role_Id
END

GO
/****** Object:  StoredProcedure [Acc].[SP_Roles_Actualizar]    Script Date: 27/04/2024 21:50:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Acc].[SP_Roles_Actualizar]
    @Role_Id INT,
    @Role_Descripcion VARCHAR(30),
    @Role_UsuarioModificacion INT,
    @Role_FechaModificacion DATETIME
AS
BEGIN
    BEGIN TRY
        UPDATE Acc.tbRoles
        SET Role_Descripcion = @Role_Descripcion,
            Role_UsuarioModificacion = @Role_UsuarioModificacion,
            Role_FechaModificacion = @Role_FechaModificacion
        WHERE Role_Id = @Role_Id;
        SELECT 1;
    END TRY
    BEGIN CATCH
        SELECT 0;
    END CATCH
END;

GO
/****** Object:  StoredProcedure [Acc].[SP_Roles_Eliminar]    Script Date: 27/04/2024 21:50:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Acc].[SP_Roles_Eliminar]
    @Role_Id INT
AS
BEGIN
    BEGIN TRY
        UPDATE Acc.tbRoles
        SET Role_Estado = 0
        WHERE Role_Id = @Role_Id;
        SELECT 1;
    END TRY
    BEGIN CATCH
        SELECT 0;
    END CATCH
END;

GO
/****** Object:  StoredProcedure [Acc].[SP_Roles_Insertar]    Script Date: 27/04/2024 21:50:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Acc].[SP_Roles_Insertar]
    @Role_Descripcion VARCHAR(30),
    @Role_UsuarioCreacion INT,
    @Role_FechaCreacion DATETIME,
	@role_id int OUTPUT
AS
BEGIN
  DECLARE @estadoActual INT;

   SELECT @estadoActual = Role_estado FROM Acc.tbRoles WHERE Role_Descripcion = @Role_Descripcion;
   BEGIN TRY 
      IF @estadoActual IS NOT NULL
	     BEGIN
       
            IF @estadoActual = 0
            BEGIN
                -- El estado es 0, actualiza el estado a 1
                UPDATE Acc.tbRoles SET Role_Estado = 1 WHERE Role_Descripcion = @Role_Descripcion;
                SELECT 1
            END
            ELSE
            BEGIN
      
                SELECT 0;
            END
        END
		 ELSE
        BEGIN
	INSERT INTO Acc.tbRoles (Role_Descripcion,Role_UsuarioCreacion,Role_FechaCreacion)
	VALUES( @Role_Descripcion, @Role_UsuarioCreacion, @Role_FechaCreacion)
	SET @role_id = SCOPE_IDENTITY();
	SELECT 1
	END
	END TRY
	BEGIN CATCH
		SELECT 0
	END CATCH
END;

GO
/****** Object:  StoredProcedure [Acc].[SP_Roles_LLenar]    Script Date: 27/04/2024 21:50:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [Acc].[SP_Roles_LLenar]
@Rol_Id INT
AS
BEGIN
	SELECT	Role_Id,
				Role_Descripcion,
				Role_UsuarioCreacion,
				Role_UsuarioModificacion,
				Role_FechaCreacion,
				Role_FechaModificacion
	FROM Acc.tbRoles AS Rol
	WHERE Rol.Role_Estado = 1 AND Role_Id = @Rol_Id
END

GO
/****** Object:  StoredProcedure [Acc].[SP_Roles_LlenarEditar]    Script Date: 27/04/2024 21:50:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Acc].[SP_Roles_LlenarEditar]
	@Role_Id INT
AS
BEGIN
    SELECT *
    FROM Acc.tbRoles
    WHERE Role_Id = @Role_Id
END;
GO
/****** Object:  StoredProcedure [Acc].[SP_Roles_Seleccionar]    Script Date: 27/04/2024 21:50:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Acc].[SP_Roles_Seleccionar]
AS
BEGIN
    SELECT Role_Id, Role_Descripcion, Role_UsuarioCreacion, Role_FechaCreacion, Role_UsuarioModificacion, Role_FechaModificacion, Role_Estado
    FROM Acc.tbRoles
    WHERE Role_Estado = 1;
END;

GO
/****** Object:  StoredProcedure [Acc].[SP_Usuarios_Actualizar]    Script Date: 27/04/2024 21:50:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Acc].[SP_Usuarios_Actualizar]
    @Usua_Id INT,
    @Usua_Usuario VARCHAR(60),
    @Usua_EsAdmin BIT,
    @Perso_Id INT,
    @Role_Id INT,
    @Usua_UsuarioModificacion INT,
    @Usua_FechaModificacion DATETIME
AS
BEGIN
    BEGIN TRY
        UPDATE Acc.tbUsuarios
        SET Usua_Usuario = @Usua_Usuario,
            Usua_EsAdmin = @Usua_EsAdmin,
            Perso_Id = @Perso_Id,
            Role_Id = @Role_Id,
            Usua_UsuarioModificacion = @Usua_UsuarioModificacion,
            Usua_FechaModificacion = @Usua_FechaModificacion
        WHERE Usua_Id = @Usua_Id;
        SELECT 1;
    END TRY
    BEGIN CATCH
        SELECT 0;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Acc].[SP_Usuarios_Detalles]    Script Date: 27/04/2024 21:50:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Acc].[SP_Usuarios_Detalles] 
 @Usua_Id INT
 AS
 BEGIN
 SELECT 
 USUA.Usua_Id, USUA.Usua_Usuario, USUA.Usua_FechaCreacion, USUA.Usua_FechaModificacion,USUA.Usua_EsAdmin, 
 CASE WHEN USUA.Usua_UsuarioCreacion = USUA.Usua_Id THEN USUA.Usua_Usuario ELSE USUA.Usua_Usuario END AS Usua_UsuarioCreacion,
 CASE WHEN USU.Usua_UsuarioModificacion = USU.Usua_Id THEN USU.Usua_Usuario ELSE 'Sin Modificar' END AS Usua_UsuarioModificacion,
 PERS.Perso_Id, Perso_DNI, Perso_Nombre, Perso_Apellido, 
 ROL.Role_Id, Role_Descripcion 
 FROM Acc.tbUsuarios AS USUA 
      INNER JOIN Grl.tbPersonas AS PERS ON USUA.Perso_Id = PERS.Perso_Id
	  INNER JOIN Acc.tbRoles AS ROL ON USUA.Role_Id = ROL.Role_Id
	  	   	  LEFT JOIN Acc.tbUsuarios AS USU ON USUA.Usua_UsuarioModificacion = USU.Usua_Id	  

	  WHERE USUA.Usua_Id = @Usua_Id
END
GO
/****** Object:  StoredProcedure [Acc].[SP_Usuarios_Eliminar]    Script Date: 27/04/2024 21:50:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Acc].[SP_Usuarios_Eliminar]
    @Usua_Id INT
AS
BEGIN
    BEGIN TRY
        UPDATE Acc.tbUsuarios
        SET Usua_Estado = 0
        WHERE Usua_Id = @Usua_Id;
        SELECT 1;
    END TRY
    BEGIN CATCH
        SELECT 0;
    END CATCH
END;

GO
/****** Object:  StoredProcedure [Acc].[SP_Usuarios_Insertar]    Script Date: 27/04/2024 21:50:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [Acc].[SP_Usuarios_Insertar]
    @Usua_Usuario VARCHAR(60),
    @Usua_Contraseña VARCHAR(MAX),
    @Usua_EsAdmin BIT,
	@Perso_Id INT,
	@Role_Id INT,
    @Usua_UsuarioCreacion INT,
    @Usua_FechaCreacion DATETIME
AS
BEGIN
    BEGIN TRY
        INSERT INTO Acc.tbUsuarios (
            Usua_Usuario,
            Usua_Contraseña,
            Usua_EsAdmin,
            Perso_Id,
			Role_Id,
            Usua_UsuarioCreacion,
            Usua_FechaCreacion
        )
        VALUES (
            @Usua_Usuario,
			CONVERT (VARCHAR (MAX), HASHBYTES ('SHA2_512', @Usua_Contraseña), 2),
            @Usua_EsAdmin,
			@Perso_Id,
			@Role_Id,
            @Usua_UsuarioCreacion,
            @Usua_FechaCreacion
        );
        SELECT 1;
    END TRY
    BEGIN CATCH
        SELECT 0;
    END CATCH
END;

GO
/****** Object:  StoredProcedure [Acc].[SP_Usuarios_InsertarValidar]    Script Date: 27/04/2024 21:50:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Acc].[SP_Usuarios_InsertarValidar]
    @Usua_Usuario VARCHAR(60),
    @Usua_ValidarCorreo VARCHAR(MAX)

AS
BEGIN
    BEGIN TRY
        UPDATE Acc.tbUsuarios
        SET Usua_VerificarCorreo = @Usua_ValidarCorreo
        WHERE Usua_Usuario = @Usua_Usuario;
        SELECT 1;
    END TRY
    BEGIN CATCH
        SELECT 0;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Acc].[SP_Usuarios_LlenarEditar]    Script Date: 27/04/2024 21:50:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Acc].[SP_Usuarios_LlenarEditar]
	@Usua_Id INT
AS
BEGIN
    SELECT *
    FROM Acc.tbUsuarios USU inner join Acc.tbRoles ROL on USU.Role_Id = ROL.Role_Id
	inner join Grl.tbPersonas PERS on USU.Perso_Id = PERS.Perso_Id

    WHERE Usua_Id = @Usua_Id
END;
GO
/****** Object:  StoredProcedure [Acc].[SP_Usuarios_ObtenerCorreo]    Script Date: 27/04/2024 21:50:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Acc].[SP_Usuarios_ObtenerCorreo]
	@Usua_Usuario VARCHAR(60)
AS
BEGIN
    SELECT Usua_Usuario, Perso_Nombre, Perso_Correo
    FROM Acc.tbUsuarios USU	inner join Grl.tbPersonas PERS on USU.Perso_Id = PERS.Perso_Id

    WHERE Usua_Usuario = @Usua_Usuario
END;
GO
/****** Object:  StoredProcedure [Acc].[SP_Usuarios_Reestablecer]    Script Date: 27/04/2024 21:50:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Acc].[SP_Usuarios_Reestablecer]
(
    @Usua_VerificarCorreo VARCHAR(MAX),

    @Usua_Contraseña VARCHAR(MAX),
    @Usua_UsuarioModificacion INT, 
    @Usua_FechaModificacion DATETIME
)
AS
BEGIN
    BEGIN TRY
	UPDATE Acc.tbUsuarios
			SET Usua_Contraseña = CONVERT (VARCHAR (MAX), HASHBYTES ('SHA2_512', @Usua_Contraseña), 2),
			
				Usua_UsuarioModificacion = @Usua_UsuarioModificacion,
				Usua_FechaModificacion = @Usua_FechaModificacion
			WHERE Usua_VerificarCorreo = @Usua_VerificarCorreo

        SELECT 1;
    END TRY
    BEGIN CATCH
        SELECT 0;
    END CATCH
END;

GO
/****** Object:  StoredProcedure [Acc].[SP_Usuarios_ReestablecerContraseña]    Script Date: 27/04/2024 21:50:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [Acc].[SP_Usuarios_ReestablecerContraseña]
(
    @Usua_id INT,
	@CodigoVerificacion VARCHAR(MAX),
    @Usua_Contraseña VARCHAR(MAX),
    @Usua_UsuarioModificacion INT, 
    @Usua_FechaModificacion DATETIME
)
AS
BEGIN
    BEGIN TRY
	-- FASE BETA --
		IF(@CodigoVerificacion = 123)
		BEGIN
			UPDATE Acc.tbUsuarios
			SET Usua_Contraseña = CONVERT (VARCHAR (MAX), HASHBYTES ('SHA2_512', @Usua_Contraseña), 2),
			
				Usua_UsuarioModificacion = @Usua_UsuarioModificacion,
				Usua_FechaModificacion = @Usua_FechaModificacion
			WHERE Usua_id = @Usua_id
		END

        SELECT 1;
    END TRY
    BEGIN CATCH
        SELECT 0;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Acc].[SP_Usuarios_Seleccionar]    Script Date: 27/04/2024 21:50:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Acc].[SP_Usuarios_Seleccionar] 
AS
BEGIN
    SELECT Usua_Id, Usua_Usuario, Usua_Contraseña, Usua_EsAdmin, Usua_VerificarCorreo, CASE Usua_EsAdmin WHEN 1 THEN 'Si' WHEN 0 THEN 'No' END Usua_Admin1, Role_Descripcion, CONCAT(Perso_Nombre, ' ', Perso_Apellido) Perso_Nombre, Perso_Correo, Usua_UsuarioCreacion, Usua_FechaCreacion, Usua_UsuarioModificacion, Usua_FechaModificacion, Usua_Estado
    FROM Acc.tbUsuarios USU
	inner join Acc.tbRoles ROL on USU.Role_Id = ROL.Role_Id
	inner join Grl.tbPersonas PERS on USU.Perso_Id = PERS.Perso_Id


    WHERE Usua_Estado = 1;
END;
GO
/****** Object:  StoredProcedure [Acc].[SP_UsuariosValidarInicioSesion]    Script Date: 27/04/2024 21:50:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Acc].[SP_UsuariosValidarInicioSesion] 
	@Usuario VARCHAR(30),
	@Contraseña VARCHAR(max)
AS
BEGIN 
	SELECT	usu.Usua_id,
			usu.usua_Usuario,
			usu.usua_Contraseña,
			PR.Role_Id,
			p.Pant_Descripcion,
			usu.Usua_EsAdmin,
			PE.Perso_Id,
			PE.Perso_Correo,
			Concat(PE.Perso_Nombre, ' ', PE.Perso_Apellido) Perso_Nombre,
			RE.Regi_Id
	FROM Acc.tbUsuarios AS usu left JOIN Acc.tbPantallasPorRoles AS PR ON PR.role_id = usu.role_id left JOIN Acc.tbPantallas AS P ON P.Pant_Id = PR.Pant_Id
		inner join Grl.tbPersonas PE ON PE.Perso_Id = usu.Perso_Id Inner join Gas.tbRegistros RE ON RE.Perso_Id = PE.Perso_Id
		
	WHERE usu.Usua_Usuario = @Usuario AND usu.Usua_Contraseña = CONVERT (VARCHAR (MAX), HASHBYTES ('SHA2_512', @Contraseña), 2);
END
GO
/****** Object:  StoredProcedure [Gas].[SP_Categorias_Actualizar]    Script Date: 27/04/2024 21:50:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [Grl].[SP_Ciudades_Actualizar]
    @Ciud_Id VARCHAR(4),
    @Ciud_Descripcion VARCHAR(40),
    @Esta_Id VARCHAR(2),
    @Ciud_UsuarioModificacion INT,
    @Ciud_FechaModificacion DATETIME
AS
BEGIN
    BEGIN TRY
        UPDATE Grl.tbCiudades
        SET Ciud_Descripcion = @Ciud_Descripcion,
            Esta_Id = @Esta_Id,
            Ciud_UsuarioModificacion = @Ciud_UsuarioModificacion,
            Ciud_FechaModificacion = @Ciud_FechaModificacion
        WHERE Ciud_Id = @Ciud_Id;
        SELECT 1;
    END TRY
    BEGIN CATCH
        SELECT 0;
    END CATCH
END;

GO
/****** Object:  StoredProcedure [Grl].[SP_Ciudades_Eliminar]    Script Date: 27/04/2024 21:50:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Grl].[SP_Ciudades_Eliminar]
    @Ciud_Id VARCHAR(4)
AS
BEGIN
    BEGIN TRY
        DELETE FROM Grl.tbCiudades
        WHERE Ciud_Id = @Ciud_Id;
        SELECT 1;
    END TRY
    BEGIN CATCH
        SELECT 0;
    END CATCH
END;

GO
/****** Object:  StoredProcedure [Grl].[SP_Ciudades_Insertar]    Script Date: 27/04/2024 21:50:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Grl].[SP_Ciudades_Insertar]
    @Ciud_Id VARCHAR(4),
    @Ciud_Descripcion VARCHAR(40),
    @Esta_Id VARCHAR(2),
    @Ciud_UsuarioCreacion INT,
    @Ciud_FechaCreacion DATETIME
AS
BEGIN
    BEGIN TRY
        INSERT INTO Grl.tbCiudades (
            Ciud_Id,
            Ciud_Descripcion,
            Esta_Id,
            Ciud_UsuarioCreacion,
            Ciud_FechaCreacion
        )
        VALUES (
            @Ciud_Id,
            @Ciud_Descripcion,
            @Esta_Id,
            @Ciud_UsuarioCreacion,
            @Ciud_FechaCreacion
        );
        SELECT 1;
    END TRY
    BEGIN CATCH
        SELECT 0;
    END CATCH
END;

GO
/****** Object:  StoredProcedure [Grl].[SP_Ciudades_LlenarEditar]    Script Date: 27/04/2024 21:50:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Grl].[SP_Ciudades_LlenarEditar]
	@Ciud_Id INT
AS
BEGIN
    SELECT *
    FROM Grl.tbCiudades inner join grl.tbEstados on grl.tbCiudades.Esta_Id = grl.tbEstados.Esta_Id
    WHERE Ciud_Id = @Ciud_Id
END;
GO
/****** Object:  StoredProcedure [Grl].[SP_Ciudades_Seleccionar]    Script Date: 27/04/2024 21:50:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Grl].[SP_Ciudades_Seleccionar]
AS
BEGIN
    SELECT Ciud_Id, Ciud_Descripcion, Esta_Descripcion, Ciud_UsuarioCreacion, Ciud_FechaCreacion, Ciud_UsuarioModificacion, Ciud_FechaModificacion
    FROM Grl.tbCiudades inner join grl.tbEstados on grl.tbCiudades.Esta_Id = grl.tbEstados.Esta_Id
END;

GO
/****** Object:  StoredProcedure [Grl].[SP_CiudadesPorEstados]    Script Date: 27/04/2024 21:50:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Grl].[SP_CiudadesPorEstados]
@Esta_id VARCHAR(2)
AS
BEGIN
	SELECT * FROM Grl.tbCiudades 
	WHERE Esta_Id = @Esta_id
END
GO
/****** Object:  StoredProcedure [Grl].[SP_CiudadesPorEstados_Seleccionar]    Script Date: 27/04/2024 21:50:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Grl].[SP_CiudadesPorEstados_Seleccionar]
(
 @Esta_Id VARCHAR(2)
)
AS
BEGIN
    SELECT [Ciud_Id] ,[Ciud_Descripcion], MUN.Esta_Id
	FROM [Grl].[tbCiudades] MUN INNER JOIN [Grl].tbEstados EST ON EST.Esta_Id = MUN.Esta_Id
	WHERE MUN.Esta_Id = @Esta_Id;
END;
GO
/****** Object:  StoredProcedure [Grl].[SP_Estados_Actualizar]    Script Date: 27/04/2024 21:50:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Grl].[SP_Estados_Actualizar]
    @Esta_Id VARCHAR(2),
    @Esta_Descripcion VARCHAR(40),
    @Esta_UsuarioModificacion INT,
    @Esta_FechaModificacion DATETIME
AS
BEGIN
    BEGIN TRY
        UPDATE Grl.tbEstados
        SET Esta_Descripcion = @Esta_Descripcion,
            Esta_UsuarioModificacion = @Esta_UsuarioModificacion,
            Esta_FechaModificacion = @Esta_FechaModificacion
        WHERE Esta_Id = @Esta_Id;
        SELECT 1;
    END TRY
    BEGIN CATCH
        SELECT 0;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Grl].[SP_Estados_Eliminar]    Script Date: 27/04/2024 21:50:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Grl].[SP_Estados_Eliminar]
    @Esta_Id VARCHAR(2)
AS
BEGIN
    BEGIN TRY
        DELETE FROM Grl.tbEstados
        WHERE Esta_Id = @Esta_Id;
        SELECT 1;
    END TRY
    BEGIN CATCH
        SELECT 0;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Grl].[SP_Estados_Insertar]    Script Date: 27/04/2024 21:50:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-----
CREATE PROCEDURE [Grl].[SP_Estados_Insertar]
    @Esta_Id VARCHAR(2),
    @Esta_Descripcion VARCHAR(40),
    @Esta_UsuarioCreacion INT,
    @Esta_FechaCreacion DATETIME
AS
BEGIN
    BEGIN TRY
        INSERT INTO Grl.tbEstados (
            Esta_Id,
            Esta_Descripcion,
            Esta_UsuarioCreacion,
            Esta_FechaCreacion
        )
        VALUES (
            @Esta_Id,
            @Esta_Descripcion,
            @Esta_UsuarioCreacion,
            @Esta_FechaCreacion
        );
        SELECT 1 AS DATO;
    END TRY
    BEGIN CATCH
        SELECT 0 AS DATO;
    END CATCH
END;


GO
/****** Object:  StoredProcedure [Grl].[SP_Estados_LlenarEditar]    Script Date: 27/04/2024 21:50:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Grl].[SP_Estados_LlenarEditar]
    @Esta_Id VARCHAR(2)
AS
BEGIN
    SELECT *
    FROM Grl.tbEstados
    WHERE Esta_Id = @Esta_Id
END;
GO
/****** Object:  StoredProcedure [Grl].[SP_Estados_Seleccionar]    Script Date: 27/04/2024 21:50:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Grl].[SP_Estados_Seleccionar]
AS
BEGIN
    SELECT Esta_Id, Esta_Descripcion, Esta_UsuarioCreacion, Esta_FechaCreacion, Esta_UsuarioModificacion, Esta_FechaModificacion
    FROM Grl.tbEstados
END;
GO
/****** Object:  StoredProcedure [Grl].[SP_EstadosCiviles_Actualizar]    Script Date: 27/04/2024 21:50:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--------

CREATE PROCEDURE [Grl].[SP_EstadosCiviles_Actualizar]
    @Estc_Id INT,
    @Estc_Descripcion VARCHAR(30),
    @Estc_UsuarioModificacion INT,
    @Estc_FechaModificacion DATETIME
AS
BEGIN
    BEGIN TRY
        UPDATE Grl.tbEstadosCiviles
        SET Estc_Descripcion = @Estc_Descripcion,
            Estc_UsuarioModificacion = @Estc_UsuarioModificacion,
            Estc_FechaModificacion = @Estc_FechaModificacion
        WHERE Estc_Id = @Estc_Id;
        SELECT 1;
    END TRY
    BEGIN CATCH
        SELECT 0;
    END CATCH
END;

GO
/****** Object:  StoredProcedure [Grl].[SP_EstadosCiviles_Eliminar]    Script Date: 27/04/2024 21:50:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Grl].[SP_EstadosCiviles_Eliminar]
    @Estc_Id INT
AS
BEGIN
    BEGIN TRY
        UPDATE Grl.tbEstadosCiviles
        SET Estc_Estado = 0
        WHERE Estc_Id = @Estc_Id;
        SELECT 1;
    END TRY
    BEGIN CATCH
        SELECT 0;
    END CATCH
END;

GO
/****** Object:  StoredProcedure [Grl].[SP_EstadosCiviles_Insertar]    Script Date: 27/04/2024 21:50:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Grl].[SP_EstadosCiviles_Insertar]
    @Estc_Descripcion VARCHAR(30),
    @Estc_UsuarioCreacion INT,
    @Estc_FechaCreacion DATETIME
AS
BEGIN
    BEGIN TRY
        INSERT INTO Grl.tbEstadosCiviles (
            Estc_Descripcion,
            Estc_UsuarioCreacion,
            Estc_FechaCreacion
        )
        VALUES (
            @Estc_Descripcion,
            @Estc_UsuarioCreacion,
            @Estc_FechaCreacion
        );
        SELECT 1;
    END TRY
    BEGIN CATCH
        SELECT 0;
    END CATCH
END;

GO
/****** Object:  StoredProcedure [Grl].[SP_EstadosCiviles_LlenarEditar]    Script Date: 27/04/2024 21:50:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Grl].[SP_EstadosCiviles_LlenarEditar]
	@Estc_Id INT
AS
BEGIN
    SELECT *
    FROM Grl.tbEstadosCiviles
    WHERE Estc_Id = @Estc_Id
END;

GO
/****** Object:  StoredProcedure [Grl].[SP_EstadosCiviles_Seleccionar]    Script Date: 27/04/2024 21:50:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Grl].[SP_EstadosCiviles_Seleccionar]
AS
BEGIN
    SELECT Estc_Id, Estc_Descripcion, Estc_UsuarioCreacion, Estc_FechaCreacion, Estc_UsuarioModificacion, Estc_FechaModificacion, Estc_Estado
    FROM Grl.tbEstadosCiviles
    WHERE Estc_Estado = 1;
END;

GO

/****** Object:  StoredProcedure [Grl].[SP_ObtenerPersona_Seleccionar]    Script Date: 27/04/2024 21:50:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Grl].[SP_ObtenerPersona_Seleccionar]
    @Perso_DNI VARCHAR(50)
AS
BEGIN
    SELECT CONCAT(Perso_Nombre, ' ', Perso_Apellido) Perso_Nombre, Perso_DNI, Perso_Id
    FROM Grl.tbPersonas
    WHERE Perso_DNI = @Perso_DNI
END;
GO

/****** Object:  StoredProcedure [Grl].[SP_Personas_Actualizar]    Script Date: 27/04/2024 21:50:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

----------------------------------

CREATE PROCEDURE [Grl].[SP_Personas_Actualizar]
    @Perso_Id INT,
    @Perso_DNI VARCHAR(50),
    @Perso_Nombre VARCHAR(60),
    @Perso_Apellido VARCHAR(60),
	@Perso_Correo varchar(60),
    @Perso_FechaNacimiento DATE,
    @Perso_Sexo CHAR(1),
    @Estc_Id INT,
    @Perso_Direccion VARCHAR(60),
    @Ciud_Id VARCHAR(4),
    @Perso_UsuarioModificacion INT,
    @Perso_FechaModificacion DATETIME
AS
BEGIN
    BEGIN TRY
        UPDATE Grl.tbPersonas
        SET Perso_DNI = @Perso_DNI,
            Perso_Nombre = @Perso_Nombre,
            Perso_Apellido = @Perso_Apellido,
			Perso_Correo = @Perso_Correo,
            Perso_FechaNacimiento = @Perso_FechaNacimiento,
            Perso_Sexo = @Perso_Sexo,
            Estc_Id = @Estc_Id,
            Perso_Direccion = @Perso_Direccion,
            Ciud_Id = @Ciud_Id,
            Perso_UsuarioModificacion = @Perso_UsuarioModificacion,
            Perso_FechaModificacion = @Perso_FechaModificacion
        WHERE Perso_Id = @Perso_Id;
        SELECT 1;
    END TRY
    BEGIN CATCH
        SELECT 0;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Grl].[SP_Personas_Eliminar]    Script Date: 27/04/2024 21:50:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Grl].[SP_Personas_Eliminar]
    @Perso_Id INT
AS
BEGIN
    BEGIN TRY
        UPDATE Grl.tbPersonas
        SET Perso_Estado = 0
        WHERE Perso_Id = @Perso_Id;
        SELECT 1;
    END TRY
    BEGIN CATCH
        SELECT 0;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Grl].[SP_Personas_Insertar]    Script Date: 27/04/2024 21:50:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [Grl].[SP_Personas_Insertar]
    @Perso_DNI VARCHAR(50),
    @Perso_Nombre VARCHAR(60),
    @Perso_Apellido VARCHAR(60),
	@Perso_Correo varchar(60),
    @Perso_FechaNacimiento DATE,
    @Perso_Sexo CHAR(1),
    @Estc_Id INT,
    @Perso_Direccion VARCHAR(60),
    @Ciud_Id VARCHAR(4),
    @Perso_FechaCreacion DATETIME
AS
BEGIN
    BEGIN TRY
        INSERT INTO Grl.tbPersonas (
            Perso_DNI,
            Perso_Nombre,
            Perso_Apellido,
			Perso_Correo,
            Perso_FechaNacimiento,
            Perso_Sexo,
            Estc_Id,
            Perso_Direccion,
            Ciud_Id,
            Perso_FechaCreacion
        )
        VALUES (
            @Perso_DNI,
            @Perso_Nombre,
            @Perso_Apellido,
			@Perso_Correo,
            @Perso_FechaNacimiento,
            @Perso_Sexo,
            @Estc_Id,
            @Perso_Direccion,
            @Ciud_Id,
            @Perso_FechaCreacion
        );
        SELECT 1;
    END TRY
    BEGIN CATCH
        SELECT 0;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [Grl].[SP_Personas_LlenarEditar]    Script Date: 27/04/2024 21:50:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Grl].[SP_Personas_LlenarEditar]
    @Perso_Id INT
AS
BEGIN
    SELECT *
    FROM Grl.tbPersonas PE inner join grl.tbEstadosCiviles EC on PE.Estc_Id = EC.Estc_Id
	inner join grl.tbCiudades MU on PE.Ciud_id = MU.Ciud_Id
    WHERE Perso_Id = @Perso_Id
END;
GO
/****** Object:  StoredProcedure [Grl].[SP_Personas_Seleccionar]    Script Date: 27/04/2024 21:50:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Grl].[SP_Personas_Seleccionar]
AS
BEGIN
    SELECT Perso_Id, Perso_DNI, Perso_Nombre, Perso_Apellido, Perso_Correo, Perso_FechaNacimiento, CASE Perso_Sexo WHEN 'F' THEN 'FEMENINO' WHEN 'M' THEN 'MASCULINO' END Perso_Sexo, PE.Estc_Id, Perso_Direccion, PE.Ciud_Id, Perso_UsuarioCreacion, Perso_FechaCreacion, Perso_UsuarioModificacion, Perso_FechaModificacion, Perso_Estado, EC.Estc_Descripcion, MU.Ciud_Descripcion
    FROM Grl.tbPersonas PE inner join grl.tbEstadosCiviles EC on PE.Estc_Id = EC.Estc_Id
	inner join grl.tbCiudades MU on PE.Ciud_id = MU.Ciud_Id
    WHERE Perso_Estado = 1 AND Perso_Id != 2;
END;
GO








--/////////////////////////////////////////////////////////////////////////////


CREATE TABLE Pro.tbCursos(
	Curso_Id INT IDENTITY(1,1) NOT NULL,
	Curso_Descripcion VARCHAR (60) NOT NULL,
	Curso_DuracionHoras INT,
	Curso_UsuarioCreacion int NOT NULL,
	Curso_FechaCreacion datetime NOT NULL,
	Curso_UsuarioModificacion int NULL,
	Curso_FechaModificacion datetime NULL,
	Curso_Estado bit
	
	CONSTRAINT FK_tbCursos_tbUsuarios_Curso_UsuarioCreacion FOREIGN KEY (Curso_UsuarioCreacion)
	REFERENCES Acc.tbUsuarios (Usua_Id),
	CONSTRAINT FK_tbCursos_tbUsuarios_Curso_UsuarioModificacion FOREIGN KEY (Curso_UsuarioModificacion)
	REFERENCES Acc.tbUsuarios (Usua_Id)
	
)



CREATE TABLE Pro.tbCargos(
	Carg_Id INT IDENTITY(1,1) NOT NULL,
	Carg_Descripcion VARCHAR (60) NOT NULL,
	Carg_UsuarioCreacion int NOT NULL,
	Carg_FechaCreacion datetime NOT NULL,
	Carg_UsuarioModificacion int NULL,
	Carg_FechaModificacion datetime NULL,
	Carg_Estado bit
	
	CONSTRAINT FK_tbCargos_tbUsuarios_Carg_UsuarioCreacion FOREIGN KEY (Carg_UsuarioCreacion)
	REFERENCES Acc.tbUsuarios (Usua_Id),
	CONSTRAINT FK_tbCargos_tbUsuarios_Carg_UsuarioModificacion FOREIGN KEY (Carg_UsuarioModificacion)
	REFERENCES Acc.tbUsuarios (Usua_Id)
	
)


CREATE TABLE Pro.tbCursosImpartidos(
	CurIm_Id INT IDENTITY(1,1) NOT NULL,
	CurIm_Descripcion VARCHAR (60) NOT NULL,
	Curso_Id INT,
	CurIm_UsuarioCreacion int NOT NULL,
	CurIm_FechaCreacion datetime NOT NULL,
	CurIm_UsuarioModificacion int NULL,
	CurIm_FechaModificacion datetime NULL,
	CurIm_Estado bit
	
	CONSTRAINT FK_tbCursosImpartidos_tbUsuarios_CurIm_UsuarioCreacion FOREIGN KEY (CurIm_UsuarioCreacion)
	REFERENCES Acc.tbUsuarios (Usua_Id),
	CONSTRAINT FK_tbCursosImpartidos_tbUsuarios_CurIm_UsuarioModificacion FOREIGN KEY (CurIm_UsuarioModificacion)
	REFERENCES Acc.tbUsuarios (Usua_Id),
	CONSTRAINT FK_tbCursosImpartidos_tbUsuarios_CurIm_UsuarioModificacion FOREIGN KEY (Curso_Id)
	REFERENCES Pro.tbCursos (Curso_Id)
)
