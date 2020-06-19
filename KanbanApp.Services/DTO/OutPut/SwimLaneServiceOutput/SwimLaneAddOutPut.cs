using System;
using System.Collections.Generic;
using System.Text;

namespace KanbanApp.Services.DTO.OutPut.SwimLaneServiceOutput
{
    public class SwimLaneAddOutPut
    {
        public string BoardId { get; internal set; }
        public string Name { get; internal set; }
        public int Position { get; internal set; }
        public string SwimLaneId { get; internal set; }
    }
}
