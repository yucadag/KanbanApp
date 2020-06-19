using System;
using System.Collections.Generic;
using System.Text;

namespace KanbanApp.Services.DTO.OutPut.CardServiceOutput
{
    public class CardGetOutPut
    {
        public string BoardId { get; set; }
        public string SwimLaneId { get; set; }
        public string CardId { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public int PriorityId { get; set; }
        public int CardTypeId { get; set; }
        public int CardPosition { get; set; }
        public int CardWeightSize { get; set; }     
        public int EstimateHours { get; set; }
   
    }
}
