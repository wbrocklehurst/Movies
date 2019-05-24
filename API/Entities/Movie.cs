using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace Freewheel.Movies.API.Entities
{
    public class Movie
    {
        [Key]
        public int Id { get; set; }

        [Required]
        [MaxLength(255)]
        public string Title { get; set; }

        [Required]
        [MaxLength(255)]
        public string Director { get; set; }

        [Required]
        [MaxLength(4)]
        public string YearOfRelease { get; set; }

        public ICollection<MovieGenre> MovieGenres { get; set; }                 
    }
}