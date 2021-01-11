using MediatR;

namespace KanbanApp.Services.UseCases.Boards.Queries.GetBoardList
{
    public sealed class GetBoardListCommand : IRequest<GetBoardListCommandResult>
    {

        public string BoardId { get; set; }

    }
}
