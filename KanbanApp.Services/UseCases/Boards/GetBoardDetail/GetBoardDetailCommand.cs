using MediatR;

namespace KanbanApp.Services.UseCases.Boards.GetBoardDetail
{

    public sealed class GetBoardDetailCommand : IRequest<GetBoardDetailCommandResult>
    {
        public GetBoardDetailCommand(string boardId)
        {
            BoardId = boardId;
        }
        public string BoardId { get; }

    }
}
