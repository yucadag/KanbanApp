using KanbanApp.Services.DTO.Core;

namespace KanbanApp.Services.UseCases.SwimLanes.MoveSwimlane
{
    public class MoveSwimlaneCommandResult
    {
        public ServiceResult<MoveSwimlaneCommandResultItem> ResultObject { get; set; }
    }

    public class MoveSwimlaneCommandResultItem
    {
        public bool IsSuccess { get; set; }
    }

}
