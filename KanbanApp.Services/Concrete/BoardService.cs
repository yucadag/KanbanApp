using KanbanApp.Domain.Data;
using KanbanApp.Services.Abstract;
using KanbanApp.Services.UseCases.Boards.CreateBoard;
using KanbanApp.Services.UseCases.Boards.DeleteBoard;
using KanbanApp.Services.UseCases.Boards.GetBoardDetail;
using KanbanApp.Services.UseCases.Boards.GetBoardList;
using KanbanApp.Services.UseCases.Boards.GetBoardSwimLanes;
using KanbanApp.Services.UseCases.Boards.UpdateBoard;
using MediatR;
using System.Threading.Tasks;

namespace KanbanApp.Services.Concrete
{
    public class BoardService : IBoardService
    {
        private readonly IMediator _mediator;
        public BoardService(IBoardRepository boardRepository, IMediator mediator)
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