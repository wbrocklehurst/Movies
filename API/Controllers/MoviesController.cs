using System.Collections.Generic;
using Freewheel.Movies.API.Models;
using Freewheel.Movies.API.Services;
using Microsoft.AspNetCore.Mvc;
using Freewheel.Movies.API.Helpers;
using AutoMapper;

namespace Freewheel.Movies.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class MoviesController : Controller
    {
        private IMovieRepository _movieRepository;
        private IUrlHelper _urlHelper;

        public MoviesController(IMovieRepository movieRepository, IUrlHelper urlHelper)
        {
            _movieRepository = movieRepository;
            _urlHelper = urlHelper;
        }

        [HttpGet(Name = "GetMovies")]
        public IActionResult GetMovies([FromQuery] MoviesResourceParameters moviesResourceParameters)
        {
            if (string.IsNullOrEmpty(moviesResourceParameters.Title) && string.IsNullOrEmpty(moviesResourceParameters.YearOfRelease))
            {
                return BadRequest("No criteria given");
            }

            var moviesFromRepo = _movieRepository.GetMovies(moviesResourceParameters);

            if (moviesFromRepo.Count == 0)
                return NotFound();

            var previousPageLink = moviesFromRepo.HasPrevious ? CreateMoviesResouceUri(moviesResourceParameters, ResourceUriType.PreviousPage) : null;
            var nextPageLink = moviesFromRepo.HasNext ? CreateMoviesResouceUri(moviesResourceParameters, ResourceUriType.NextPage) : null;
            var paginationMetaData = new
            {
                totalCount = moviesFromRepo.TotalCount,
                pageSize = moviesFromRepo.PageSizse,
                currentPage = moviesFromRepo.CurrentPage,
                totalPages = moviesFromRepo.TotalPages,
                previousPageLink = previousPageLink,
                nextPageLink = nextPageLink
            };

            Response.Headers.Add("x-Pagination", Newtonsoft.Json.JsonConvert.SerializeObject(paginationMetaData));
            var movies = Mapper.Map<IEnumerable<MovieDTO>>(moviesFromRepo);
                        
            return Ok(movies);
        }

        private string CreateMoviesResouceUri(MoviesResourceParameters moviesResourceParameters, ResourceUriType type)
        {
            switch (type)
            {
                case ResourceUriType.PreviousPage:
                    return _urlHelper.Link("GetMovies",
                        new
                        {
                            title = moviesResourceParameters.Title,
                            yearOfRelease = moviesResourceParameters.YearOfRelease,
                            pageNumber = moviesResourceParameters.PageNumber - 1,
                            pageSize = moviesResourceParameters.PageSize
                        });
                case ResourceUriType.NextPage:
                    return _urlHelper.Link("GetMovies",
                        new
                        {
                            title = moviesResourceParameters.Title,
                            yearOfRelease = moviesResourceParameters.YearOfRelease,
                            pageNumber = moviesResourceParameters.PageNumber + 1,
                            pageSize = moviesResourceParameters.PageSize
                        });
                default:
                    return _urlHelper.Link("GetMovies",
                        new
                        {
                            title = moviesResourceParameters.Title,
                            yearOfRelease = moviesResourceParameters.YearOfRelease,
                            pageNumber = moviesResourceParameters.PageNumber,
                            pageSize = moviesResourceParameters.PageSize
                        });
            }
        }
        
        // GET api/<controller>/5
        [HttpGet("{id}")]
        public IActionResult GetMovie(int id)
        {
            var movieFromRepo = _movieRepository.GetMovie(id);

            if (movieFromRepo == null)
                return NotFound();

            var movie = Mapper.Map<MovieDTO>(movieFromRepo);

            return Ok(movie);            
        }
    }
}
