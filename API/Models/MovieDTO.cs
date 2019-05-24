using Freewheel.Movies.API.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Freewheel.Movies.API.Models
{
    public class MovieDTO
    {
        public int Id { get; set; }
        public string Title { get; set; }
        public string Director { get; set; }
        public string YearOfRelease { get; set; }
        public ICollection<MovieGenre> MovieGenres { get; set; }
        
    }
}
