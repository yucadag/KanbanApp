using KanbanApp.Domain.Data;
using KanbanApp.Domain.Entities;
using KanbanApp.Services.DTO.Core;
using MediatR;
using System;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;

namespace KanbanApp.Services.UseCases.Cards.Commands.MoveCard
{


    public class MoveCardCommandHandler : IRequestHandler<MoveCardCommand, MoveCardCommandResult>
    {

        private readonly ICardRepository _cardRepository;

        public MoveCardCommandHandler(ICardRepository cardRepository)
        {
            _cardRepository = cardRepository ?? throw new ArgumentNullException(nameof(cardRepository));
        }

        public async Task<MoveCardCommandResult> Handle(MoveCardCommand request, CancellationToken cancellationToken)
        {
            MoveCardCommandResult result = new MoveCardCommandResult();
            result.ResultObject = new ServiceResult<MoveCardCommandResultItem>();
            result.ResultObject.Success = false;
            result.ResultObject.ServiceMessageList = new List<ServiceMessage>();
            result.ResultObject.Data = new MoveCardCommandResultItem();

            try
            {
                Card card = _cardRepository.Get(p => p.CardId == request.CardId);
                card.SwimLaneId = request.SwimLaneId;
                _cardRepository.Update(card);
                result.ResultObject.Data.IsSuccess = true;
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
