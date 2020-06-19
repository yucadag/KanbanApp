using System;
using System.Collections.Generic;
using System.Text;

namespace KanbanApp.Services.DTO.Input.CardServiceInput
{
    public class CardAddInput
    {
        public string BoardId { get; set; }
        public string SwimLaneId { get; set; }
        public string Name { get;  set; }
        public string Description { get; set; }
        public int PriorityId { get; set; }
        public int CardWeightSizeId { get; set; }

        public string CardTypeId { get; set; }

        public int EstimateHours { get; set; }
    }
}
