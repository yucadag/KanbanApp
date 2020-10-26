using System;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;
using KanbanApp.Domain.Data;
using KanbanApp.Domain.Entities;
using KanbanApp.Domain.Shared;
using KanbanApp.Services.DTO.Core;
using MediatR;

namespace KanbanApp.Services.UseCases.CardTasks.CreateCardTask
{
    public sealed class CreateCardTaskCommandHandler : IRequestHandler<CreateCardTaskCommand, CreateCardTaskCommandResult>
    {
        private readonly ICardTaskRepository _cardTaskRepository;
        public CreateCardTaskCommandHandler(ICardTaskRepository cardTaskRepository)
        {
            _cardTaskRepository = cardTaskRepository ?? throw new ArgumentNullException(nameof(cardTaskRepository));
        }

        public async  Task<CreateCardTaskCommandResult> Handle(CreateCardTaskCommand command, CancellationToken cancellationToken)
        {
            CreateCardTaskCommandResult result = new CreateCardTaskCommandResult
            {
                ResultObject = new ServiceResult<CreateCardTaskCommandResultItem>()
            };
            result.ResultObject.Success = false;
            result.ResultObject.ServiceMessageList = new List<ServiceMessage>();
            result.ResultObject.Data = new CreateCardTaskCommandResultItem();

            try
            {
                var validator = new CreateCardTaskCommandValidator();
                var validationResult = validator.Validate(command);

                if (validationResult.IsValid)
                {
                    _cardTaskRepository.Add(new CardTask() { CardId = command.CardId, Text = command.Text, CardTaskId = command.CardTaskId, CardTaskState = ECardTaskState.Pending });
                    result.ResultObject.Success = true;
                    result.ResultObject.Data = new CreateCardTaskCommandResultItem
                    {
                        CardId = command.CardId,
                        Text = command.Text,
                        CardTaskId = command.CardTaskId
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
