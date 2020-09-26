using KanbanApp.Services.DTO.Core;

namespace KanbanApp.Services.UseCases.Boards.GetBoardDetail
{
    public class GetBoardDetailCommandResult
    {
        public ServiceResult<GetBoardDetailCommandResultItem> ResultObject { get; set; }
    }

    public class GetBoardDetailCommandResultItem
    {
        public string BoardId { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
    }

}
