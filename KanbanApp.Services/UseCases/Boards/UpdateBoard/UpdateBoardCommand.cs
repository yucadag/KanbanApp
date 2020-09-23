using MediatR;

namespace KanbanApp.Services.UseCases.Boards.UpdateBoard
{
    public class UpdateBoardCommand : IRequest<UpdateBoardCommandResult>
    {

        public string BoardId { get; set; }

        public string OwnerId { get; set; }

        public string Name { get; set; }

        public string Description { get; set; }
    }
}
