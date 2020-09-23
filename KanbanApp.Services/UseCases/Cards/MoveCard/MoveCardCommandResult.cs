using KanbanApp.Services.DTO.Core;
using System.Collections.Generic;

namespace KanbanApp.Services.UseCases.Cards.MoveCard
{

    public class MoveCardCommandResult
    {
        public ServiceResult<List<MoveCardCommandResultItem>> ResultObject { get; set; }


    }

    public class MoveCardCommandResultItem
    {
        public string BoardId { get; set; }
        public string SwimLaneId { get; set; }
        public string Name { get; set; }
        public int Position { get; set; }
    }
}
