using KanbanApp.Services.DTO.Core;

namespace KanbanApp.Services.UseCases.Boards.UpdateBoard
{
    public class UpdateBoardCommandResult
    {
        public ServiceResult<UpdateBoardCommandResultItem> ResultObject { get; set; }
    }
    public class UpdateBoardCommandResultItem
    {
        public string BoardId { get; set; }

        public string OwnerId { get; set; }

        public string Name { get; set; }

        public string Description { get; set; }

    }
}
