using KanbanApp.Services.Abstract;
using KanbanApp.Services.UseCases.SelectList.Queries.GetCardTypes;
using MediatR;
using System.Threading.Tasks;

namespace KanbanApp.Services.Concrete
{
    public class CardTypeService : ICardTypeService
    {
        private readonly IMediator _mediator;

        public CardTypeService(IMediator mediator)
        {
            _mediator = mediator;
        }

        public Task<GetCardTypesCommandResult> GetCardTypes(GetCardTypesCommand command)
        {
            Task<GetCardTypesCommandResult> result;

            result = _mediator.Send(command);

            return result;
        }
    }
}
