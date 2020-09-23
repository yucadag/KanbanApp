using KanbanApp.Core;

namespace KanbanApp.Domain.Entities
{
    public class CardType : IEntity
    {
        public string CardTypeId { get; set; }
        public string Name { get; set; }
    }
}