using System;
using System.Collections.Generic;
using System.Text;

namespace KanbanApp.Services.DTO.OutPut.BoardServiceOutput
{
    public class GetBoardSwimLanesOutPut
    {
        public string BoardId { get; internal set; }
        public string SwimLaneId { get; set; }
        public string Name { get; internal set; }
        public int Position { get; internal set; }
    }
}
