SET DATEFORMAT DMY


-- INSERT GENRES
INSERT INTO [dbo].[Genre] (Name) VALUES ('Action')  --1
INSERT INTO [dbo].[Genre] (Name) VALUES ('Adventure') --2
INSERT INTO [dbo].[Genre] (Name) VALUES ('Biography') --3
INSERT INTO [dbo].[Genre] (Name) VALUES ('Comedy') --4
INSERT INTO [dbo].[Genre] (Name) VALUES ('Crime') --5
INSERT INTO [dbo].[Genre] (Name) VALUES ('Drama') --6
INSERT INTO [dbo].[Genre] (Name) VALUES ('Fantasy') --7
INSERT INTO [dbo].[Genre] (Name) VALUES ('Horror') --8
INSERT INTO [dbo].[Genre] (Name) VALUES ('Mystery') --9
INSERT INTO [dbo].[Genre] (Name) VALUES ('Romance') --10
INSERT INTO [dbo].[Genre] (Name) VALUES ('Science Fiction') --11
INSERT INTO [dbo].[Genre] (Name) VALUES ('Thriller') --12
INSERT INTO [dbo].[Genre] (Name) VALUES ('War') --13
INSERT INTO [dbo].[Genre] (Name) VALUES ('Western') --14


-- INSERT MOVIES
INSERT INTO [dbo].[Movie] (Created, Title, YearOfRelease, Director) VALUES ('24/05/2012', 'The Godfather', '1972', 'Francis Ford Coppola')
INSERT INTO [dbo].[Movie] (Created, Title, YearOfRelease, Director) VALUES ('24/05/2012', 'Goodfellas', '1990', 'Martin Scorsese')
INSERT INTO [dbo].[Movie] (Created, Title, YearOfRelease, Director) VALUES ('24/05/2012', 'Pulp Fiction', '1994', 'Quentin Tarantino')
INSERT INTO [dbo].[Movie] (Created, Title, YearOfRelease, Director) VALUES ('24/05/2012', 'The Usual Suspects', '1995', 'Bryan Singer')
INSERT INTO [dbo].[Movie] (Created, Title, YearOfRelease, Director) VALUES ('24/05/2012', 'Apocalypse Now', '1979', 'Francis Ford Coppola')
INSERT INTO [dbo].[Movie] (Created, Title, YearOfRelease, Director) VALUES ('24/05/2012', 'Trainspotting', '1996', 'Danny Boyle')
INSERT INTO [dbo].[Movie] (Created, Title, YearOfRelease, Director) VALUES ('24/05/2012', 'Fight Club', '1999', 'David Fincher')
INSERT INTO [dbo].[Movie] (Created, Title, YearOfRelease, Director) VALUES ('06/06/2012', 'Schindler''s List', '1993', 'Steven Spielberg')
INSERT INTO [dbo].[Movie] (Created, Title, YearOfRelease, Director) VALUES ('10/06/2012', 'Boogie Nights', '1997', 'Paul Thomas Anderson')
INSERT INTO [dbo].[Movie] (Created, Title, YearOfRelease, Director) VALUES ('07/06/2012', 'Reservoir Dogs', '1992', 'Quentin Tarantino')
INSERT INTO [dbo].[Movie] (Created, Title, YearOfRelease, Director) VALUES ('07/06/2012', 'The Shawshank Redemption', '1994', 'Frank Darabont')
INSERT INTO [dbo].[Movie] (Created, Title, YearOfRelease, Director) VALUES ('07/06/2012', 'Jaws', '1975', 'Steven Spielberg')
INSERT INTO [dbo].[Movie] (Created, Title, YearOfRelease, Director) VALUES ('07/06/2012', 'Taxi Driver', '1976', 'Martin Scorsese')
INSERT INTO [dbo].[Movie] (Created, Title, YearOfRelease, Director) VALUES ('07/06/2012	', '.A. Confidential', '1997', 'Curtis Hanson')
INSERT INTO [dbo].[Movie] (Created, Title, YearOfRelease, Director) VALUES ('10/06/2012', 'Back to the Future', '1985', 'Robert Zemeckis')
INSERT INTO [dbo].[Movie] (Created, Title, YearOfRelease, Director) VALUES ('11/06/2012', 'The Godfather: Part II', '1974', 'Francis Ford Coppola')
INSERT INTO [dbo].[Movie] (Created, Title, YearOfRelease, Director) VALUES ('09/07/2012', 'Fargo', '1996', 'Joel Coen, Ethan Coen')
INSERT INTO [dbo].[Movie] (Created, Title, YearOfRelease, Director) VALUES ('10/07/2012', 'The Dark Knight', '2008', 'Christopher Nolan')
INSERT INTO [dbo].[Movie] (Created, Title, YearOfRelease, Director) VALUES ('06/06/2012', 'Magnolia', '1999', 'Paul Thomas Anderson')
INSERT INTO [dbo].[Movie] (Created, Title, YearOfRelease, Director) VALUES ('09/07/2012', 'Scarface', '1983', 'Brian De Palma')

-- INSERT MOVIE GENRES
INSERT INTO [dbo].[MovieGenre] ([MovieId], [GenreId]) VALUES (1, 5)
INSERT INTO [dbo].[MovieGenre] ([MovieId], [GenreId]) VALUES (1, 6)
INSERT INTO [dbo].[MovieGenre] ([MovieId], [GenreId]) VALUES (2, 3)
INSERT INTO [dbo].[MovieGenre] ([MovieId], [GenreId]) VALUES (2, 5)
INSERT INTO [dbo].[MovieGenre] ([MovieId], [GenreId]) VALUES (2, 6)
INSERT INTO [dbo].[MovieGenre] ([MovieId], [GenreId]) VALUES (3, 5)
INSERT INTO [dbo].[MovieGenre] ([MovieId], [GenreId]) VALUES (3, 6)
INSERT INTO [dbo].[MovieGenre] ([MovieId], [GenreId]) VALUES (4, 5)
INSERT INTO [dbo].[MovieGenre] ([MovieId], [GenreId]) VALUES (4, 12)
INSERT INTO [dbo].[MovieGenre] ([MovieId], [GenreId]) VALUES (4, 6)
INSERT INTO [dbo].[MovieGenre] ([MovieId], [GenreId]) VALUES (5, 6)
INSERT INTO [dbo].[MovieGenre] ([MovieId], [GenreId]) VALUES (5, 13)
INSERT INTO [dbo].[MovieGenre] ([MovieId], [GenreId]) VALUES (6, 6)
INSERT INTO [dbo].[MovieGenre] ([MovieId], [GenreId]) VALUES (7, 6)
INSERT INTO [dbo].[MovieGenre] ([MovieId], [GenreId]) VALUES (8, 3)
INSERT INTO [dbo].[MovieGenre] ([MovieId], [GenreId]) VALUES (8, 6)
INSERT INTO [dbo].[MovieGenre] ([MovieId], [GenreId]) VALUES (8, 12)
INSERT INTO [dbo].[MovieGenre] ([MovieId], [GenreId]) VALUES (9, 6)
INSERT INTO [dbo].[MovieGenre] ([MovieId], [GenreId]) VALUES (10, 5)
INSERT INTO [dbo].[MovieGenre] ([MovieId], [GenreId]) VALUES (10, 6)
INSERT INTO [dbo].[MovieGenre] ([MovieId], [GenreId]) VALUES (10, 12)
INSERT INTO [dbo].[MovieGenre] ([MovieId], [GenreId]) VALUES (11, 6)
INSERT INTO [dbo].[MovieGenre] ([MovieId], [GenreId]) VALUES (12, 2)
INSERT INTO [dbo].[MovieGenre] ([MovieId], [GenreId]) VALUES (12, 6)
INSERT INTO [dbo].[MovieGenre] ([MovieId], [GenreId]) VALUES (12, 12)
INSERT INTO [dbo].[MovieGenre] ([MovieId], [GenreId]) VALUES (13, 5)
INSERT INTO [dbo].[MovieGenre] ([MovieId], [GenreId]) VALUES (13, 6)
INSERT INTO [dbo].[MovieGenre] ([MovieId], [GenreId]) VALUES (14, 5)
INSERT INTO [dbo].[MovieGenre] ([MovieId], [GenreId]) VALUES (14, 6)
INSERT INTO [dbo].[MovieGenre] ([MovieId], [GenreId]) VALUES (14, 9)
INSERT INTO [dbo].[MovieGenre] ([MovieId], [GenreId]) VALUES (14, 12)
INSERT INTO [dbo].[MovieGenre] ([MovieId], [GenreId]) VALUES (15, 2)
INSERT INTO [dbo].[MovieGenre] ([MovieId], [GenreId]) VALUES (15, 4)
INSERT INTO [dbo].[MovieGenre] ([MovieId], [GenreId]) VALUES (15, 11)
INSERT INTO [dbo].[MovieGenre] ([MovieId], [GenreId]) VALUES (16, 5)
INSERT INTO [dbo].[MovieGenre] ([MovieId], [GenreId]) VALUES (16, 6)
INSERT INTO [dbo].[MovieGenre] ([MovieId], [GenreId]) VALUES (17, 5)
INSERT INTO [dbo].[MovieGenre] ([MovieId], [GenreId]) VALUES (17, 6)
INSERT INTO [dbo].[MovieGenre] ([MovieId], [GenreId]) VALUES (17, 12)
INSERT INTO [dbo].[MovieGenre] ([MovieId], [GenreId]) VALUES (18, 1)
INSERT INTO [dbo].[MovieGenre] ([MovieId], [GenreId]) VALUES (18, 5)
INSERT INTO [dbo].[MovieGenre] ([MovieId], [GenreId]) VALUES (18, 6)
INSERT INTO [dbo].[MovieGenre] ([MovieId], [GenreId]) VALUES (18, 12)
INSERT INTO [dbo].[MovieGenre] ([MovieId], [GenreId]) VALUES (19, 6)
INSERT INTO [dbo].[MovieGenre] ([MovieId], [GenreId]) VALUES (20, 5)
INSERT INTO [dbo].[MovieGenre] ([MovieId], [GenreId]) VALUES (20, 6)


-- INSERT USERS
INSERT INTO [dbo].[User] (Name) VALUES ('Wayne')
INSERT INTO [dbo].[User] (Name) VALUES ('Lonis')
INSERT INTO [dbo].[User] (Name) VALUES ('Jamie')
INSERT INTO [dbo].[User] (Name) VALUES ('Craig')
INSERT INTO [dbo].[User] (Name) VALUES ('Aaron')
INSERT INTO [dbo].[User] (Name) VALUES ('Charlie')
INSERT INTO [dbo].[User] (Name) VALUES ('George')


INSERT INTO [dbo].[UserMovieRating] (UserId, MovieId, Rating) VALUES (1, 1, 9.3)
INSERT INTO [dbo].[UserMovieRating] (UserId, MovieId, Rating) VALUES (2, 1, 9.2)
INSERT INTO [dbo].[UserMovieRating] (UserId, MovieId, Rating) VALUES (4, 1, 9.1)
INSERT INTO [dbo].[UserMovieRating] (UserId, MovieId, Rating) VALUES (1, 2, 8.7)
INSERT INTO [dbo].[UserMovieRating] (UserId, MovieId, Rating) VALUES (4, 2, 8.7)
INSERT INTO [dbo].[UserMovieRating] (UserId, MovieId, Rating) VALUES (5, 2, 8.7)
INSERT INTO [dbo].[UserMovieRating] (UserId, MovieId, Rating) VALUES (6, 2, 8.7)
INSERT INTO [dbo].[UserMovieRating] (UserId, MovieId, Rating) VALUES (7, 2, 8.7)
INSERT INTO [dbo].[UserMovieRating] (UserId, MovieId, Rating) VALUES (3, 3, 8.9)
INSERT INTO [dbo].[UserMovieRating] (UserId, MovieId, Rating) VALUES (4, 3, 7.9)
INSERT INTO [dbo].[UserMovieRating] (UserId, MovieId, Rating) VALUES (1, 4, 8.6)
INSERT INTO [dbo].[UserMovieRating] (UserId, MovieId, Rating) VALUES (2, 5, 8.5)
INSERT INTO [dbo].[UserMovieRating] (UserId, MovieId, Rating) VALUES (1, 6, 8.2)
INSERT INTO [dbo].[UserMovieRating] (UserId, MovieId, Rating) VALUES (1, 7, 8.8)
INSERT INTO [dbo].[UserMovieRating] (UserId, MovieId, Rating) VALUES (1, 8, 8.9)
INSERT INTO [dbo].[UserMovieRating] (UserId, MovieId, Rating) VALUES (1, 9, 7.9)
INSERT INTO [dbo].[UserMovieRating] (UserId, MovieId, Rating) VALUES (1, 10, 8.3)
INSERT INTO [dbo].[UserMovieRating] (UserId, MovieId, Rating) VALUES (1, 11, 9.3)
INSERT INTO [dbo].[UserMovieRating] (UserId, MovieId, Rating) VALUES (1, 12, 8)
INSERT INTO [dbo].[UserMovieRating] (UserId, MovieId, Rating) VALUES (1, 13, 8.3)
INSERT INTO [dbo].[UserMovieRating] (UserId, MovieId, Rating) VALUES (1, 14, 8.3)
INSERT INTO [dbo].[UserMovieRating] (UserId, MovieId, Rating) VALUES (1, 15, 8.5)
INSERT INTO [dbo].[UserMovieRating] (UserId, MovieId, Rating) VALUES (1, 16, 9)
INSERT INTO [dbo].[UserMovieRating] (UserId, MovieId, Rating) VALUES (1, 17, 8.1)
INSERT INTO [dbo].[UserMovieRating] (UserId, MovieId, Rating) VALUES (1, 18, 9)
INSERT INTO [dbo].[UserMovieRating] (UserId, MovieId, Rating) VALUES (1, 19, 8)
INSERT INTO [dbo].[UserMovieRating] (UserId, MovieId, Rating) VALUES (1, 20, 8.3)