using AutoMapper;
using KanbanApp.Api.Models.Cards.Input;
using KanbanApp.Api.Models.Cards.Output;
using KanbanApp.Services.Abstract;
using KanbanApp.Services.UseCases.Cards.Commands.CreateCard;
using KanbanApp.Services.UseCases.Cards.Commands.DeleteCard;
using KanbanApp.Services.UseCases.Cards.Commands.MoveCard;
using KanbanApp.Services.UseCases.Cards.Commands.UpdateCard;
using KanbanApp.Services.UseCases.Cards.Queries.GetAttachmentList;
using KanbanApp.Services.UseCases.Cards.Queries.GetCardDetail;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace KanbanApp.Api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class CardController : ControllerBase
    {
        private readonly ICardService _cardService;
        private readonly IMapper _mapper;

        /// <summary>
        /// 
        /// </summary>
        /// <param name="service"></param>
        /// <param name="mapper"></param>
        public CardController(ICardService service, IMapper mapper)
        {
            _cardService = service;
            _mapper = mapper;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="input"></param>
        /// <returns></returns>
        [Route("Get")]
        [HttpPost]
        public ActionResult<GetCardOutput> Get(CardGetInput input)
        {
            GetCardOutput returnValue = new GetCardOutput();

            GetCardDetailCommand command = new GetCardDetailCommand
            {
                CardId = input.CardId
            };
            Task<GetCardDetailCommandResult> result = _cardService.Get(command);

            if (result.Result.ResultObject.Success)
            {
                returnValue.BoardId = result.Result.ResultObject.Data.BoardId;
                returnValue.SwimLaneId = result.Result.ResultObject.Data.SwimLaneId;
                returnValue.CardId = result.Result.ResultObject.Data.CardId;
                returnValue.Name = result.Result.ResultObject.Data.Name;
                returnValue.Description = result.Result.ResultObject.Data.Description;
                returnValue.Position = result.Result.ResultObject.Data.Position;
                returnValue.PriorityId = result.Result.ResultObject.Data.PriorityId;

                return Ok(returnValue);
            }
            else
            {
                return BadRequest(returnValue);
            }
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="input"></param>
        /// <returns></returns>
        [Route("Update")]
        [HttpPatch]
        public ActionResult<UpdateCardCommandResult> Update(CardUpdateInput input)
        {
            UpdateCardCommand command = new UpdateCardCommand
            {
                CardId = input.CardId,
                Name = input.Name,
                Description = input.Description
            };
            Task<UpdateCardCommandResult> result = _cardService.Update(command);

            if (result.Result.ResultObject.Success)
            {
                return Ok(result);
            }
            else
            {
                return BadRequest(result);
            }
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="cardId"></param>
        /// <returns></returns>
        [HttpGet("GetCardAttachments/{cardId}")]
        public ActionResult<List<CardGetAttachmentListOutput>> GetAttachmentList(string cardId)
        {
            GetAttachmentListCommand command = new GetAttachmentListCommand
            {
                CardId = cardId,
            };           
           
            Task<GetAttachmentListCommandResult> result = _cardService.GetAttachmentList(command);
            List<CardGetAttachmentListOutput> returnValue = _mapper.Map<List<GetAttachmentListCommandResultItem>, List<CardGetAttachmentListOutput>>(result.Result.ResultObject.Data);


            if (result.Result.ResultObject.Success)
            {
                return Ok(returnValue);
            }
            else
            {
                return BadRequest(returnValue);
            }
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="input"></param>
        /// <returns></returns>
        [Route("MoveCard")]
        [HttpPost]
        public ActionResult<CardMoveOutput> MoveCard(CardMoveInput input)
        {
            MoveCardCommand _command = _mapper.Map<CardMoveInput, MoveCardCommand>(input);
            Task<MoveCardCommandResult> result = _cardService.MoveCard(_command);
            CardMoveOutput resultValue = _mapper.Map<MoveCardCommandResultItem, CardMoveOutput>(result.Result.ResultObject.Data);
            if (result.Result.ResultObject.Success)
            {
                return Ok(resultValue);
            }
            else
            {
                return BadRequest(resultValue);
            }
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="input"></param>
        /// <returns></returns>
        [Route("CreateCard")]
        [HttpPost]
        public ActionResult<CardCreateOutput> CreateCard(CardCreateInput input)
        {

            CreateCardCommand command = _mapper.Map<CardCreateInput, CreateCardCommand>(input);
            command.CardId = Guid.NewGuid().ToString();
            Task<CreateCardCommandResult> result = _cardService.CreateCard(command);

            CardCreateOutput resultValue = _mapper.Map<CreateCardCommandResultItem, CardCreateOutput>(result.Result.ResultObject.Data);

            if (result.Result.ResultObject.Success)
            {
                resultValue.IsSuccess = true;


                return Ok(resultValue);
            }
            else
            {
                resultValue.IsSuccess = false;
                return BadRequest(resultValue);
            }
        }


        /// <summary>
        /// 
        /// </summary>
        /// <param name="input"></param>
        /// <returns></returns>
        [Route("DeleteCard")]
        [HttpPost]
        public ActionResult<CardDeleteOutput> DeleteCard(CardDeleteInput input)
        {
            DeleteCardCommand command = new DeleteCardCommand() { CardId = input.CardId };
            Task<DeleteCardCommandResult> result = _cardService.Delete(command);
            CardDeleteOutput returnValue = new CardDeleteOutput();
            if (result.Result.ResultObject.Success)
            {
                returnValue.IsSuccess = true;
                return Ok(result);
            }
            else
            {
                returnValue.IsSuccess = false;
                returnValue.MessageList.Add(result.Result.ResultObject.ServiceMessageList[0].UserFriendlyText);
                return BadRequest(result);
            }
        }
    }
}