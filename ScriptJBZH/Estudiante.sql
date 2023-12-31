USE [Progra2]
GO
/****** Object:  Table [dbo].[Estudiante]    Script Date: 15/10/2023 11:42:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estudiante](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Nombres] [varchar](255) NOT NULL,
	[Apellidos] [varchar](255) NOT NULL,
	[Edad] [int] NULL,
	[Sexo] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Estudiante] ON 

INSERT [dbo].[Estudiante] ([id], [Nombres], [Apellidos], [Edad], [Sexo]) VALUES (1, N'Josue Bryan', N'Hernandez Zelaya', 20, N'M')
INSERT [dbo].[Estudiante] ([id], [Nombres], [Apellidos], [Edad], [Sexo]) VALUES (2, N'Jhonson Humberto', N'Leiva Salinas', 20, N'M')
INSERT [dbo].[Estudiante] ([id], [Nombres], [Apellidos], [Edad], [Sexo]) VALUES (3, N'Salvador Rodrigo', N'Segura Calderon', 19, N'M')
INSERT [dbo].[Estudiante] ([id], [Nombres], [Apellidos], [Edad], [Sexo]) VALUES (4, N'Steysi Elizabeth ', N'Jacobo Soriano', 19, N'F')
INSERT [dbo].[Estudiante] ([id], [Nombres], [Apellidos], [Edad], [Sexo]) VALUES (5, N'Pepito', N'Pérez', 0, NULL)
INSERT [dbo].[Estudiante] ([id], [Nombres], [Apellidos], [Edad], [Sexo]) VALUES (6, N'Pepito', N'Pérez', 0, NULL)
INSERT [dbo].[Estudiante] ([id], [Nombres], [Apellidos], [Edad], [Sexo]) VALUES (7, N'Pepito', N'Pérez', 30, N'M')
INSERT [dbo].[Estudiante] ([id], [Nombres], [Apellidos], [Edad], [Sexo]) VALUES (8, N'Kevin Jose', N'Perez Palma', 12, N'M')
INSERT [dbo].[Estudiante] ([id], [Nombres], [Apellidos], [Edad], [Sexo]) VALUES (9, N'Jose Ricardo', N'Lopez Beltran', 67, N'M')
INSERT [dbo].[Estudiante] ([id], [Nombres], [Apellidos], [Edad], [Sexo]) VALUES (10, N'Ana ', N'Palma', 18, N'F')
INSERT [dbo].[Estudiante] ([id], [Nombres], [Apellidos], [Edad], [Sexo]) VALUES (11, N'Jose', N'Manuel', 10, N'M')
INSERT [dbo].[Estudiante] ([id], [Nombres], [Apellidos], [Edad], [Sexo]) VALUES (12, N'Josue Bryan', N'Hernandez Zelaya', 21, N'M')
INSERT [dbo].[Estudiante] ([id], [Nombres], [Apellidos], [Edad], [Sexo]) VALUES (13, N'Paola ', N'Zelaya', 30, N'F')
SET IDENTITY_INSERT [dbo].[Estudiante] OFF
GO
