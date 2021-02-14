using KanbanApp.Services.Abstract;
using KanbanApp.Services.UseCases.SwimLanes.Commands.CreateSwimlane;
using KanbanApp.Services.UseCases.SwimLanes.Commands.MoveSwimlane;
using KanbanApp.Services.UseCases.SwimLanes.Queries.GetSwimLaneCards;
using KanbanApp.Services.UseCases.SwimLanes.Queries.GetSwimLaneCardsWithPaging;
using KanbanApp.Services.UseCases.SwimLanes.Queries.GetSwimlaneDetail;
using MediatR;
using System.Threading.Tasks;

namespace KanbanApp.Services.Concrete
{
    public class SwimLaneService : ISwimLaneService
    {

        private readonly IMediator _mediator;

        public SwimLaneService(IMediator mediator)
        {
            _mediator = mediator;
        }
        public Task<CreateSwimlaneCommandResult> Add(CreateSwimlaneCommand command)
        {
            Task<CreateSwimlaneCommandResult> result;

            result = _mediator.Send(command);

            return result;

        }
        public Task<GetSwimlaneDetailCommandResult> Get(GetSwimlaneDetailCommand command)
        {
            Task<GetSwimlaneDetailCommandResult> result;

            result = _mediator.Send(command);

            return result;

        }
        public Task<GetSwimLaneCardsCommandResult> GetSwimLanesCards(GetSwimLaneCardsCommand command)
        {
            Task<GetSwimLaneCardsCommandResult> result;

            result = _mediator.Send(command);

            return result;
        }

        public Task<GetSwimLaneCardsWithPagingCommandResult> GetSwimLanesCardsWithPaging(GetSwimLaneCardsWithPagingCommand command)
        {
            Task<GetSwimLaneCardsWithPagingCommandResult> result;

            result = _mediator.Send(command);

            return result;
        }

        public Task<MoveSwimlaneCommandResult> Move(MoveSwimlaneCommand command)
        {

            Task<MoveSwimlaneCommandResult> result;

            result = _mediator.Send(command);

            return result;

        }
    }
}
