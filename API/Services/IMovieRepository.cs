using Freewheel.Movies.API.Entities;
using Freewheel.Movies.API.Helpers;

namespace Freewheel.Movies.API.Services
{
    public interface IMovieRepository
{
        PagedList<Movie> GetMovies(MoviesResourceParameters moviesResourceParameters);
        Movie GetMovie(int Id);
    }
}
