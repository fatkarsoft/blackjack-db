USE [PlayingCardsGame]
GO
/****** Object:  Table [dbo].[Card]    Script Date: 28.09.2020 23:10:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Card](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Value] [tinyint] NULL,
	[ValueText] [nvarchar](50) NOT NULL,
	[Symbol] [nvarchar](50) NULL,
	[Color] [nvarchar](50) NOT NULL,
	[Type] [nvarchar](50) NULL,
 CONSTRAINT [PK_Card] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Game]    Script Date: 28.09.2020 23:10:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Game](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Status] [bit] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Game] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GameCard]    Script Date: 28.09.2020 23:10:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GameCard](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[GameId] [int] NOT NULL,
	[CardId] [int] NOT NULL,
 CONSTRAINT [PK_GameCard] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Point]    Script Date: 28.09.2020 23:10:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Point](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Value] [int] NOT NULL,
	[GameCardId] [int] NOT NULL,
 CONSTRAINT [PK_Point] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Card] ON 

INSERT [dbo].[Card] ([ID], [Value], [ValueText], [Symbol], [Color], [Type]) VALUES (1, 1, N'ace  ', N'A', N'red', N'hearts')
INSERT [dbo].[Card] ([ID], [Value], [ValueText], [Symbol], [Color], [Type]) VALUES (2, 2, N'two  ', N'2', N'red', N'hearts')
INSERT [dbo].[Card] ([ID], [Value], [ValueText], [Symbol], [Color], [Type]) VALUES (3, 3, N'three', N'3', N'red', N'hearts')
INSERT [dbo].[Card] ([ID], [Value], [ValueText], [Symbol], [Color], [Type]) VALUES (4, 4, N'four ', N'4', N'red', N'hearts')
INSERT [dbo].[Card] ([ID], [Value], [ValueText], [Symbol], [Color], [Type]) VALUES (5, 5, N'five ', N'5', N'red', N'hearts')
INSERT [dbo].[Card] ([ID], [Value], [ValueText], [Symbol], [Color], [Type]) VALUES (6, 6, N'six  ', N'6', N'red', N'hearts')
INSERT [dbo].[Card] ([ID], [Value], [ValueText], [Symbol], [Color], [Type]) VALUES (7, 7, N'seven', N'7', N'red', N'hearts')
INSERT [dbo].[Card] ([ID], [Value], [ValueText], [Symbol], [Color], [Type]) VALUES (8, 8, N'eight', N'8', N'red', N'hearts')
INSERT [dbo].[Card] ([ID], [Value], [ValueText], [Symbol], [Color], [Type]) VALUES (9, 9, N'nine ', N'9', N'red', N'hearts')
INSERT [dbo].[Card] ([ID], [Value], [ValueText], [Symbol], [Color], [Type]) VALUES (10, 10, N'ten  ', N'10', N'red', N'hearts')
INSERT [dbo].[Card] ([ID], [Value], [ValueText], [Symbol], [Color], [Type]) VALUES (11, 11, N'jack ', N'J', N'red', N'hearts')
INSERT [dbo].[Card] ([ID], [Value], [ValueText], [Symbol], [Color], [Type]) VALUES (12, 12, N'queen', N'Q', N'red', N'hearts')
INSERT [dbo].[Card] ([ID], [Value], [ValueText], [Symbol], [Color], [Type]) VALUES (13, 13, N'king ', N'K', N'red', N'hearts')
INSERT [dbo].[Card] ([ID], [Value], [ValueText], [Symbol], [Color], [Type]) VALUES (14, 1, N'ace  ', N'A', N'red', N'diamonds')
INSERT [dbo].[Card] ([ID], [Value], [ValueText], [Symbol], [Color], [Type]) VALUES (15, 2, N'two  ', N'2', N'red', N'diamonds')
INSERT [dbo].[Card] ([ID], [Value], [ValueText], [Symbol], [Color], [Type]) VALUES (16, 3, N'three', N'3', N'red', N'diamonds')
INSERT [dbo].[Card] ([ID], [Value], [ValueText], [Symbol], [Color], [Type]) VALUES (17, 4, N'four ', N'4', N'red', N'diamonds')
INSERT [dbo].[Card] ([ID], [Value], [ValueText], [Symbol], [Color], [Type]) VALUES (18, 5, N'five ', N'5', N'red', N'diamonds')
INSERT [dbo].[Card] ([ID], [Value], [ValueText], [Symbol], [Color], [Type]) VALUES (19, 6, N'six  ', N'6', N'red', N'diamonds')
INSERT [dbo].[Card] ([ID], [Value], [ValueText], [Symbol], [Color], [Type]) VALUES (20, 7, N'seven', N'7', N'red', N'diamonds')
INSERT [dbo].[Card] ([ID], [Value], [ValueText], [Symbol], [Color], [Type]) VALUES (21, 8, N'eight', N'8', N'red', N'diamonds')
INSERT [dbo].[Card] ([ID], [Value], [ValueText], [Symbol], [Color], [Type]) VALUES (22, 9, N'nine ', N'9', N'red', N'diamonds')
INSERT [dbo].[Card] ([ID], [Value], [ValueText], [Symbol], [Color], [Type]) VALUES (23, 10, N'ten  ', N'10', N'red', N'diamonds')
INSERT [dbo].[Card] ([ID], [Value], [ValueText], [Symbol], [Color], [Type]) VALUES (24, 11, N'jack ', N'J', N'red', N'diamonds')
INSERT [dbo].[Card] ([ID], [Value], [ValueText], [Symbol], [Color], [Type]) VALUES (25, 12, N'queen', N'Q', N'red', N'diamonds')
INSERT [dbo].[Card] ([ID], [Value], [ValueText], [Symbol], [Color], [Type]) VALUES (26, 13, N'king ', N'K', N'red', N'diamonds')
INSERT [dbo].[Card] ([ID], [Value], [ValueText], [Symbol], [Color], [Type]) VALUES (27, 1, N'ace  ', N'A', N'black', N'clubs')
INSERT [dbo].[Card] ([ID], [Value], [ValueText], [Symbol], [Color], [Type]) VALUES (28, 2, N'two  ', N'2', N'black', N'clubs')
INSERT [dbo].[Card] ([ID], [Value], [ValueText], [Symbol], [Color], [Type]) VALUES (29, 3, N'three', N'3', N'black', N'clubs')
INSERT [dbo].[Card] ([ID], [Value], [ValueText], [Symbol], [Color], [Type]) VALUES (30, 4, N'four ', N'4', N'black', N'clubs')
INSERT [dbo].[Card] ([ID], [Value], [ValueText], [Symbol], [Color], [Type]) VALUES (31, 5, N'five ', N'5', N'black', N'clubs')
INSERT [dbo].[Card] ([ID], [Value], [ValueText], [Symbol], [Color], [Type]) VALUES (32, 6, N'six  ', N'6', N'black', N'clubs')
INSERT [dbo].[Card] ([ID], [Value], [ValueText], [Symbol], [Color], [Type]) VALUES (33, 7, N'seven', N'7', N'black', N'clubs')
INSERT [dbo].[Card] ([ID], [Value], [ValueText], [Symbol], [Color], [Type]) VALUES (34, 8, N'eight', N'8', N'black', N'clubs')
INSERT [dbo].[Card] ([ID], [Value], [ValueText], [Symbol], [Color], [Type]) VALUES (35, 9, N'nine ', N'9', N'black', N'clubs')
INSERT [dbo].[Card] ([ID], [Value], [ValueText], [Symbol], [Color], [Type]) VALUES (36, 10, N'ten  ', N'10', N'black', N'clubs')
INSERT [dbo].[Card] ([ID], [Value], [ValueText], [Symbol], [Color], [Type]) VALUES (37, 11, N'jack ', N'J', N'black', N'clubs')
INSERT [dbo].[Card] ([ID], [Value], [ValueText], [Symbol], [Color], [Type]) VALUES (38, 12, N'queen', N'Q', N'black', N'clubs')
INSERT [dbo].[Card] ([ID], [Value], [ValueText], [Symbol], [Color], [Type]) VALUES (39, 13, N'king ', N'K', N'black', N'clubs')
INSERT [dbo].[Card] ([ID], [Value], [ValueText], [Symbol], [Color], [Type]) VALUES (40, 1, N'ace  ', N'A', N'black', N'spades')
INSERT [dbo].[Card] ([ID], [Value], [ValueText], [Symbol], [Color], [Type]) VALUES (41, 2, N'two  ', N'2', N'black', N'spades')
INSERT [dbo].[Card] ([ID], [Value], [ValueText], [Symbol], [Color], [Type]) VALUES (42, 3, N'three', N'3', N'black', N'spades')
INSERT [dbo].[Card] ([ID], [Value], [ValueText], [Symbol], [Color], [Type]) VALUES (43, 4, N'four ', N'4', N'black', N'spades')
INSERT [dbo].[Card] ([ID], [Value], [ValueText], [Symbol], [Color], [Type]) VALUES (44, 5, N'five ', N'5', N'black', N'spades')
INSERT [dbo].[Card] ([ID], [Value], [ValueText], [Symbol], [Color], [Type]) VALUES (45, 6, N'six  ', N'6', N'black', N'spades')
INSERT [dbo].[Card] ([ID], [Value], [ValueText], [Symbol], [Color], [Type]) VALUES (46, 7, N'seven', N'7', N'black', N'spades')
INSERT [dbo].[Card] ([ID], [Value], [ValueText], [Symbol], [Color], [Type]) VALUES (47, 8, N'eight', N'8', N'black', N'spades')
INSERT [dbo].[Card] ([ID], [Value], [ValueText], [Symbol], [Color], [Type]) VALUES (48, 9, N'nine ', N'9', N'black', N'spades')
INSERT [dbo].[Card] ([ID], [Value], [ValueText], [Symbol], [Color], [Type]) VALUES (49, 10, N'ten  ', N'10', N'black', N'spades')
INSERT [dbo].[Card] ([ID], [Value], [ValueText], [Symbol], [Color], [Type]) VALUES (50, 11, N'jack ', N'J', N'black', N'spades')
INSERT [dbo].[Card] ([ID], [Value], [ValueText], [Symbol], [Color], [Type]) VALUES (51, 12, N'queen', N'Q', N'black', N'spades')
INSERT [dbo].[Card] ([ID], [Value], [ValueText], [Symbol], [Color], [Type]) VALUES (52, 13, N'king ', N'K', N'black', N'spades')
INSERT [dbo].[Card] ([ID], [Value], [ValueText], [Symbol], [Color], [Type]) VALUES (53, NULL, N'joker', NULL, N'red', NULL)
INSERT [dbo].[Card] ([ID], [Value], [ValueText], [Symbol], [Color], [Type]) VALUES (54, NULL, N'joker', NULL, N'black', NULL)
SET IDENTITY_INSERT [dbo].[Card] OFF
SET IDENTITY_INSERT [dbo].[Game] ON 

INSERT [dbo].[Game] ([ID], [Name], [Status], [CreatedDate]) VALUES (1, N'Blackjack', 1, CAST(N'2020-09-27T23:02:21.663' AS DateTime))
SET IDENTITY_INSERT [dbo].[Game] OFF
SET IDENTITY_INSERT [dbo].[GameCard] ON 

INSERT [dbo].[GameCard] ([ID], [GameId], [CardId]) VALUES (1, 1, 1)
INSERT [dbo].[GameCard] ([ID], [GameId], [CardId]) VALUES (2, 1, 2)
INSERT [dbo].[GameCard] ([ID], [GameId], [CardId]) VALUES (3, 1, 3)
INSERT [dbo].[GameCard] ([ID], [GameId], [CardId]) VALUES (4, 1, 4)
INSERT [dbo].[GameCard] ([ID], [GameId], [CardId]) VALUES (5, 1, 5)
INSERT [dbo].[GameCard] ([ID], [GameId], [CardId]) VALUES (6, 1, 6)
INSERT [dbo].[GameCard] ([ID], [GameId], [CardId]) VALUES (7, 1, 7)
INSERT [dbo].[GameCard] ([ID], [GameId], [CardId]) VALUES (8, 1, 8)
INSERT [dbo].[GameCard] ([ID], [GameId], [CardId]) VALUES (9, 1, 9)
INSERT [dbo].[GameCard] ([ID], [GameId], [CardId]) VALUES (10, 1, 10)
INSERT [dbo].[GameCard] ([ID], [GameId], [CardId]) VALUES (11, 1, 11)
INSERT [dbo].[GameCard] ([ID], [GameId], [CardId]) VALUES (12, 1, 12)
INSERT [dbo].[GameCard] ([ID], [GameId], [CardId]) VALUES (13, 1, 13)
INSERT [dbo].[GameCard] ([ID], [GameId], [CardId]) VALUES (14, 1, 14)
INSERT [dbo].[GameCard] ([ID], [GameId], [CardId]) VALUES (15, 1, 15)
INSERT [dbo].[GameCard] ([ID], [GameId], [CardId]) VALUES (16, 1, 16)
INSERT [dbo].[GameCard] ([ID], [GameId], [CardId]) VALUES (17, 1, 17)
INSERT [dbo].[GameCard] ([ID], [GameId], [CardId]) VALUES (18, 1, 18)
INSERT [dbo].[GameCard] ([ID], [GameId], [CardId]) VALUES (19, 1, 19)
INSERT [dbo].[GameCard] ([ID], [GameId], [CardId]) VALUES (20, 1, 20)
INSERT [dbo].[GameCard] ([ID], [GameId], [CardId]) VALUES (21, 1, 21)
INSERT [dbo].[GameCard] ([ID], [GameId], [CardId]) VALUES (22, 1, 22)
INSERT [dbo].[GameCard] ([ID], [GameId], [CardId]) VALUES (23, 1, 23)
INSERT [dbo].[GameCard] ([ID], [GameId], [CardId]) VALUES (24, 1, 24)
INSERT [dbo].[GameCard] ([ID], [GameId], [CardId]) VALUES (25, 1, 25)
INSERT [dbo].[GameCard] ([ID], [GameId], [CardId]) VALUES (26, 1, 26)
INSERT [dbo].[GameCard] ([ID], [GameId], [CardId]) VALUES (27, 1, 27)
INSERT [dbo].[GameCard] ([ID], [GameId], [CardId]) VALUES (28, 1, 28)
INSERT [dbo].[GameCard] ([ID], [GameId], [CardId]) VALUES (29, 1, 29)
INSERT [dbo].[GameCard] ([ID], [GameId], [CardId]) VALUES (30, 1, 30)
INSERT [dbo].[GameCard] ([ID], [GameId], [CardId]) VALUES (31, 1, 31)
INSERT [dbo].[GameCard] ([ID], [GameId], [CardId]) VALUES (32, 1, 32)
INSERT [dbo].[GameCard] ([ID], [GameId], [CardId]) VALUES (33, 1, 33)
INSERT [dbo].[GameCard] ([ID], [GameId], [CardId]) VALUES (34, 1, 34)
INSERT [dbo].[GameCard] ([ID], [GameId], [CardId]) VALUES (35, 1, 35)
INSERT [dbo].[GameCard] ([ID], [GameId], [CardId]) VALUES (36, 1, 36)
INSERT [dbo].[GameCard] ([ID], [GameId], [CardId]) VALUES (37, 1, 37)
INSERT [dbo].[GameCard] ([ID], [GameId], [CardId]) VALUES (38, 1, 38)
INSERT [dbo].[GameCard] ([ID], [GameId], [CardId]) VALUES (39, 1, 39)
INSERT [dbo].[GameCard] ([ID], [GameId], [CardId]) VALUES (40, 1, 40)
INSERT [dbo].[GameCard] ([ID], [GameId], [CardId]) VALUES (41, 1, 41)
INSERT [dbo].[GameCard] ([ID], [GameId], [CardId]) VALUES (42, 1, 42)
INSERT [dbo].[GameCard] ([ID], [GameId], [CardId]) VALUES (43, 1, 43)
INSERT [dbo].[GameCard] ([ID], [GameId], [CardId]) VALUES (44, 1, 44)
INSERT [dbo].[GameCard] ([ID], [GameId], [CardId]) VALUES (45, 1, 45)
INSERT [dbo].[GameCard] ([ID], [GameId], [CardId]) VALUES (46, 1, 46)
INSERT [dbo].[GameCard] ([ID], [GameId], [CardId]) VALUES (47, 1, 47)
INSERT [dbo].[GameCard] ([ID], [GameId], [CardId]) VALUES (48, 1, 48)
INSERT [dbo].[GameCard] ([ID], [GameId], [CardId]) VALUES (49, 1, 49)
INSERT [dbo].[GameCard] ([ID], [GameId], [CardId]) VALUES (50, 1, 50)
INSERT [dbo].[GameCard] ([ID], [GameId], [CardId]) VALUES (51, 1, 51)
INSERT [dbo].[GameCard] ([ID], [GameId], [CardId]) VALUES (52, 1, 52)
SET IDENTITY_INSERT [dbo].[GameCard] OFF
SET IDENTITY_INSERT [dbo].[Point] ON 

INSERT [dbo].[Point] ([ID], [Value], [GameCardId]) VALUES (1, 1, 1)
INSERT [dbo].[Point] ([ID], [Value], [GameCardId]) VALUES (2, 11, 1)
INSERT [dbo].[Point] ([ID], [Value], [GameCardId]) VALUES (3, 2, 2)
INSERT [dbo].[Point] ([ID], [Value], [GameCardId]) VALUES (4, 3, 3)
INSERT [dbo].[Point] ([ID], [Value], [GameCardId]) VALUES (5, 4, 4)
INSERT [dbo].[Point] ([ID], [Value], [GameCardId]) VALUES (6, 5, 5)
INSERT [dbo].[Point] ([ID], [Value], [GameCardId]) VALUES (7, 6, 6)
INSERT [dbo].[Point] ([ID], [Value], [GameCardId]) VALUES (8, 7, 7)
INSERT [dbo].[Point] ([ID], [Value], [GameCardId]) VALUES (9, 8, 8)
INSERT [dbo].[Point] ([ID], [Value], [GameCardId]) VALUES (10, 9, 9)
INSERT [dbo].[Point] ([ID], [Value], [GameCardId]) VALUES (11, 10, 10)
INSERT [dbo].[Point] ([ID], [Value], [GameCardId]) VALUES (12, 10, 11)
INSERT [dbo].[Point] ([ID], [Value], [GameCardId]) VALUES (13, 10, 12)
INSERT [dbo].[Point] ([ID], [Value], [GameCardId]) VALUES (14, 10, 13)
INSERT [dbo].[Point] ([ID], [Value], [GameCardId]) VALUES (15, 1, 14)
INSERT [dbo].[Point] ([ID], [Value], [GameCardId]) VALUES (16, 11, 14)
INSERT [dbo].[Point] ([ID], [Value], [GameCardId]) VALUES (17, 2, 15)
INSERT [dbo].[Point] ([ID], [Value], [GameCardId]) VALUES (18, 3, 16)
INSERT [dbo].[Point] ([ID], [Value], [GameCardId]) VALUES (19, 4, 17)
INSERT [dbo].[Point] ([ID], [Value], [GameCardId]) VALUES (20, 5, 18)
INSERT [dbo].[Point] ([ID], [Value], [GameCardId]) VALUES (21, 6, 19)
INSERT [dbo].[Point] ([ID], [Value], [GameCardId]) VALUES (22, 7, 20)
INSERT [dbo].[Point] ([ID], [Value], [GameCardId]) VALUES (23, 8, 21)
INSERT [dbo].[Point] ([ID], [Value], [GameCardId]) VALUES (24, 9, 22)
INSERT [dbo].[Point] ([ID], [Value], [GameCardId]) VALUES (25, 10, 23)
INSERT [dbo].[Point] ([ID], [Value], [GameCardId]) VALUES (26, 10, 24)
INSERT [dbo].[Point] ([ID], [Value], [GameCardId]) VALUES (27, 10, 25)
INSERT [dbo].[Point] ([ID], [Value], [GameCardId]) VALUES (28, 10, 26)
INSERT [dbo].[Point] ([ID], [Value], [GameCardId]) VALUES (29, 1, 27)
INSERT [dbo].[Point] ([ID], [Value], [GameCardId]) VALUES (30, 11, 27)
INSERT [dbo].[Point] ([ID], [Value], [GameCardId]) VALUES (31, 2, 28)
INSERT [dbo].[Point] ([ID], [Value], [GameCardId]) VALUES (32, 3, 29)
INSERT [dbo].[Point] ([ID], [Value], [GameCardId]) VALUES (33, 4, 30)
INSERT [dbo].[Point] ([ID], [Value], [GameCardId]) VALUES (34, 5, 31)
INSERT [dbo].[Point] ([ID], [Value], [GameCardId]) VALUES (35, 6, 32)
INSERT [dbo].[Point] ([ID], [Value], [GameCardId]) VALUES (36, 7, 33)
INSERT [dbo].[Point] ([ID], [Value], [GameCardId]) VALUES (37, 8, 34)
INSERT [dbo].[Point] ([ID], [Value], [GameCardId]) VALUES (38, 9, 35)
INSERT [dbo].[Point] ([ID], [Value], [GameCardId]) VALUES (39, 10, 36)
INSERT [dbo].[Point] ([ID], [Value], [GameCardId]) VALUES (40, 10, 37)
INSERT [dbo].[Point] ([ID], [Value], [GameCardId]) VALUES (41, 10, 38)
INSERT [dbo].[Point] ([ID], [Value], [GameCardId]) VALUES (42, 10, 39)
INSERT [dbo].[Point] ([ID], [Value], [GameCardId]) VALUES (43, 1, 40)
INSERT [dbo].[Point] ([ID], [Value], [GameCardId]) VALUES (44, 11, 40)
INSERT [dbo].[Point] ([ID], [Value], [GameCardId]) VALUES (45, 2, 41)
INSERT [dbo].[Point] ([ID], [Value], [GameCardId]) VALUES (46, 3, 42)
INSERT [dbo].[Point] ([ID], [Value], [GameCardId]) VALUES (47, 4, 43)
INSERT [dbo].[Point] ([ID], [Value], [GameCardId]) VALUES (48, 5, 44)
INSERT [dbo].[Point] ([ID], [Value], [GameCardId]) VALUES (49, 6, 45)
INSERT [dbo].[Point] ([ID], [Value], [GameCardId]) VALUES (50, 7, 46)
INSERT [dbo].[Point] ([ID], [Value], [GameCardId]) VALUES (51, 8, 47)
INSERT [dbo].[Point] ([ID], [Value], [GameCardId]) VALUES (52, 9, 48)
INSERT [dbo].[Point] ([ID], [Value], [GameCardId]) VALUES (53, 10, 49)
INSERT [dbo].[Point] ([ID], [Value], [GameCardId]) VALUES (54, 10, 50)
INSERT [dbo].[Point] ([ID], [Value], [GameCardId]) VALUES (55, 10, 51)
INSERT [dbo].[Point] ([ID], [Value], [GameCardId]) VALUES (56, 10, 52)
SET IDENTITY_INSERT [dbo].[Point] OFF
ALTER TABLE [dbo].[Game] ADD  CONSTRAINT [DF_Game_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Game] ADD  CONSTRAINT [DF_Game_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[GameCard]  WITH CHECK ADD  CONSTRAINT [FK_GameCard_Card] FOREIGN KEY([CardId])
REFERENCES [dbo].[Card] ([ID])
GO
ALTER TABLE [dbo].[GameCard] CHECK CONSTRAINT [FK_GameCard_Card]
GO
ALTER TABLE [dbo].[GameCard]  WITH CHECK ADD  CONSTRAINT [FK_GameCard_Game] FOREIGN KEY([GameId])
REFERENCES [dbo].[Game] ([ID])
GO
ALTER TABLE [dbo].[GameCard] CHECK CONSTRAINT [FK_GameCard_Game]
GO
ALTER TABLE [dbo].[Point]  WITH CHECK ADD  CONSTRAINT [FK_Point_GameCard] FOREIGN KEY([GameCardId])
REFERENCES [dbo].[GameCard] ([ID])
GO
ALTER TABLE [dbo].[Point] CHECK CONSTRAINT [FK_Point_GameCard]
GO
