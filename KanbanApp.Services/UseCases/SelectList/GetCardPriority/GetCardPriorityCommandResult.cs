using KanbanApp.Services.DTO.Core;
using System.Collections.Generic;

namespace KanbanApp.Services.UseCases.SelectList.GetCardPriority
{
    public class GetCardPriorityCommandResult
    {
        public ServiceResult<List<GetCardPriorityCommandResultItem>> ResultObject { get; set; }
    }


    public class GetCardPriorityCommandResultItem
    {
        public int PriorityId { get; set; }
        public string Name { get; set; }
        public string Color { get; set; }

    }
}
