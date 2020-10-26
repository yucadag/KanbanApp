using System;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;
using KanbanApp.Domain.Data;
using KanbanApp.Domain.Entities;
using KanbanApp.Domain.Shared;
using KanbanApp.Services.DTO.Core;
using MediatR;


namespace KanbanApp.Services.UseCases.CardTasks.UpdateCardTask
{
    public class UpdateCardTaskCommandHandler : IRequestHandler<UpdateCardTaskCommand, UpdateCardTaskCommandResult>
    {
        private readonly ICardTaskRepository _cardTaskRepository;
        public UpdateCardTaskCommandHandler(ICardTaskRepository cardTaskRepository)
        {
            _cardTaskRepository = cardTaskRepository ?? throw new ArgumentNullException(nameof(cardTaskRepository));
        }


        public async Task<UpdateCardTaskCommandResult> Handle(UpdateCardTaskCommand request, CancellationToken cancellationToken)
        {
            UpdateCardTaskCommandResult result = new UpdateCardTaskCommandResult
            {
                ResultObject = new ServiceResult<UpdateCardTaskCommandResultItem>
                {
                    Success = false,
                    ServiceMessageList = new List<ServiceMessage>(),
                    Data = new UpdateCardTaskCommandResultItem()
                }
            };

            try
            {
                var validator = new UpdateCardTaskCommandValidator();
                var validationResult = validator.Validate(request);

                if (validationResult.IsValid)
                {
                    _cardTaskRepository.Update(new CardTask() { CardId = request.CardId, Text = request.Text, CardTaskId = request.CardTaskId, CardTaskState = ECardTaskState.Pending });
                    result.ResultObject.Success = true;
                    result.ResultObject.Data = new UpdateCardTaskCommandResultItem
                    {
                        CardId = request.CardId,
                        Text = request.Text,
                        CardTaskId = request.CardTaskId
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
