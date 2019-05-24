using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace Freewheel.Movies.API.Entities
{
    public class Genre
    {
        public int Id { get; set; }

        [Required]
        [MaxLength(255)]
        public string Name { get; set; }

        public ICollection<MovieGenre> MovieGenres { get; set; } 
    }
}