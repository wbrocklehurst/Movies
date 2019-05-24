IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MovieGenre]') AND type in (N'U'))
	DROP TABLE [dbo].[MovieGenre]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MovieGenre]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[MovieGenre]
(
	[MovieId] [int] NOT NULL,
	[GenreId] [int] NOT NULL
) ON [PRIMARY]
END
GO

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'dbo.FK_MovieGenre') AND parent_object_id = OBJECT_ID(N'dbo.Movie'))
BEGIN
	ALTER TABLE [dbo].[MovieGenre]  WITH CHECK ADD  CONSTRAINT [FK_MovieGenre_Movie] FOREIGN KEY([MovieId])
	REFERENCES [dbo].[Movie] ([Id])
END
GO

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'dbo.FK_MovieGenre') AND parent_object_id = OBJECT_ID(N'dbo.Genre'))
BEGIN
	ALTER TABLE [dbo].[MovieGenre]  WITH CHECK ADD  CONSTRAINT [FK_MovieGenre_Genre] FOREIGN KEY([GenreId])
	REFERENCES [dbo].[Genre] ([Id])
END
GO

SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO