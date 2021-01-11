using KanbanApp.Services.DTO.Core;

namespace KanbanApp.Services.UseCases.Cards.Commands.UpdateCard
{
    public class UpdateCardCommandResult
    {
        public ServiceResult<UpdateCardCommandResultItem> ResultObject { get; set; }
    }

    public class UpdateCardCommandResultItem
    {
        public string BoardId { get; set; }
        public string SwimLaneId { get; set; }
        public string Name { get; set; }
        public int Position { get; set; }
    }

}
