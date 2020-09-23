using KanbanApp.Services.DTO.Core;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace KanbanApp.Services.UseCases.Boards.GetBoardSwimLanes
{
    public class GetBoardSwimLanesCommandResult
    {
        public ServiceResult<List<GetBoardSwimLanesCommandResultItem>> ResultObject { get; set; }   
    }

    public class GetBoardSwimLanesCommandResultItem
    {
        public string BoardId { get; set; }
        public string SwimLaneId { get; set; }
        public string Name { get; set; }
        public int Position { get; set; }
    }
}
