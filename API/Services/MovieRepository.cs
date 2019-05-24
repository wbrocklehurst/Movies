using System;
using System.Linq;
using Freewheel.Movies.API.Entities;
using Freewheel.Movies.API.Helpers;

namespace Freewheel.Movies.API.Services
{
    public class MovieRepository : IMovieRepository
    {
        private MovieContext _context;

        public MovieRepository(MovieContext context)
        {
            _context = context;
        }

        public Movie GetMovie(int Id)
        {
            return _context.Movie.FirstOrDefault(m => m.Id == Id);
        }

        public PagedList<Movie> GetMovies(MoviesResourceParameters moviesResourceParameters)
        {
            var collectionBeforePaging = _context.Movie
                        .OrderBy(m => m.Title)
                        .ThenBy(m => m.YearOfRelease).AsQueryable();

            if (!string.IsNullOrEmpty(moviesResourceParameters.Title))
            {
                var titleForWhereClause = moviesResourceParameters.Title.Trim().ToLowerInvariant();
                collectionBeforePaging = collectionBeforePaging.Where(a => a.Title.ToLowerInvariant().Contains(titleForWhereClause));
            }

            if (!string.IsNullOrEmpty(moviesResourceParameters.YearOfRelease))
            {
                var yearOfReleaseForWhereClause = moviesResourceParameters.YearOfRelease.Trim().ToLowerInvariant();
                collectionBeforePaging = collectionBeforePaging.Where(a => a.YearOfRelease.ToLowerInvariant().Equals(yearOfReleaseForWhereClause));
            }

            return PagedList<Movie>.Create(collectionBeforePaging,
                  moviesResourceParameters.PageNumber,
                  moviesResourceParameters.PageSize);            
        }
    }
}
