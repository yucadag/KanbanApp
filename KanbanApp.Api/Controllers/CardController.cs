using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using KanbanApp.Services.Abstract;
using KanbanApp.Services.DTO.Core;
using KanbanApp.Services.DTO.Input.CardServiceInput;
using KanbanApp.Services.DTO.OutPut.CardServiceOutput;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

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
        /// <param name="cardId"></param>
        /// <returns></returns>
        [HttpGet("Get/{cardId}")]
        public ActionResult<CardGetOutPut> Get(string cardId)
        {
            ServiceResult<CardGetOutPut> result = _cardService.Get(cardId);
            if (result.Success)
            {
                return Ok(result);
            }
            else
            {
                return BadRequest(result.ServiceMessageList);
            }
        }

        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        [Route("GetList")]
        [HttpGet]
        public ActionResult<ServiceResult<List<CardGetListOutPut>>> GetList()
        {
            //BoardGetListFilterInput input
            // Expression<Func<BoardGetListFilterInput, bool>> projectFilter;

            ServiceResult<List<CardGetListOutPut>> result = new ServiceResult<List<CardGetListOutPut>>();
            result = _cardService.GetList(null);
            if (result.Success)
            {
                return Ok(result);
            }
            else
            {
                return BadRequest(result.ServiceMessageList);
            }
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="input"></param>
        /// <returns></returns>
        [Route("Add")]
        [HttpPost]
        public ActionResult<ServiceResult<CardAddOutPut>> Add(CardAddInput input)
        {

            ServiceResult<CardAddOutPut> result = _cardService.Add(input);
            if (result.Success)
            {
                return Ok(result);
            }
            else
            {
                return BadRequest(result.ServiceMessageList);
            }
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="input"></param>
        /// <returns></returns>
        [Route("Update")]
        [HttpPatch]
        public ActionResult<ServiceResult<CardUpdateOutPut>> Update(CardUpdateInput input)
        {
            ServiceResult<CardUpdateOutPut> result = _cardService.Update(input);
            if (result.Success)
            {
                return Ok(result);
            }
            else
            {
                return BadRequest(result.ServiceMessageList);
            }
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="cardId"></param>
        /// <returns></returns>
        [HttpGet("GetCardAttachments/{cardId}")]
        public ActionResult<List<CardAttachmentsGetOutPut>> GetCardAttachments(string cardId)
        {
            ServiceResult<List<CardAttachmentsGetOutPut>> result = _cardService.GetCardAttachments(cardId);

            if (result.Success)
            {
                return Ok(result);
            }
            else
            {
                return BadRequest(result.ServiceMessageList);
            }
        }

    }
}