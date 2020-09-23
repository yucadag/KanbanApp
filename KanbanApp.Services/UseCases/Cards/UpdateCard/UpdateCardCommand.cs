using MediatR;

namespace KanbanApp.Services.UseCases.Cards.UpdateCard
{
    public class UpdateCardCommand : IRequest<UpdateCardCommandResult>
    {
        public string BoardId { get; set; }
        public string SwimLaneId { get; set; }
        public string CardId { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }

    }
}
