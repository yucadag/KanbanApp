using KanbanApp.Services.DTO.Core;

namespace KanbanApp.Services.UseCases.Cards.CreateCard
{
    public class CreateCardCommandResult
    {
        public ServiceResult<CreateCardCommandResultItem> ResultObject { get; set; }
    }

    public class CreateCardCommandResultItem
    {
        public string BoardId { get; set; }
        public string SwimLaneId { get; set; }
        public string CardId { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public int Position { get; set; }
        public string PriorityColor { get; set; }

    }
}
