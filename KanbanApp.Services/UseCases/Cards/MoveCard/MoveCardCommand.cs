using MediatR;

namespace KanbanApp.Services.UseCases.Cards.MoveCard
{
    public sealed class MoveCardCommand : IRequest<MoveCardCommandResult>
    {
        public MoveCardCommand()
        {

        }
        public MoveCardCommand(string cardId, string swimLaneId)
        {
            CardId = cardId;
            SwimLaneId = swimLaneId;
        }

        public string SwimLaneId { get; set; }
        public string CardId { get; set; }
    }
}
