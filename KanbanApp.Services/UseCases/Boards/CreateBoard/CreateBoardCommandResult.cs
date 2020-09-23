using KanbanApp.Services.DTO.Core;

namespace KanbanApp.Services.UseCases.Boards.CreateBoard
{
    public class CreateBoardCommandResult
    {
        public ServiceResult<CreateBoardCommandResultItem> ResultObject { get; set; }
    }

    public class CreateBoardCommandResultItem
    {
        public string BoardId { get; set; }
        public string OwnerId { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
    }
}
