using KanbanApp.Domain.Data;
using KanbanApp.Domain.Entities;
using KanbanApp.Services.DTO.Core;
using MediatR;
using System;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;

namespace KanbanApp.Services.UseCases.Cards.Commands.DeleteCard
{
    public class DeleteCardCommandHandler : IRequestHandler<DeleteCardCommand, DeleteCardCommandResult>
    {
        private readonly ICardRepository _cardRepository;

        public DeleteCardCommandHandler(ICardRepository cardRepository)
        {
            _cardRepository = cardRepository ?? throw new ArgumentNullException(nameof(cardRepository));
        }
        public async Task<DeleteCardCommandResult> Handle(DeleteCardCommand request, CancellationToken cancellationToken)
        {
            DeleteCardCommandResult result = new DeleteCardCommandResult();
            result.ResultObject = new ServiceResult<DeleteCardCommandResultItem>();
            result.ResultObject.Success = false;
            result.ResultObject.ServiceMessageList = new List<ServiceMessage>();
            result.ResultObject.Data = new DeleteCardCommandResultItem();

            try
            {
                var validator = new DeleteCardCommandValidator();
                var validationResult = validator.Validate(request);

                if (validationResult.IsValid)
                {

                    Card card = new Card();

                    card.CardId = request.CardId;

                    _cardRepository.Delete(card);


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
