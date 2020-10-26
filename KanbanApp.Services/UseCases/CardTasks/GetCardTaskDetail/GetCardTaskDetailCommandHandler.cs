using System;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;
using KanbanApp.Domain.Data;
using KanbanApp.Domain.Entities;
using KanbanApp.Services.DTO.Core;
using MediatR;


namespace KanbanApp.Services.UseCases.CardTasks.GetCardTaskDetail
{
    public class GetCardTaskDetailCommandHandler : IRequestHandler<GetCardTaskDetailCommand, GetCardTaskDetailCommandResult>
    {
        private readonly ICardTaskRepository _cardTaskRepository;
        public GetCardTaskDetailCommandHandler(ICardTaskRepository cardTaskRepository)
        {
            _cardTaskRepository = cardTaskRepository ?? throw new ArgumentNullException(nameof(cardTaskRepository));
        }
        public async Task<GetCardTaskDetailCommandResult> Handle(GetCardTaskDetailCommand request, CancellationToken cancellationToken)
        {
            GetCardTaskDetailCommandResult result = new GetCardTaskDetailCommandResult
            {
                ResultObject = new ServiceResult<GetCardTaskDetailCommandResultItem>
                {
                    Success = false,
                    ServiceMessageList = new List<ServiceMessage>(),
                    Data = new GetCardTaskDetailCommandResultItem()
                }
            };

            try
            {
                var validator = new GetCardTaskDetailCommandValidator();
                var validationResult = validator.Validate(request);

                if (validationResult.IsValid)
                {
                    CardTask cardTask = _cardTaskRepository.Get(x => x.CardTaskId == request.CardTaskId);
                    result.ResultObject.Success = true;
                    result.ResultObject.Data = new GetCardTaskDetailCommandResultItem
                    {
                        CardId = cardTask.CardId,
                        Text = cardTask.Text,
                        CardTaskId = cardTask.CardTaskId
                    };


                }
                else
                {
                    foreach (var item in validationResult.Errors)
                    {
                        result.ResultObject.ServiceMessageList.Add(new ServiceMessage() { ServiceMessageType = eServiceMessageType.Error, UserFriendlyText = item.ErrorMessage });
                    }
                    result.ResultObject.Success = false;
                }
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
