using KanbanApp.Core.Paging;
using KanbanApp.Domain.Data;
using KanbanApp.Domain.Entities;
using KanbanApp.Services.DTO.Core;
using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;

namespace KanbanApp.Services.UseCases.SwimLanes.Queries.GetSwimLaneCardsWithPaging
{
    public class GetSwimLaneCardsWithPagingCommandHandler : IRequestHandler<GetSwimLaneCardsWithPagingCommand, GetSwimLaneCardsWithPagingCommandResult>
    {
        private readonly ISwimLaneRepository _swimLaneRepository;

        public GetSwimLaneCardsWithPagingCommandHandler(ISwimLaneRepository swimLaneRepository)
        {
            _swimLaneRepository = swimLaneRepository ?? throw new ArgumentNullException(nameof(swimLaneRepository));
        }

        public async Task<GetSwimLaneCardsWithPagingCommandResult> Handle(GetSwimLaneCardsWithPagingCommand command, CancellationToken cancellationToken)
        {
            GetSwimLaneCardsWithPagingCommandResult result = new GetSwimLaneCardsWithPagingCommandResult();
            result.ResultObject = new ServiceResult<PagedList<GetSwimLaneCardsWithPagingCommandResultItem>>();
            result.ResultObject.Success = false;
            result.ResultObject.ServiceMessageList = new List<ServiceMessage>();
           // result.ResultObject.Data = new PagedList<GetSwimLaneCardsWithPagingCommandResultItem>();

            try
            {
             
                PagedList<Card> cardList = _swimLaneRepository.GetSwimLaneCardsWithPaging(command.SwimLaneId, command.PagingParameter);

                var count = await _swimLaneRepository.CountAsync();
              //  result.ResultObject.Data= PaginationExtensions.CreatePaginationResult(data, command.PagingParameter.PageNumber, command.PagingParameter.PageSize, count);
                result.ResultObject.Data = PagedList<GetSwimLaneCardsWithPagingCommandResultItem>.ToPagedList(cardList.Select(x => new GetSwimLaneCardsWithPagingCommandResultItem()
                {
                    BoardId=x.BoardId,    
                    SwimLaneId = x.SwimLaneId,
                    CardId = x.CardId,
                    Name = x.Name,
                    Description = x.Description,
                    PriorityColor = x.CardPriority.Color

                }).ToList().AsQueryable(), command.PagingParameter.PageNumber, command.PagingParameter.PageSize, count);

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
