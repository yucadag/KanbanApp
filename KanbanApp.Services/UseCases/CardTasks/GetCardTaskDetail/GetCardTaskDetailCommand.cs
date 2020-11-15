using MediatR;

namespace KanbanApp.Services.UseCases.CardTasks.GetCardTaskDetail
{
    public class GetCardTaskDetailCommand : IRequest<GetCardTaskDetailCommandResult>
    {
        public string CardTaskId { get; set; }
    }
}
