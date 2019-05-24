using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Freewheel.Movies.API.Entities;

namespace Freewheel.Movies.API.Services
{
    public class UserRepository : IUserRepository
    {
        private MovieContext _context;

        public UserRepository(MovieContext context)
        {
            _context = context;
        }

        public User GetUserById(int Id)
        {
            return _context.User.FirstOrDefault(m => m.Id == Id);
        }

        public IEnumerable<User> GetUsers()
        {
            return _context.User.OrderBy(m => m.Name);
        }
    }
}
