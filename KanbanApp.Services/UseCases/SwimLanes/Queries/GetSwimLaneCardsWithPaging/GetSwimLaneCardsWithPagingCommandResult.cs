using KanbanApp.Core.Paging;
using KanbanApp.Services.DTO.Core;

namespace KanbanApp.Services.UseCases.SwimLanes.Queries.GetSwimLaneCardsWithPaging
{
    public class GetSwimLaneCardsWithPagingCommandResult
    {
        public ServiceResult<PagedList<GetSwimLaneCardsWithPagingCommandResultItem>> ResultObject { get; set; }
    }

    public class GetSwimLaneCardsWithPagingCommandResultItem
    {
        public string BoardId { get; set; }
        public string SwimLaneId { get; set; }
        public string CardId { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public string PriorityColor { get; set; }
    }
}
