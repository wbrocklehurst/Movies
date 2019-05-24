using System.ComponentModel.DataAnnotations;

namespace Freewheel.Movies.API.Entities
{
    public class User
    {
        [Key]
        public int Id { get; set; }

        [Required]
        [MaxLength(255)]
        public string Name { get; set; }
    }
}
