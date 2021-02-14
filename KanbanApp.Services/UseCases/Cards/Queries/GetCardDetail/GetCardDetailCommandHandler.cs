using KanbanApp.Domain.Data;
using KanbanApp.Domain.Entities;
using KanbanApp.Services.DTO.Core;
using MediatR;
using System;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;

namespace KanbanApp.Services.UseCases.Cards.Queries.GetCardDetail
{


    public class GetCardDetailCommandHandler : IRequestHandler<GetCardDetailCommand, GetCardDetailCommandResult>
    {
        private readonly ICardRepository _cardRepository;

        public GetCardDetailCommandHandler(ICardRepository cardRepository)
        {
            _cardRepository = cardRepository ?? throw new ArgumentNullException(nameof(cardRepository));
        }

        public async Task<GetCardDetailCommandResult> Handle(GetCardDetailCommand request,
            CancellationToken cancellationToken)
        {
            GetCardDetailCommandResult result = new GetCardDetailCommandResult();
            result.ResultObject = new ServiceResult<GetCardDetailCommandResultItem>();
            result.ResultObject.Success = false;
            result.ResultObject.ServiceMessageList = new List<ServiceMessage>();
            result.ResultObject.Data = new GetCardDetailCommandResultItem();


            try
            {
                Card card = _cardRepository.GetCardWithdetail(x => x.CardId == request.CardId);
                result.ResultObject.Data.CardId = card.CardId;
                result.ResultObject.Data.Name = card.Name;
                result.ResultObject.Data.Description = card.Description;
                result.ResultObject.Data.PriorityId = card.CardPriority.PriorityId;
          
                result.ResultObject.Data.StartDate = card.StartDate;
                result.ResultObject.Data.EndDate = card.EndDate;

                result.ResultObject.Success = true;
            }
            catch (Exception ex)
            {
                result.ResultObject.ServiceMessageList.Add(new ServiceMessage()
                {
                    ServiceMessageType = eServiceMessageType.Error,
                    UserFriendlyText = "An error occured",
                    LogText = "SwimLaneService.GetSwimLaneCards() method error message: " + ex.Message,
                    SystemException = ex
                });
            }

            return result;

        }
    }
}
