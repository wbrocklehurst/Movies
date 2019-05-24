
using Freewheel.Movies.API.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Freewheel.Movies.API.Services
{
    public interface IUserRepository
    {
        IEnumerable<User> GetUsers();

        User GetUserById(int Id);
    }
}
