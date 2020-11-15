using KanbanApp.Services.DTO.Core;
using System.Collections.Generic;

namespace KanbanApp.Services.UseCases.Cards.MoveCard
{

    public class MoveCardCommandResult
    {
        public ServiceResult<MoveCardCommandResultItem> ResultObject { get; set; }


    }

    public class MoveCardCommandResultItem
    {
        public bool IsSuccess { get; set; }
    }
}
