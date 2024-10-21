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
        [HttpGet("{id}")]
        public ActionResult<Blogger> GetById(Guid id)
        {
            using (var context = new BlogDbContext())
            {
                var blogg = context.Bloggers.FirstOrDefault(b => b.Id == id);
                if (blogg != null)
                {
                    return StatusCode(200, blogg);
                }
                return NotFound();
                
            }
        }
        [HttpPut("{id}")]
        public ActionResult<Blogger> Put(Guid id, UpdateBloggerDto updatebloggerdto)
        {
            using (var context = new BlogDbContext())
            {
                var existingBlogger = context.Bloggers.FirstOrDefault(x=>x.Id == id);
                if (existingBlogger != null) 
                {
                    existingBlogger.Name = updatebloggerdto.name;
                    existingBlogger.Sex = updatebloggerdto.sex;
                    context.Bloggers.Update(existingBlogger);
                    context.SaveChanges();
                    return StatusCode(200);
                }
                return BadRequest();
                
            }
        }
    }

}
