using KanbanApp.Services.Abstract;
using KanbanApp.Services.UseCases.CardTasks.CreateCardTask;
using KanbanApp.Services.UseCases.CardTasks.DeleteCardTask;
using KanbanApp.Services.UseCases.CardTasks.GetCardTaskDetail;
using KanbanApp.Services.UseCases.CardTasks.UpdateCardTask;
using MediatR;
using System.Threading.Tasks;

namespace KanbanApp.Services.Concrete
{
    public class CardTaskService : ICardTaskService
    {
        private readonly IMediator _mediator;

        public CardTaskService(IMediator mediator)
        {
            _mediator = mediator;
        }

        public Task<CreateCardTaskCommandResult> CreateCard(CreateCardTaskCommand command)
        {
            Task<CreateCardTaskCommandResult> result;

            result = _mediator.Send(command);

            return result;
        }

        public Task<DeleteCardTaskCommandResult> Delete(DeleteCardTaskCommand command)
        {
            Task<DeleteCardTaskCommandResult> result;

            result = _mediator.Send(command);

            return result;
        }

        public Task<GetCardTaskDetailCommandResult> Get(GetCardTaskDetailCommand command)
        {
            Task<GetCardTaskDetailCommandResult> result;

            result = _mediator.Send(command);

            return result;
        }

        public Task<UpdateCardTaskCommandResult> Update(UpdateCardTaskCommand command)
        {
            Task<UpdateCardTaskCommandResult> result;

            result = _mediator.Send(command);

            return result;
        }
    }
}
