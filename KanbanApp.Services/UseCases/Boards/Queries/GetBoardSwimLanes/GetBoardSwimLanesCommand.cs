using KanbanApp.Services.PipelineBehaviors;
using MediatR;

namespace KanbanApp.Services.UseCases.Boards.Queries.GetBoardSwimLanes
{
    public sealed class GetBoardSwimLanesCommand : IRequest<GetBoardSwimLanesCommandResult>,IValidateable
    {
        public GetBoardSwimLanesCommand(string boardId)
        {
            BoardId = boardId;
        }

        public string BoardId { get; set; }
    }
}
