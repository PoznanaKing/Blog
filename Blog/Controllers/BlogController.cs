using Blog.Migrations;
using Blog.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using static Blog.Models.Dto;

namespace Blog.Controllers
{
    [Route("blog")]
    [ApiController]
    public class BlogController : ControllerBase
    {
        
        [HttpGet]
        public ActionResult<Blogger> Get()
        {
            using (var context = new BlogDbContext()) 
            {
                return Ok(context.Bloggers.ToList());
            }
        }
        [HttpPost]
        
        public ActionResult<Blogger> Post(CreateBloggerDto CreateBloggerDto)
        {

            using (var context = new BlogDbContext()) {
                var blog = new Blogger()
                {
                    Id = Guid.NewGuid(),
                    Name = CreateBloggerDto.name,
                    Sex = CreateBloggerDto.sex,
                    Status = "Waiting",
                    RegistrationTime = DateTime.Now,
                };
                if (blog.Id != null)
                {
                    context.Bloggers.Add(blog);
                    context.SaveChanges();
                    return StatusCode(201, blog);
                }
                return BadRequest();
            
            }
    }
    }
    
}
