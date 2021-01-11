using KanbanApp.Services.Abstract;
using KanbanApp.Services.UseCases.Boards.Commands.CreateBoard;
using KanbanApp.Services.UseCases.Boards.Commands.DeleteBoard;
using KanbanApp.Services.UseCases.Boards.Commands.UpdateBoard;
using KanbanApp.Services.UseCases.Boards.Queries.GetBoardDetail;
using KanbanApp.Services.UseCases.Boards.Queries.GetBoardList;
using KanbanApp.Services.UseCases.Boards.Queries.GetBoardSwimLanes;
using MediatR;
using System.Threading.Tasks;

namespace KanbanApp.Services.Concrete
{
    public class BoardService : IBoardService
    {
        private readonly IMediator _mediator;
        public BoardService(IMediator mediator)
        {
            _mediator = mediator;
        }

        public Task<GetBoardListCommandResult> GetList(GetBoardListCommand command)
        {
            Task<GetBoardListCommandResult> result;

            result = _mediator.Send(command);

            return result;
        }

        public Task<CreateBoardCommandResult> Add(CreateBoardCommand command)
        {
            Task<CreateBoardCommandResult> result;

            result = _mediator.Send(command);

            return result;
        }

        public Task<UpdateBoardCommandResult> Update(UpdateBoardCommand command)
        {

            Task<UpdateBoardCommandResult> result;

            result = _mediator.Send(command);

            return result;
        }
        public Task<DeleteBoardCommandResult> Delete(DeleteBoardCommand command)
        {
            Task<DeleteBoardCommandResult> result;

            result = _mediator.Send(command);

            return result;
        }

        public Task<GetBoardDetailCommandResult> Get(GetBoardDetailCommand command)
        {
            Task<GetBoardDetailCommandResult> result;

            result = _mediator.Send(command);

            return result;
        }

        public Task<GetBoardSwimLanesCommandResult> GetBoardSwimLanes(GetBoardSwimLanesCommand command)
        {
            Task<GetBoardSwimLanesCommandResult> result;

            result = _mediator.Send(command);

            return result;
        }

    }
}