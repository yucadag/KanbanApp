using KanbanApp.Services.DTO.Core;

namespace KanbanApp.Services.UseCases.Cards.DeleteCard
{
    public class DeleteCardCommandResult
    {
        public ServiceResult<DeleteCardCommandResultItem> ResultObject { get; set; }
    }

    public class DeleteCardCommandResultItem
    {
        public string BoardId { get; set; }
        public string SwimLaneId { get; set; }
        public string Name { get; set; }
        public int Position { get; set; }
    }
}
