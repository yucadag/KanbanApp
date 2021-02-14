using KanbanApp.Services.DTO.Core;
using System;

namespace KanbanApp.Services.UseCases.Cards.Queries.GetCardDetail
{

    public class GetCardDetailCommandResult
    {
        public ServiceResult<GetCardDetailCommandResultItem> ResultObject { get; set; }
    }

    public class GetCardDetailCommandResultItem
    {
        public string Description { get; set; }
        public string CardId { get; set; }
        public string BoardId { get; set; }
        public string SwimLaneId { get; set; }
        public string Name { get; set; }
        public int Position { get; set; }
        public int PriorityId { get; set; }
        public DateTime? StartDate { get; set; }
        public DateTime? EndDate { get; set; }
    }

}
