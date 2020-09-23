using MediatR;

namespace KanbanApp.Services.UseCases.Boards.CreateBoard
{
    public sealed class CreateBoardCommand : IRequest<CreateBoardCommandResult>
    {
        public CreateBoardCommand(string boardId, string ownerId, string name, string description)
        {
            BoardId = boardId;
            OwnerId = ownerId;
            Name = name;
            Description = description;
        }
        public string BoardId { get; set; }
        public string OwnerId { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
    }
}
