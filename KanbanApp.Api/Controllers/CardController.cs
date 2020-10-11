﻿using KanbanApp.Api.Models.Cards.Input;
using KanbanApp.Api.Models.Cards.Output;
using KanbanApp.Services.Abstract;
using KanbanApp.Services.UseCases.Cards.CreateCard;
using KanbanApp.Services.UseCases.Cards.GetAttachmentList;
using KanbanApp.Services.UseCases.Cards.GetCardDetail;
using KanbanApp.Services.UseCases.Cards.MoveCard;
using KanbanApp.Services.UseCases.Cards.UpdateCard;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Threading.Tasks;

namespace KanbanApp.Api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class CardController : ControllerBase
    {
        private readonly ICardService _cardService;
        /// <summary>
        /// 
        /// </summary>
        /// <param name="_service"></param>
        public CardController(ICardService _service)
        {
            _cardService = _service;

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
        public ActionResult<GetAttachmentListCommandResult> GetAttachmentList(string cardId)
        {
            GetAttachmentListCommand command = new GetAttachmentListCommand
            {
                CardId = cardId,
            };
            Task<GetAttachmentListCommandResult> result = _cardService.GetAttachmentList(command);

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
        /// <param name="command"></param>
        /// <returns></returns>
        [Route("MoveCard")]
        [HttpPost]
        public ActionResult<MoveCardCommandResult> MoveCard(MoveCardCommand command)
        {
            MoveCardCommand _command = new MoveCardCommand(command.CardId, command.SwimLaneId);
            Task<MoveCardCommandResult> result = _cardService.MoveCard(_command);

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
        /// <param name="command"></param>
        /// <returns></returns>
        [Route("CreateCard")]
        [HttpPost]
        public ActionResult<CreateCardCommandResult> CreateCard(CreateCardCommand command)
        {
            command.CardId = Guid.NewGuid().ToString();
            Task<CreateCardCommandResult> result = _cardService.CreateCard(command);

            if (result.Result.ResultObject.Success)
            {
                return Ok(result);
            }
            else
            {
                return BadRequest(result);
            }
        }
    }
}