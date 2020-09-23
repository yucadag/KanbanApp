using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;
using KanbanApp.Domain.Data;
using KanbanApp.Domain.Entities;
using KanbanApp.Services.DTO.Core;
using KanbanApp.Services.Exceptions;
using MediatR;
using Microsoft.Extensions.Logging;

namespace KanbanApp.Services.UseCases.Cards.GetAttachmentList
{
    public class GetAttachmentListCommandHandler : IRequestHandler<GetAttachmentListCommand, GetAttachmentListCommandResult>
    {
        private readonly ICardRepository _cardRepository;
        public GetAttachmentListCommandHandler(ICardRepository cardRepository)
        {
            _cardRepository = cardRepository ?? throw new ArgumentNullException(nameof(cardRepository));
        }

        public async Task<GetAttachmentListCommandResult> Handle(GetAttachmentListCommand request, CancellationToken cancellationToken)
        {
            GetAttachmentListCommandResult result = new GetAttachmentListCommandResult();
            result.ResultObject = new ServiceResult<List<GetAttachmentListCommandResultItem>>();
            result.ResultObject.Success = false;
            result.ResultObject.ServiceMessageList = new List<ServiceMessage>();
            result.ResultObject.Data = new List<GetAttachmentListCommandResultItem>();

            try
            {
                var validator = new GetAttachmentListCommandValidator();
                var validationResult = validator.Validate(request);

                if (!validationResult.IsValid)
                {

                    List<CardAttachment> cardAttachmentList = _cardRepository.GetCardAttachments(request.CardId);
                    result.ResultObject.Data = cardAttachmentList.Select(x => new GetAttachmentListCommandResultItem()
                    {
                        CardId = x.CardId,
                        AttachmentName = x.AttachmentName,
                        CardAttachmentId = x.CardAttachmentId,
                        AttachmentDownloadLink = x.AttachmentDownloadLink
                    }).ToList();
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
                    LogText = "CardService.GetAttachmentList() method error message: " + ex.Message,
                    SystemException = ex
                });
            }

            return result;
        }
    }
}
