using KanbanApp.Domain.Data;
using KanbanApp.Domain.Entities;
using KanbanApp.Services.DTO.Core;
using MediatR;
using System;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;

namespace KanbanApp.Services.UseCases.SelectList.Queries.GetCardTypes
{
    public class GetCardTypesCommandHandler : IRequestHandler<GetCardTypesCommand, GetCardTypesCommandResult>
    {
        private readonly ICardTypeRepository _cardTypeRepository;
        public GetCardTypesCommandHandler(ICardTypeRepository cardTypeRepository)
        {
            _cardTypeRepository = cardTypeRepository;
        }

        public async Task<GetCardTypesCommandResult> Handle(GetCardTypesCommand command, CancellationToken cancellationToken)
        {
            GetCardTypesCommandResult result = new GetCardTypesCommandResult();
            result.ResultObject = new ServiceResult<List<GetCardTypesCommandResultItem>>();
            result.ResultObject.Success = false;
            result.ResultObject.ServiceMessageList = new List<ServiceMessage>();
            result.ResultObject.Data = new List<GetCardTypesCommandResultItem>();

            try
            {               
                    result.ResultObject.Success = true;
                    List<CardType> priorityList = _cardTypeRepository.GetList();
                    foreach (var item in priorityList)
                    {
                        result.ResultObject.Data.Add(new GetCardTypesCommandResultItem() { CardTypeId = item.CardTypeId, Name = item.Name });
                    }
                  
            }
            catch (Exception ex)
            {
                result.ResultObject.ServiceMessageList.Add(new ServiceMessage()
                {
                    ServiceMessageType = eServiceMessageType.Error,
                    UserFriendlyText = "An error occured",
                    LogText = "CardTypeService.GetCardType() method error message: " + ex.Message,
                    SystemException = ex
                });
            }

            return result;

        }
    }
}
