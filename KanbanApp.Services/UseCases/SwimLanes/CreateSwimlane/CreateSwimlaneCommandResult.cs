using KanbanApp.Services.DTO.Core;

namespace KanbanApp.Services.UseCases.SwimLanes.CreateSwimlane
{
    public class CreateSwimlaneCommandResult
    {
        public ServiceResult<CreateSwimlaneCommandResultItem> ResultObject { get; set; }
    }

    public class CreateSwimlaneCommandResultItem
    {
        public string BoardId { get; set; }
        public string SwimLaneId { get; set; }
        public string Name { get; set; }
        public int Position { get; set; }
    }

}