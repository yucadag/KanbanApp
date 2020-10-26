using System;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;
using KanbanApp.Domain.Data;
using KanbanApp.Domain.Entities;
using KanbanApp.Services.DTO.Core;
using MediatR;

namespace KanbanApp.Services.UseCases.CardTasks.DeleteCardTask
{
    public class DeleteCardTaskCommandHandler : IRequestHandler<DeleteCardTaskCommand, DeleteCardTaskCommandResult>
    {

        private readonly ICardTaskRepository _cardTaskRepository;
        public DeleteCardTaskCommandHandler(ICardTaskRepository cardTaskRepository)
        {
            _cardTaskRepository = cardTaskRepository ?? throw new ArgumentNullException(nameof(cardTaskRepository));
        }

        public async Task<DeleteCardTaskCommandResult> Handle(DeleteCardTaskCommand request, CancellationToken cancellationToken)
        {
            DeleteCardTaskCommandResult result = new DeleteCardTaskCommandResult
            {
                ResultObject = new ServiceResult<DeleteCardTaskCommandResultItem>()
            };
            result.ResultObject.Success = false;
            result.ResultObject.ServiceMessageList = new List<ServiceMessage>();
            result.ResultObject.Data = new DeleteCardTaskCommandResultItem();

            try
            {
                var validator = new DeleteCardTaskCommandValidator();
                var validationResult = validator.Validate(request);

                if (validationResult.IsValid)
                {
                    _cardTaskRepository.Delete(new CardTask() {  CardTaskId = request.CardTaskId });
                    result.ResultObject.Success = true;
                    result.ResultObject.Data = new DeleteCardTaskCommandResultItem
                    {
                        IsSuccess = true
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
