IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserMovieRating]') AND type in (N'U'))
	DROP TABLE [dbo].[UserMovieRating]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserMovieRating]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UserMovieRating]
(
	[UserId] [int] NOT NULL,
	[MovieId] [int] NOT NULL,
	[Rating] [decimal] (2,1) NOT NULL,
) ON [PRIMARY]
END
GO

ALTER TABLE [dbo].[UserMovieRating]  WITH CHECK ADD CONSTRAINT [FK_dbo.UserMovieRating.User] FOREIGN KEY([UserId])
	REFERENCES [dbo].[User] ([Id])
GO

ALTER TABLE [dbo].[UserMovieRating]  WITH CHECK ADD CONSTRAINT [FK_dbo.UserMovieRating.Movie] FOREIGN KEY([MovieId])
	REFERENCES [dbo].[Movie] ([Id])
	ON DELETE CASCADE
GO

--ALTER TABLE [dbo].[UserMovieRating] CHECK CONSTRAINT [FK_dbo.UserMovieRating_dbo.Movie_Id]
--GO

SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO