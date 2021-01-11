using KanbanApp.Domain.Data;
using KanbanApp.Domain.Entities;
using KanbanApp.Services.DTO.Core;
using MediatR;
using System;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;

namespace KanbanApp.Services.UseCases.Cards.Commands.CreateCard
{
    public sealed class CreateCardCommandHandler : IRequestHandler<CreateCardCommand, CreateCardCommandResult>
    {
        private readonly ICardRepository _cardRepository;

        public CreateCardCommandHandler(ICardRepository cardRepository)
        {
            _cardRepository = cardRepository ?? throw new ArgumentNullException(nameof(cardRepository));
        }
        public async Task<CreateCardCommandResult> Handle(CreateCardCommand request, CancellationToken cancellationToken)
        {
            CreateCardCommandResult result = new CreateCardCommandResult
            {
                ResultObject = new ServiceResult<CreateCardCommandResultItem>()
            };
            result.ResultObject.Success = false;
            result.ResultObject.ServiceMessageList = new List<ServiceMessage>();
            result.ResultObject.Data = new CreateCardCommandResultItem();

            try
            {
                var validator = new CreateCardCommandValidator();
                var validationResult = validator.Validate(request);

                if (validationResult.IsValid)
                {
                    _cardRepository.Add(new Card() { BoardId = request.BoardId, SwimLaneId = request.SwimLaneId, CardId = request.CardId, Name = request.Name, Description = request.Description, CardPriority = new Priority() { PriorityId = request.PriorityId } });
                    result.ResultObject.Success = true;
                    result.ResultObject.Data = new CreateCardCommandResultItem
                    {
                        BoardId = request.BoardId,
                        SwimLaneId = request.SwimLaneId,
                        CardId = request.CardId,
                        Name = request.Name,
                        Description = request.Description

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
