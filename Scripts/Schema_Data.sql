USE [SAEP_2022]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 24/05/2022 18:08:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comentarios]    Script Date: 24/05/2022 18:08:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comentarios](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Comentario] [nvarchar](max) NULL,
	[IdEquipamento] [int] NOT NULL,
	[IdPerfil] [int] NOT NULL,
	[Data] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Comentarios] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Equipamentos]    Script Date: 24/05/2022 18:08:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Equipamentos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Equipamento] [nvarchar](max) NULL,
	[Imagem] [nvarchar](max) NULL,
	[Descricao] [nvarchar](max) NULL,
	[Ativo] [bit] NOT NULL,
	[Data] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Equipamentos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Perfis]    Script Date: 24/05/2022 18:08:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Perfis](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Perfil] [nvarchar](max) NULL,
 CONSTRAINT [PK_Perfis] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 24/05/2022 18:08:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Senha] [nvarchar](max) NULL,
	[IdPerfil] [int] NOT NULL,
 CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220402174910_bd', N'5.0.15')
GO
SET IDENTITY_INSERT [dbo].[Comentarios] ON 

INSERT [dbo].[Comentarios] ([Id], [Comentario], [IdEquipamento], [IdPerfil], [Data]) VALUES (1, N'Deverá fazer o download do aplicativo da razer para alterar a cor do mouse.', 2, 4, CAST(N'2020-09-07T18:00:00.0000000' AS DateTime2))
INSERT [dbo].[Comentarios] ([Id], [Comentario], [IdEquipamento], [IdPerfil], [Data]) VALUES (2, N'Problema de aquecimento no processador após 1 ano de uso.', 2, 2, CAST(N'2020-05-04T07:30:00.0000000' AS DateTime2))
INSERT [dbo].[Comentarios] ([Id], [Comentario], [IdEquipamento], [IdPerfil], [Data]) VALUES (3, N'Belo equipamento', 1, 1, CAST(N'2022-05-24T10:04:58.3062613' AS DateTime2))
INSERT [dbo].[Comentarios] ([Id], [Comentario], [IdEquipamento], [IdPerfil], [Data]) VALUES (4, N'show', 1, 2, CAST(N'2022-05-24T11:12:25.8045485' AS DateTime2))
INSERT [dbo].[Comentarios] ([Id], [Comentario], [IdEquipamento], [IdPerfil], [Data]) VALUES (5, N'ccc ', 1, 2, CAST(N'2022-05-24T11:16:45.1471235' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Comentarios] OFF
GO
SET IDENTITY_INSERT [dbo].[Equipamentos] ON 

INSERT [dbo].[Equipamentos] ([Id], [Equipamento], [Imagem], [Descricao], [Ativo], [Data]) VALUES (1, N'Torno Mecânico 500mm Modelo BV20L 220V - TTM520 - Tander', N'Torno_Mecanico_500mm.png', N'"O Torno Mecânico Tander TTM520 é uma ferramenta utilizada por vários profissionais na confecção e acabamento de inúmeras peças metálicas, tais como: eixos, polias, pinos, roscas, peças cilíndricas internas e externas, cones, esferas, entre outros. 
Este torno vem com motor monofásico de 220V e 550W de potência, o que lhe confere maior torque e vida útil, menor consumo de energia e baixo índice de manutenção. 
Possui interruptor magnético com a função de travagem de emergência, rotação frente/reversa e a função de proteção ao torno e aos componentes elétricos."', 1, CAST(N'2019-10-01T14:54:20.8730000' AS DateTime2))
INSERT [dbo].[Equipamentos] ([Id], [Equipamento], [Imagem], [Descricao], [Ativo], [Data]) VALUES (2, N'Processador Intel Core i9-7920X Skylake, Cache 16.5MB, 2.9GHz (4.3GHz Max Turbo), LGA 2066 - BX80673I97920X', N'Intel_Core_i9.png', N'Com esse processador inovador e incrível você desfruta ao máximo o verdadeiro potencial do seu computador e desfruta da mais pura velocidade. Maximize o seu desempenho seja trabalhando, jogando, navegando ou assistindo o seu filme preferido, com esse processador você pode tudo!', 1, CAST(N'2019-10-01T15:00:20.8730000' AS DateTime2))
INSERT [dbo].[Equipamentos] ([Id], [Equipamento], [Imagem], [Descricao], [Ativo], [Data]) VALUES (3, N'"Monitor, Dell, U2518D, UltraSharp, Preto e Suporte em Alumínio, 25"""', N'Monitor_Dell.png', N'Dê vida ao seu trabalho com uma tela de 25 polegadas quase sem bordas que conta com detalhes em cores vívidas e consistentes graças a tecnologia hdr, resolução qhd e ângulo de visão ultra-amplo. Aumente sua performance com os recursos dell display manager, dell easy arrange e trabalhe confortavelmente graça a um suporte totalmente ajustável e recurso confortview.', 0, CAST(N'2018-10-01T10:00:20.0000000' AS DateTime2))
INSERT [dbo].[Equipamentos] ([Id], [Equipamento], [Imagem], [Descricao], [Ativo], [Data]) VALUES (4, N'Mouse Gamer Razer Deathadder Essential Óptico 5 Botões 4G 6.400 DPI', N'Mouse_Razer.png', N'Nada melhor do que um mouse gamer com tecnologia de ponta para qualificar seus comandos e aprimorar suas jogadas nos games. Com este Mouse Gamer Razer, sua atuação nas batalhas gamers serão ainda mais bem-sucedidas, com desempenho acima da média e desenvoltura arrasadora, que vai deixar seus oponentes impressionados. O mouse Razer Deathadder Essential tem sensor óptico de 6400 DPI de 4G, 5 botões, design moderno e ergonômico, especialmente projetado para jogadores destros, e uma empunhadura lateral emborrachada que garante mais firmeza ao manuseio do equipamento, melhorando as respostas obtidas pelos players. O mouse Razer ainda oferece ajuste de sensibilidade, pezinhos Ultraslick silenciosos, cabo ultra resistente de fibra trançada e Modo Always-On, que mantém o mouse ligado mesmo quando o equipamento estiver inativo. É um mouse gamer Razer para ninguém botar defeito, com todas as funções e especificações técnicas que você precisa para ter mais produtividade nos jogos. O Razer Deathadder Essential é realmente essencial e ainda tem o diferencial de estar habilitado para Razer Synapse 3 e de ser compatível com PC e Mac, com porta USB. Conheça o modelo e faça um investimento seguro!', 1, CAST(N'2017-10-01T09:00:20.0000000' AS DateTime2))
INSERT [dbo].[Equipamentos] ([Id], [Equipamento], [Imagem], [Descricao], [Ativo], [Data]) VALUES (5, N'All-in-One Media Keyboard', N'Teclado_Microsoft.png', N'O All-in-One Media Keyboard é o dispositivo ideal para sua sala ou home office. Com teclado em tamanho natural e trackpad multitoque integrado, é possível digitar, passar o dedo, arrastar, fazer zoom e clicar facilmente. O teclado com teclas de atalho de mídia personalizáveis permite que a Web e suas músicas, fotos e filmes favoritos estejam a seu alcance. O teclado também tem um design resistente, portanto, não é necessário se preocupar com esbarrões, quedas ou derramamentos comuns. O All-in-One Media Keyboard é tudo o que você precisa para digitar confortavelmente e navegar sem esforço.', 0, CAST(N'2017-10-01T13:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Equipamentos] OFF
GO
SET IDENTITY_INSERT [dbo].[Perfis] ON 

INSERT [dbo].[Perfis] ([Id], [Perfil]) VALUES (1, N'Comum')
INSERT [dbo].[Perfis] ([Id], [Perfil]) VALUES (2, N'Administrador')
INSERT [dbo].[Perfis] ([Id], [Perfil]) VALUES (3, N'Tecnico')
INSERT [dbo].[Perfis] ([Id], [Perfil]) VALUES (4, N'Gerente')
SET IDENTITY_INSERT [dbo].[Perfis] OFF
GO
SET IDENTITY_INSERT [dbo].[Usuarios] ON 

INSERT [dbo].[Usuarios] ([Id], [Senha], [IdPerfil]) VALUES (1, N'111111', 1)
INSERT [dbo].[Usuarios] ([Id], [Senha], [IdPerfil]) VALUES (2, N'212121', 2)
INSERT [dbo].[Usuarios] ([Id], [Senha], [IdPerfil]) VALUES (3, N'414141', 4)
INSERT [dbo].[Usuarios] ([Id], [Senha], [IdPerfil]) VALUES (4, N'313131', 3)
SET IDENTITY_INSERT [dbo].[Usuarios] OFF
GO
ALTER TABLE [dbo].[Comentarios]  WITH NOCHECK ADD  CONSTRAINT [FK_Comentarios_Equipamentos_IdEquipamento] FOREIGN KEY([IdEquipamento])
REFERENCES [dbo].[Equipamentos] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Comentarios] CHECK CONSTRAINT [FK_Comentarios_Equipamentos_IdEquipamento]
GO
ALTER TABLE [dbo].[Comentarios]  WITH NOCHECK ADD  CONSTRAINT [FK_Comentarios_Perfis_IdPerfil] FOREIGN KEY([IdPerfil])
REFERENCES [dbo].[Perfis] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Comentarios] CHECK CONSTRAINT [FK_Comentarios_Perfis_IdPerfil]
GO
ALTER TABLE [dbo].[Usuarios]  WITH NOCHECK ADD  CONSTRAINT [FK_Usuarios_Perfis_IdPerfil] FOREIGN KEY([IdPerfil])
REFERENCES [dbo].[Perfis] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Usuarios] CHECK CONSTRAINT [FK_Usuarios_Perfis_IdPerfil]
GO
