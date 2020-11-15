using MediatR;

namespace KanbanApp.Services.UseCases.Boards.GetBoardDetail
{

    public sealed class GetBoardDetailCommand : IRequest<GetBoardDetailCommandResult>
    {

        public string BoardId { get; set; }

    }
}
