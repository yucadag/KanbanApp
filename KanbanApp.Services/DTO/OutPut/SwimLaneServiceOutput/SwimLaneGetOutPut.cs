using System;
using System.Collections.Generic;
using System.Text;

namespace KanbanApp.Services.DTO.OutPut.SwimLaneServiceOutput
{
    public class SwimLaneGetOutPut
    {
        public string BoardId { get; set; }
        public string SwimLaneId { get; set; }
        public string Name { get; set; }
        public int Position { get; set; }
    }
}
