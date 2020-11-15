using MediatR;

namespace KanbanApp.Services.UseCases.CardTasks.DeleteCardTask
{
    public class DeleteCardTaskCommand : IRequest<DeleteCardTaskCommandResult>
    {
        public string CardTaskId { get; set; }
    }
}
