using MediatR;

namespace KanbanApp.Services.UseCases.Cards.GetCardDetail
{
    public class GetCardDetailCommand : IRequest<GetCardDetailCommandResult>
    {
        public string CardId { get; set; }
    }
}
