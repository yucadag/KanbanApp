using MediatR;

namespace KanbanApp.Services.UseCases.Boards.GetBoardList
{
    public sealed class GetBoardListCommand : IRequest<GetBoardListCommandResult>
    {

        public string BoardId { get; }

    }
}
