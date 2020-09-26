using KanbanApp.Domain.Data;
using KanbanApp.Services.Abstract;
using KanbanApp.Services.UseCases.Cards.CreateCard;
using KanbanApp.Services.UseCases.Cards.DeleteCard;
using KanbanApp.Services.UseCases.Cards.GetAttachmentList;
using KanbanApp.Services.UseCases.Cards.GetCardDetail;
using KanbanApp.Services.UseCases.Cards.MoveCard;
using KanbanApp.Services.UseCases.Cards.UpdateCard;
using MediatR;
using System.Threading.Tasks;

namespace KanbanApp.Services.Concrete
{
    public class CardService : ICardService
    {
        private readonly IMediator _mediator;
        private readonly ICardRepository _cardRepository;

        public CardService(ICardRepository cardRepository, IMediator mediator)
        {
            _cardRepository = cardRepository;
            _mediator = mediator;
        }


        public Task<DeleteCardCommandResult> Delete(DeleteCardCommand command)
        {
            Task<DeleteCardCommandResult> result;

            result = _mediator.Send(command);

            return result;
        }

        public Task<GetCardDetailCommandResult> Get(GetCardDetailCommand command)
        {
            Task<GetCardDetailCommandResult> result;

            result = _mediator.Send(command);

            return result;
        }

        public Task<GetAttachmentListCommandResult> GetAttachmentList(GetAttachmentListCommand command)
        {
            Task<GetAttachmentListCommandResult> result;

            result = _mediator.Send(command);

            return result;
        }


        public Task<UpdateCardCommandResult> Update(UpdateCardCommand command)
        {
            Task<UpdateCardCommandResult> result;

            result = _mediator.Send(command);

            return result;
        }

        public Task<MoveCardCommandResult> MoveCard(MoveCardCommand command)
        {
            Task<MoveCardCommandResult> result;

            result = _mediator.Send(command);

            return result;
        }

        public Task<CreateCardCommandResult> CreateCard(CreateCardCommand command)
        {
            Task<CreateCardCommandResult> result;

            result = _mediator.Send(command);

            return result;
        }
    }
}
