using KanbanApp.Domain.Data;
using KanbanApp.Domain.Entities;
using KanbanApp.Services.DTO.Core;
using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;

namespace KanbanApp.Services.UseCases.SwimLanes.GetSwimLaneCards
{
    public class GetSwimLaneCardsCommandHandler : IRequestHandler<GetSwimLaneCardsCommand, GetSwimLaneCardsCommandResult>
    {
        private readonly ISwimLaneRepository _swimLaneRepository;

        public GetSwimLaneCardsCommandHandler(ISwimLaneRepository swimLaneRepository)
        {
            _swimLaneRepository = swimLaneRepository ?? throw new ArgumentNullException(nameof(swimLaneRepository));
        }

        public async Task<GetSwimLaneCardsCommandResult> Handle(GetSwimLaneCardsCommand request,
            CancellationToken cancellationToken)
        {
            GetSwimLaneCardsCommandResult result = new GetSwimLaneCardsCommandResult();
            result.ResultObject = new ServiceResult<List<GetSwimLaneCardsCommandResultItem>>();
            result.ResultObject.Success = false;
            result.ResultObject.ServiceMessageList = new List<ServiceMessage>();
            result.ResultObject.Data = new List<GetSwimLaneCardsCommandResultItem>();

            try
            {
                List<Card> cardList = _swimLaneRepository.GetSwimLaneCards(request.SwimLaneId);
                result.ResultObject.Data = cardList.Select(x => new GetSwimLaneCardsCommandResultItem()
                {

                    BoardId = x.BoardId,
                    SwimLaneId = x.SwimLaneId,
                    CardId = x.CardId,
                    Name = x.Name,
                    Description = x.Description,
                    PriorityColor = x.CardPriority.Color

                }).ToList();

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
