using KanbanApp.Core;

namespace KanbanApp.Domain.Entities
{
    public class Priority:IEntity
    {
        public int PriorityId { get; set; }
        public string Name { get; set; }
        public string Color { get; set; }
    }
}