using KanbanApp.Domain.Data;
using KanbanApp.Domain.Entities;
using KanbanApp.Services.DTO.Core;
using MediatR;
using System;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;

namespace KanbanApp.Services.UseCases.Cards.CreateCard
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
            CreateCardCommandResult result = new CreateCardCommandResult();
            result.ResultObject = new ServiceResult<CreateCardCommandResultItem>();
            result.ResultObject.Success = false;
            result.ResultObject.ServiceMessageList = new List<ServiceMessage>();
            result.ResultObject.Data = new CreateCardCommandResultItem();

            try
            {
                var validator = new CreateCardCommandValidator();
                var validationResult = validator.Validate(request);

                if (!validationResult.IsValid)
                {

                    Card card = new Card();
                    card.BoardId = request.BoardId;
                    card.SwimLaneId = request.SwimLaneId;
                    card.CardId = request.CardId;
                    card.Name = request.Name;
                    card.Description = request.Description;
                    card = _cardRepository.Add(card);


                    result.ResultObject.Success = true;
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
                    LogText = "BoardService.GetBoardSwimLanes() method error message: " + ex.Message,
                    SystemException = ex
                });
            }

            return result;
        }
    }
}
