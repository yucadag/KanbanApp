using MediatR;

namespace KanbanApp.Services.UseCases.SwimLanes.GetSwimLaneCards
{
    public sealed class GetSwimLaneCardsCommand : IRequest<GetSwimLaneCardsCommandResult>
    {
        public GetSwimLaneCardsCommand(string boardId, string swimLaneId)
        {
            BoardId = boardId;
            SwimLaneId = swimLaneId;
        }

        public string BoardId { get; set; }
        public string SwimLaneId { get; set; }


    }
}
