using KanbanApp.Domain.Data;
using KanbanApp.Domain.Entities;
using KanbanApp.Services.Abstract;
using KanbanApp.Services.DTO.Core;

using KanbanApp.Services.DTO.OutPut.CardServiceOutput;
using KanbanApp.Services.UseCases.Cards.CreateCard;
using KanbanApp.Services.UseCases.Cards.DeleteCard;
using KanbanApp.Services.UseCases.Cards.GetCardDetail;
using KanbanApp.Services.UseCases.Cards.MoveCard;
using KanbanApp.Services.UseCases.Cards.UpdateCard;
using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Threading.Tasks;

namespace KanbanApp.Services.Concrete
{
    public class CardService : ICardService
    {
        private readonly IMediator _mediator;
        private readonly ICardRepository _cardRepository;

        public CardService(ICardRepository cardRepository, IMediator mediator)
        {
            _cardRepository = cardRepository;
            _mediator = mediator;
        }


        public Task<DeleteCardCommandResult> Delete(DeleteCardCommand command)
        {
            Task<DeleteCardCommandResult> result;

            result = _mediator.Send(command);

            return result;
        }

        public Task<GetCardDetailCommandResult> Get(GetCardDetailCommand command)
        {
            Task<GetCardDetailCommandResult> result;

            result = _mediator.Send(command);

            return result;
        }

        public ServiceResult<List<CardAttachmentsGetOutPut>> GetCardAttachments(string cardId)
        {
            ServiceResult<List<CardAttachmentsGetOutPut>> result = new ServiceResult<List<CardAttachmentsGetOutPut>>();
            result.Success = false;
            result.ServiceMessageList = new List<ServiceMessage>();
            result.Data = new List<CardAttachmentsGetOutPut>();

            try
            {
                List<CardAttachment> cardList = _cardRepository.GetCardAttachments(cardId);
                result.Data = cardList.Select(x => new CardAttachmentsGetOutPut()
                {
                    //do your variable mapping here 
                    CardId = x.CardId,
                    CardAttachmentId = x.CardAttachmentId,
                    AttachmentName = x.AttachmentName,
                    AttachmentDownloadLink = x.AttachmentDownloadLink

                }).ToList();

                result.Success = true;
            }
            catch (Exception ex)
            {
                result.ServiceMessageList.Add(new ServiceMessage()
                {
                    ServiceMessageType = eServiceMessageType.Error,
                    UserFriendlyText = "An error occured",
                    LogText = "CardService.GetCardAttachments() method error message: " + ex.Message,
                    SystemException = ex
                });
            }

            return result;
        }

      
        public Task<UpdateCardCommandResult> Update(UpdateCardCommand command)
        {
            Task<UpdateCardCommandResult> result;

            result = _mediator.Send(command);

            return result;
        }

        public Task<MoveCardCommandResult> MoveCard(MoveCardCommand command)
        {
            Task<MoveCardCommandResult> result;

            result = _mediator.Send(command);

            return result;
        }

        public Task<CreateCardCommandResult> CreateCard(CreateCardCommand command)
        {
            Task<CreateCardCommandResult> result;

            result = _mediator.Send(command);

            return result;
        }
    }
}
