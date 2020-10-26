using KanbanApp.Api.Models.Cards.Input;
using KanbanApp.Api.Models.Cards.Output;
using KanbanApp.Api.Models.SelectList.Output;
using KanbanApp.Services.Abstract;
using KanbanApp.Services.UseCases.Cards.CreateCard;
using KanbanApp.Services.UseCases.Cards.DeleteCard;
using KanbanApp.Services.UseCases.Cards.GetAttachmentList;
using KanbanApp.Services.UseCases.Cards.GetCardDetail;
using KanbanApp.Services.UseCases.Cards.MoveCard;
using KanbanApp.Services.UseCases.Cards.UpdateCard;
using KanbanApp.Services.UseCases.SelectList.GetCardPriority;
using Microsoft.AspNetCore.Mvc;
using Serilog;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace KanbanApp.Api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class SelectListController : ControllerBase
    {
        private readonly IPriorityService _priorityService;
        /// <summary>
        /// 
        /// </summary>
        /// <param name="priorityService"></param>
        public SelectListController(IPriorityService priorityService)
        {
            _priorityService = priorityService;

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

    }
}