﻿namespace KanbanApp.Api.Models.SwimLanes.Output
{
    public class SwimLaneGetOutput
    {
        public string BoardId { get; set; }
        public string SwimLaneId { get; set; }
        public string Name { get; set; }
        public int Position { get; set; }
    }
}
