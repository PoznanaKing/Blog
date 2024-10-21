namespace Blog.Models
{
    public class Dto
    {
        public record CreateBloggerDto(string name, string sex);
        public record UpdateBloggerDto(string name, string sex);
    }
}
