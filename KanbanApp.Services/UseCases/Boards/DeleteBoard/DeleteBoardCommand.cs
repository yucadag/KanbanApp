using MediatR;

namespace KanbanApp.Services.UseCases.Boards.DeleteBoard
{
    public sealed class DeleteBoardCommand : IRequest<DeleteBoardCommandResult>
    {
        public DeleteBoardCommand(string boardId)
        {
            BoardId = boardId;
        }

        public string BoardId { get; }

    }
}
