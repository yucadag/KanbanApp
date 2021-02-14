using KanbanApp.Services.DTO.Core;
using System.Collections.Generic;

namespace KanbanApp.Services.UseCases.SelectList.Queries.GetCardTypes
{

    public class GetCardTypesCommandResult
    {
        public ServiceResult<List<GetCardTypesCommandResultItem>> ResultObject { get; set; }
    }


    public class GetCardTypesCommandResultItem
    {
        public string CardTypeId { get; set; }
        public string Name { get; set; }
   

    }

}
