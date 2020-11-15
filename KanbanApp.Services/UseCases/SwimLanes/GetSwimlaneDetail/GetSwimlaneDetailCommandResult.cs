using KanbanApp.Services.DTO.Core;

namespace KanbanApp.Services.UseCases.SwimLanes.GetSwimlaneDetail
{
    public class GetSwimlaneDetailCommandResult
    {
        public ServiceResult<GetSwimlaneDetailCommandResultItem> ResultObject { get; set; }
    }

    public class GetSwimlaneDetailCommandResultItem
    {
        public string BoardId { get; set; }
        public string SwimLaneId { get; set; }
        public string Name { get; set; }
        public int Position { get; set; }
    }



}
