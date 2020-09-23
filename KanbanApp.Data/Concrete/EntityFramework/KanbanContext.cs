using KanbanApp.Domain.Entities;
using Microsoft.EntityFrameworkCore;

namespace KanbanApp.Data.Concrete.EntityFramework
{

    public class KanbanContext : DbContext
    {
        //protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        //{
        //    optionsBuilder.UseSqlServer(@"Data Source=DESKTOP-BRA5MEI\SQLEXPRESS;Initial Catalog=Kanban;Integrated Security=True");
        //}

        public KanbanContext(DbContextOptions options)
: base(options)
        {
        }

        public DbSet<Board> Boards { get; set; }
        public DbSet<SwimLane> SwimLanes { get; set; }
        public DbSet<Setting> Settings { get; set; }
        public DbSet<Card> Cards { get; set; }
        public DbSet<CardAttachment> CardAttachments { get; set; }
        public DbSet<CardType> CardTypes { get; set; }
        public DbSet<User> Users { get; set; }


        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            //        modelBuilder.Entity<Board>()
            //.Property(b => b.BoardId)
            //.ValueGeneratedOnAdd();


        }

    }
}