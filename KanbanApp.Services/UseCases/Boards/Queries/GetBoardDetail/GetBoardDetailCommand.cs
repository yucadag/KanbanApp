using MediatR;

namespace KanbanApp.Services.UseCases.Boards.Queries.GetBoardDetail
{

    public sealed class GetBoardDetailCommand : IRequest<GetBoardDetailCommandResult>
    {

        public string BoardId { get; set; }

    }
}
