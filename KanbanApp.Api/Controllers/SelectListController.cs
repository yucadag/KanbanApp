using KanbanApp.Api.Models.SelectList.Output;
using KanbanApp.Services.Abstract;
using KanbanApp.Services.UseCases.SelectList.GetCardPriority;
using KanbanApp.Services.UseCases.SelectList.Queries.GetCardTypes;
using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace KanbanApp.Api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class SelectListController : ControllerBase
    {
        private readonly IPriorityService _priorityService;
        private readonly ICardTypeService _cardTypeService;
        /// <summary>
        /// 
        /// </summary>
        /// <param name="priorityService"></param>
        public SelectListController(IPriorityService priorityService, ICardTypeService cardTypeService)
        {
            _priorityService = priorityService;
            _cardTypeService = cardTypeService;

        }

        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        [HttpGet("GetCardPriority")]
        public ActionResult<List<PriorityOutput>> GetCardPriority()
        {
            List<PriorityOutput> result = new List<PriorityOutput>();
            GetCardPriorityCommand command = new GetCardPriorityCommand
            {
                GetActiveRecords = true
            };
            Task<GetCardPriorityCommandResult> resultValue = _priorityService.GetCardPriority(command);

            if (resultValue.Result.ResultObject.Success)
            {
                foreach (var item in resultValue.Result.ResultObject.Data)
                {
                    result.Add(new PriorityOutput() { PriorityId = item.PriorityId, Name = item.Name, Color = item.Color, IsSuccess = true });
                }

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
        /// <returns></returns>
        [HttpGet("GetCardTypes")]
        public ActionResult<List<CardTypeOutput>> GetCardTypes()
        {
            List<CardTypeOutput> result = new List<CardTypeOutput>();
            GetCardTypesCommand command = new GetCardTypesCommand
            {
                GetActiveRecords = true
            };
            Task<GetCardTypesCommandResult> resultValue = _cardTypeService.GetCardTypes(command);

            if (resultValue.Result.ResultObject.Success)
            {
                foreach (var item in resultValue.Result.ResultObject.Data)
                {
                    result.Add(new CardTypeOutput() { CardTypeId = item.CardTypeId, Name = item.Name, IsSuccess = true });
                }

                return Ok(result);
            }
            else
            {
                return BadRequest(result);
            }
        }

    }
}