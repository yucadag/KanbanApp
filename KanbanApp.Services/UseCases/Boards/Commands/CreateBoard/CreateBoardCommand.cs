using MediatR;

namespace KanbanApp.Services.UseCases.Boards.Commands.CreateBoard
{
    public sealed class CreateBoardCommand : IRequest<CreateBoardCommandResult>
    {

        public string BoardId { get; set; }
        public string OwnerId { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
    }
}
