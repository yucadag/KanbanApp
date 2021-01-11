using MediatR;

namespace KanbanApp.Services.UseCases.Boards.Commands.DeleteBoard
{
    public sealed class DeleteBoardCommand : IRequest<DeleteBoardCommandResult>
    {


        public string BoardId { get; set; }

    }
}
