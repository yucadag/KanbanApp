
using MediatR;

namespace KanbanApp.Services.UseCases.Cards.Commands.CreateCard
{
    public sealed class CreateCardCommand : IRequest<CreateCardCommandResult>
    {
        public string BoardId { get; set; }
        public string SwimLaneId { get; set; }
        public string CardId { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public int CardTypeId { get; set; }
        public int PriorityId { get; set; }


    }
}
