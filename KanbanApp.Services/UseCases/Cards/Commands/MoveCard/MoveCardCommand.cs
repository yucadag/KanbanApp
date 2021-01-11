using MediatR;

namespace KanbanApp.Services.UseCases.Cards.Commands.MoveCard
{
    public sealed class MoveCardCommand : IRequest<MoveCardCommandResult>
    {

        public string SwimLaneId { get; set; }
        public string CardId { get; set; }
    }
}
