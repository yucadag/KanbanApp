using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;
using AutoMapper;
using KanbanApp.Domain.Data;
using KanbanApp.Domain.Entities;
using KanbanApp.Services.DTO.Core;
using MediatR;
using Microsoft.Extensions.Logging;

namespace KanbanApp.Services.UseCases.SelectList.GetCardPriority
{
    public class GetCardPriorityCommandHandler : IRequestHandler<GetCardPriorityCommand, GetCardPriorityCommandResult>
    {
        private readonly IPriorityRepository _priorityRepository;
        private readonly IMapper _mapper;

        public GetCardPriorityCommandHandler(IPriorityRepository priorityRepository, IMapper mapper)
        {
            _priorityRepository = priorityRepository;
            _mapper = mapper;
        }

        public async Task<GetCardPriorityCommandResult> Handle(GetCardPriorityCommand command, CancellationToken cancellationToken)
        {
            GetCardPriorityCommandResult result = new GetCardPriorityCommandResult();
            result.ResultObject = new ServiceResult<List<GetCardPriorityCommandResultItem>>();
            result.ResultObject.Success = false;
            result.ResultObject.ServiceMessageList = new List<ServiceMessage>();
            result.ResultObject.Data = new List<GetCardPriorityCommandResultItem>();

            try
            {
                var validator = new GetCardPriorityCommandValidator();
                var ValidationResult = validator.Validate(command);

                if (ValidationResult.IsValid)
                {
                    result.ResultObject.Success = true;
                    List<Priority> priorityList = _priorityRepository.GetList();
                    foreach (var item in priorityList)
                    {
                        result.ResultObject.Data.Add(new GetCardPriorityCommandResultItem() { PriorityId=item.PriorityId, Name=item.Name, Color=item.Color });
                    }
                    //_mapper.Map<List<Priority>, List<GetCardPriorityCommandResultItem>>(priorityList, result.ResultObject.Data);
                }
                else
                {
                    result.ResultObject.Success = false;
                }
            }
            catch (Exception ex)
            {
                result.ResultObject.ServiceMessageList.Add(new ServiceMessage()
                {
                    ServiceMessageType = eServiceMessageType.Error,
                    UserFriendlyText = "An error occured",
                    LogText = "PriorityService.GetCardPriority() method error message: " + ex.Message,
                    SystemException = ex
                });
            }

            return result;


        }
    }
}
