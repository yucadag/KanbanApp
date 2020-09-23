using KanbanApp.Services.DTO.Core;
using System.Collections.Generic;

namespace KanbanApp.Services.UseCases.SwimLanes.GetSwimLaneCards
{
    public class GetSwimLaneCardsCommandResult
    {
        public ServiceResult<List<GetSwimLaneCardsCommandResultItem>> ResultObject { get; set; }
    }

    public class GetSwimLaneCardsCommandResultItem
    {
        public string BoardId { get; set; }
        public string SwimLaneId { get; set; }
        public string CardId { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
    }
}
