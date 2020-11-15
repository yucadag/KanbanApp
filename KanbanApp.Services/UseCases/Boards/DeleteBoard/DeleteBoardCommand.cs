using MediatR;

namespace KanbanApp.Services.UseCases.Boards.DeleteBoard
{
    public sealed class DeleteBoardCommand : IRequest<DeleteBoardCommandResult>
    {


        public string BoardId { get; set; }

    }
}
