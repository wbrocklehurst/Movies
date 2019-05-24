using System.Collections.Generic;
using AutoMapper;
using Freewheel.Movies.API.Services;
using Microsoft.AspNetCore.Mvc;

namespace Freewheel.Movies.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class UsersController : ControllerBase
    {
        private IUserRepository _userRepository;

        public UsersController(IUserRepository userRepository)
        {
            _userRepository = userRepository;
        }

        // GET api/values
        [HttpGet]
        public ActionResult<IEnumerable<string>> GetUsers()
        {
            var userFromRepo = _userRepository.GetUsers();

            if (_userRepository == null)
                return NotFound();

            return Ok(userFromRepo);
        }

        // GET api/values/5
        [HttpGet("{id}")]
        public ActionResult<string> GetUserById(int id)
        {
            var userFromRepo = _userRepository.GetUserById(id);

            if (_userRepository == null)
                return NotFound();

            return Ok(userFromRepo);
        }
    }
}
