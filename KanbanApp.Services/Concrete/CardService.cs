using KanbanApp.Domain.Data;
using KanbanApp.Domain.Entities;
using KanbanApp.Services.Abstract;
using KanbanApp.Services.DTO.Core;
using KanbanApp.Services.DTO.Input.CardServiceInput;
using KanbanApp.Services.DTO.OutPut.CardServiceOutput;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace KanbanApp.Services.Concrete
{
    public class CardService : ICardService
    {
        private readonly ICardRepository _cardRepository;

        public CardService(ICardRepository cardRepository)
        {
            _cardRepository = cardRepository;
        }

        public ServiceResult<CardAddOutPut> Add(CardAddInput input)
        {
            ServiceResult<CardAddOutPut> result = new ServiceResult<CardAddOutPut>();
            result.Success = false;
            result.ServiceMessageList = new List<ServiceMessage>();
            result.Data = new CardAddOutPut();

            try
            {
                Card card = _cardRepository.Add(new Card()
                {
                    CardId = Guid.NewGuid().ToString(),
                    BoardId = input.BoardId,
                    SwimLaneId = input.SwimLaneId,
                    CardPriority = new Priority() { PriorityId = input.PriorityId },
                    Description = input.Description,
                    Type = new CardType() { CardTypeId = input.CardTypeId },
                    Name = input.Name,
                    CardWeightSize = new CardWeightSize() { CardWeightSizeId = input.CardWeightSizeId },
                    EstimateHours = input.EstimateHours
                });
                result.Data.CardId = card.BoardId;
                result.Data.Name = card.Name;


                result.Success = true;
            }
            catch (Exception ex)
            {
                result.Success = false;
                result.ServiceMessageList.Add(new ServiceMessage()
                {
                    ServiceMessageType = eServiceMessageType.Error,
                    UserFriendlyText = "An error occured",
                    LogText = "CardService.Add() method error message: " + ex.Message + " Inner Message: " + ex.InnerException
                });
            }

            return result;
        }

        public ServiceResult<CardDeleteOutPut> Delete(string cardId)
        {
            ServiceResult<CardDeleteOutPut> result = new ServiceResult<CardDeleteOutPut>();
            result.Success = false;
            result.ServiceMessageList = new List<ServiceMessage>();

            try
            {
                _cardRepository.Delete(new Card { CardId = cardId });
                result.Success = true;
            }
            catch (Exception ex)
            {
                result.ServiceMessageList.Add(new ServiceMessage()
                {
                    ServiceMessageType = eServiceMessageType.Error,
                    UserFriendlyText = "An error occured",
                    LogText = "CardService.Delete() method error message: " + ex.Message
                });
            }

            return result;
        }

        public ServiceResult<CardGetOutPut> Get(string cardId)
        {
            ServiceResult<CardGetOutPut> result = new ServiceResult<CardGetOutPut>();
            result.Data = new CardGetOutPut();
            result.Success = false;
            result.ServiceMessageList = new List<ServiceMessage>();
            try
            {
                Card card = _cardRepository.Get(p => p.CardId == cardId);
                result.Data = new CardGetOutPut() { CardId = card.CardId, Name = card.Name };
                result.Success = true;
            }
            catch (Exception ex)
            {
                result.ServiceMessageList.Add(new ServiceMessage()
                {
                    ServiceMessageType = eServiceMessageType.Error,
                    UserFriendlyText = "An error occured",
                    LogText = "CardService.Get() method error message: " + ex.Message
                });
            }

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

        public ServiceResult<List<CardGetListOutPut>> GetList(Expression<Func<CardGetListFilterInput, bool>> filter = null)
        {
            ServiceResult<List<CardGetListOutPut>> result = new ServiceResult<List<CardGetListOutPut>>() { Data = new List<CardGetListOutPut>(), Success = false, ServiceMessageList = new List<ServiceMessage>() };


            try
            {
                List<Card> cardList = _cardRepository.GetList();
                result.Data = cardList.Select(x => new CardGetListOutPut()
                {
                    //do your variable mapping here 
                    CardId = x.CardId,
                    Description = x.Description,
                    Name = x.Name,
                    CardType = x.Type
                }).ToList();



                result.Success = true;
            }
            catch (Exception ex)
            {
                result.ServiceMessageList.Add(new ServiceMessage()
                {
                    ServiceMessageType = eServiceMessageType.Error,
                    UserFriendlyText = "An error occured",
                    LogText = "CardService.GetList() method error message: " + ex.Message,
                    SystemException = ex
                });
            }

            return result;
        }

        public ServiceResult<CardUpdateOutPut> Update(CardUpdateInput input)
        {
            throw new NotImplementedException();
        }
    }
}
