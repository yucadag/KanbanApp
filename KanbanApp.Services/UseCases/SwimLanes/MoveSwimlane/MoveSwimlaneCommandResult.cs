using KanbanApp.Services.DTO.Core;

namespace KanbanApp.Services.UseCases.SwimLanes.MoveSwimlane
{
    public class MoveSwimlaneCommandResult
    {
        public ServiceResult<MoveSwimlaneCommandResultItem> ResultObject { get; set; }
    }

    public class MoveSwimlaneCommandResultItem
    {
        public string BoardId { get; set; }
        public string SwimLaneId { get; set; }
        public string Name { get; set; }
        public int Position { get; set; }
    }

}
