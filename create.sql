USE [ChatPlatform]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 30/7/2020 17:07:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BotActivo] [bit] NOT NULL,
	[ChatId] [nvarchar](10) NULL,
 CONSTRAINT [PK_dbo.Clientes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dialogos]    Script Date: 30/7/2020 17:07:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dialogos](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Resuelta] [bit] NOT NULL,
	[Cliente_ID] [int] NULL,
	[Usuario_ID] [int] NULL,
 CONSTRAINT [PK_dbo.Dialogos] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mensajes]    Script Date: 30/7/2020 17:07:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mensajes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Texto] [nvarchar](300) NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[OrigenEmisor] [int] NOT NULL,
	[Cliente_ID] [int] NULL,
	[Usuario_ID] [int] NULL,
	[Dialogo_ID] [int] NULL,
 CONSTRAINT [PK_dbo.Mensajes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 30/7/2020 17:07:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](30) NULL,
	[Password] [nvarchar](30) NULL,
	[Administrador] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.Usuarios] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Clientes] ON 

INSERT [dbo].[Clientes] ([ID], [BotActivo], [ChatId]) VALUES (9, 0, N'099093041')
INSERT [dbo].[Clientes] ([ID], [BotActivo], [ChatId]) VALUES (10, 0, N'099699468')
INSERT [dbo].[Clientes] ([ID], [BotActivo], [ChatId]) VALUES (12, 0, N'094408386')
SET IDENTITY_INSERT [dbo].[Clientes] OFF
GO
SET IDENTITY_INSERT [dbo].[Dialogos] ON 

INSERT [dbo].[Dialogos] ([ID], [Resuelta], [Cliente_ID], [Usuario_ID]) VALUES (2, 0, 9, 1)
INSERT [dbo].[Dialogos] ([ID], [Resuelta], [Cliente_ID], [Usuario_ID]) VALUES (3, 0, 10, 1)
INSERT [dbo].[Dialogos] ([ID], [Resuelta], [Cliente_ID], [Usuario_ID]) VALUES (4, 0, 12, 1)
INSERT [dbo].[Dialogos] ([ID], [Resuelta], [Cliente_ID], [Usuario_ID]) VALUES (1002, 0, 10, 3)
INSERT [dbo].[Dialogos] ([ID], [Resuelta], [Cliente_ID], [Usuario_ID]) VALUES (1004, 0, 10, 1002)
INSERT [dbo].[Dialogos] ([ID], [Resuelta], [Cliente_ID], [Usuario_ID]) VALUES (1005, 0, 9, 1003)
INSERT [dbo].[Dialogos] ([ID], [Resuelta], [Cliente_ID], [Usuario_ID]) VALUES (1007, 0, 9, 3)
SET IDENTITY_INSERT [dbo].[Dialogos] OFF
GO
SET IDENTITY_INSERT [dbo].[Mensajes] ON 

INSERT [dbo].[Mensajes] ([ID], [Texto], [FechaCreacion], [OrigenEmisor], [Cliente_ID], [Usuario_ID], [Dialogo_ID]) VALUES (2, N'Hola, soy el tercer mensaje', CAST(N'2020-07-29T17:37:00.993' AS DateTime), 0, 12, 3, 2)
INSERT [dbo].[Mensajes] ([ID], [Texto], [FechaCreacion], [OrigenEmisor], [Cliente_ID], [Usuario_ID], [Dialogo_ID]) VALUES (3, N'Hola, soy el tercer mensaje', CAST(N'2020-07-29T17:45:43.007' AS DateTime), 0, 10, 1, NULL)
INSERT [dbo].[Mensajes] ([ID], [Texto], [FechaCreacion], [OrigenEmisor], [Cliente_ID], [Usuario_ID], [Dialogo_ID]) VALUES (4, N'Hola, soy el tercer mensaje', CAST(N'2020-07-29T17:47:26.383' AS DateTime), 0, 10, 1, 3)
INSERT [dbo].[Mensajes] ([ID], [Texto], [FechaCreacion], [OrigenEmisor], [Cliente_ID], [Usuario_ID], [Dialogo_ID]) VALUES (5, N'Hola, soy el 10000 mensaje', CAST(N'2020-07-29T17:49:56.467' AS DateTime), 0, 12, 1, 4)
SET IDENTITY_INSERT [dbo].[Mensajes] OFF
GO
SET IDENTITY_INSERT [dbo].[Usuarios] ON 

INSERT [dbo].[Usuarios] ([ID], [Nombre], [Password], [Administrador]) VALUES (1, N'Usuario1', N'pass1', 1)
INSERT [dbo].[Usuarios] ([ID], [Nombre], [Password], [Administrador]) VALUES (3, N'Usuario2', N'pass2', 1)
INSERT [dbo].[Usuarios] ([ID], [Nombre], [Password], [Administrador]) VALUES (1002, N'Usuario3', N'pass3', 0)
INSERT [dbo].[Usuarios] ([ID], [Nombre], [Password], [Administrador]) VALUES (1003, N'Usuario4', N'pass4', 0)
SET IDENTITY_INSERT [dbo].[Usuarios] OFF
GO
ALTER TABLE [dbo].[Dialogos]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Dialogos_dbo.Clientes_Cliente_ID] FOREIGN KEY([Cliente_ID])
REFERENCES [dbo].[Clientes] ([ID])
GO
ALTER TABLE [dbo].[Dialogos] CHECK CONSTRAINT [FK_dbo.Dialogos_dbo.Clientes_Cliente_ID]
GO
ALTER TABLE [dbo].[Dialogos]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Dialogos_dbo.Usuarios_Usuario_ID] FOREIGN KEY([Usuario_ID])
REFERENCES [dbo].[Usuarios] ([ID])
GO
ALTER TABLE [dbo].[Dialogos] CHECK CONSTRAINT [FK_dbo.Dialogos_dbo.Usuarios_Usuario_ID]
GO
ALTER TABLE [dbo].[Mensajes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Mensajes_dbo.Clientes_Cliente_ID] FOREIGN KEY([Cliente_ID])
REFERENCES [dbo].[Clientes] ([ID])
GO
ALTER TABLE [dbo].[Mensajes] CHECK CONSTRAINT [FK_dbo.Mensajes_dbo.Clientes_Cliente_ID]
GO
ALTER TABLE [dbo].[Mensajes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Mensajes_dbo.Dialogos_Dialogo_ID] FOREIGN KEY([Dialogo_ID])
REFERENCES [dbo].[Dialogos] ([ID])
GO
ALTER TABLE [dbo].[Mensajes] CHECK CONSTRAINT [FK_dbo.Mensajes_dbo.Dialogos_Dialogo_ID]
GO
ALTER TABLE [dbo].[Mensajes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Mensajes_dbo.Usuarios_Usuario_ID] FOREIGN KEY([Usuario_ID])
REFERENCES [dbo].[Usuarios] ([ID])
GO
ALTER TABLE [dbo].[Mensajes] CHECK CONSTRAINT [FK_dbo.Mensajes_dbo.Usuarios_Usuario_ID]
GO
