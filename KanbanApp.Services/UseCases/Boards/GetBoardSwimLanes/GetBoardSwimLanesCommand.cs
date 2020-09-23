using MediatR;

namespace KanbanApp.Services.UseCases.Boards.GetBoardSwimLanes
{
    public sealed class GetBoardSwimLanesCommand : IRequest<GetBoardSwimLanesCommandResult>
    {
        public GetBoardSwimLanesCommand(string boardId)
        {
            BoardId = boardId;
        }

        public string BoardId { get; set; }
    }
}
