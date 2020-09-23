using KanbanApp.Domain.Data;
using KanbanApp.Domain.Entities;
using KanbanApp.Services.DTO.Core;
using MediatR;
using System;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;

namespace KanbanApp.Services.UseCases.Cards.UpdateCard
{
    public sealed class UpdateCardCommandHandler : IRequestHandler<UpdateCardCommand, UpdateCardCommandResult>
    {

        private readonly ICardRepository _cardRepository;

        public UpdateCardCommandHandler(ICardRepository cardRepository)
        {
            _cardRepository = cardRepository ?? throw new ArgumentNullException(nameof(cardRepository));
        }
        public async Task<UpdateCardCommandResult> Handle(UpdateCardCommand request, CancellationToken cancellationToken)
        {
            UpdateCardCommandResult result = new UpdateCardCommandResult();
            result.ResultObject = new ServiceResult<UpdateCardCommandResultItem>();
            result.ResultObject.Success = false;
            result.ResultObject.ServiceMessageList = new List<ServiceMessage>();
            result.ResultObject.Data = new UpdateCardCommandResultItem();

            try
            {
                Card card = new Card();
                card = _cardRepository.Get(x => x.CardId == request.CardId && x.BoardId == request.BoardId && x.SwimLaneId == request.SwimLaneId);
                card.BoardId = request.BoardId;
                card.SwimLaneId = request.SwimLaneId;
                card.CardId = request.CardId;
                card.Name = request.Name;
                card.Description = request.Description;
                _cardRepository.Update(card);



                result.ResultObject.Success = true;
            }
            catch (Exception ex)
            {
                result.ResultObject.ServiceMessageList.Add(new ServiceMessage()
                {
                    ServiceMessageType = eServiceMessageType.Error,
                    UserFriendlyText = "An error occured",
                    LogText = "BoardService.GetBoardSwimLanes() method error message: " + ex.Message,
                    SystemException = ex
                });
            }

            return result;
        }
    }
}
