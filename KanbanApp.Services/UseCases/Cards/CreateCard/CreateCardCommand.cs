
using MediatR;

namespace KanbanApp.Services.UseCases.Cards.CreateCard
{
    public sealed class CreateCardCommand : IRequest<CreateCardCommandResult>
    {
        public string BoardId { get; set; }
        public string SwimLaneId { get; set; }
        public string CardId { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }

    }
}
