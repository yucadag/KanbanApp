using KanbanApp.Services.DTO.Core;
using System;
using System.Collections.Generic;
using System.Text;

namespace KanbanApp.Services.UseCases.Cards.GetCardDetail
{
 
    public class GetCardDetailCommandResult
    {
        public ServiceResult<GetCardDetailCommandResultItem> ResultObject { get; set; }
    }

    public class GetCardDetailCommandResultItem
    {
        public string Description { get; set; }
        public string CardId { get; set; }
        public string BoardId { get; set; }
        public string SwimLaneId { get; set; }
        public string Name { get; set; }
        public int Position { get; set; }
    }

}
