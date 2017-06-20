using System.Data.Entity;

namespace ProjectMVC.Models
{
    public class MusicDbContext : DbContext
    {
        public DbSet<Song> Songs { get; set; }
        public MusicDbContext() : base("DefaultConnection") { }

        public System.Data.Entity.DbSet<ProjectMVC.Models.Genre> Genres { get; set; }
    }
}