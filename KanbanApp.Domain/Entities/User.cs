using KanbanApp.Core;

namespace KanbanApp.Domain.Entities
{
    public class User : IEntity
    {
        public string UserId { get; set; }
        public string UserName { get; set; }
        public string EMail { get; set; }
        public string Name { get; set; }
        public string Surname { get; set; }
        public string ProfilePicture { get; set; }
    }
}
