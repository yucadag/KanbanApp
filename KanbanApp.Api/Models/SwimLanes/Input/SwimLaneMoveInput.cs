using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace KanbanApp.Api.Models.SwimLanes.Input
{
    public class SwimLaneMoveInput
    {
        public string BoardId { get; set; }
        public string Name { get; set; }
        public string SwimLaneId { get; set; }
        public int Position { get; set; }
    }
}
