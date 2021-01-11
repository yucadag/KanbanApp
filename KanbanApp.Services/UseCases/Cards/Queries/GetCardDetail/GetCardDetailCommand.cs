using MediatR;

namespace KanbanApp.Services.UseCases.Cards.Queries.GetCardDetail
{
    public class GetCardDetailCommand : IRequest<GetCardDetailCommandResult>
    {
        public string CardId { get; set; }
    }
}
