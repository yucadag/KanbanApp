﻿using System;

namespace KanbanApp.Api.Models.Cards.Output
{
    public class GetCardOutput
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
