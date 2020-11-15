using MediatR;

namespace KanbanApp.Services.UseCases.SelectList.GetCardPriority
{
    public class GetCardPriorityCommand : IRequest<GetCardPriorityCommandResult>
    {
        public bool GetActiveRecords { get; set; }
    }
}
