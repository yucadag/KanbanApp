using KanbanApp.Services.DTO.Core;

namespace KanbanApp.Services.UseCases.Cards.Commands.MoveCard
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
