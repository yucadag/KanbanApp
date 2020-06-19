using KanbanApp.Core;

namespace KanbanApp.Domain.Entities
{
    public class Tag:IEntity
    {
        public string TagId { get; set; }
        public string Name { get; set; }
    }
}