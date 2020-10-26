using KanbanApp.Api.Models.SwimLanes.Input;
using KanbanApp.Api.Models.SwimLanes.Output;
using KanbanApp.Services.Abstract;
using KanbanApp.Services.UseCases.SwimLanes.CreateSwimlane;
using KanbanApp.Services.UseCases.SwimLanes.GetSwimLaneCards;
using KanbanApp.Services.UseCases.SwimLanes.GetSwimlaneDetail;
using KanbanApp.Services.UseCases.SwimLanes.MoveSwimlane;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace KanbanApp.Api.Controllers
{
    /// <summary>
    /// 
    /// </summary>
    [Route("api/[controller]")]
    [ApiController]
    public class SwimLaneController : ControllerBase
    {
        private readonly ISwimLaneService _swimLaneService;

        /// <summary>
        /// 
        /// </summary>
        /// <param name="service"></param>
        public SwimLaneController(ISwimLaneService service)
        {
            _swimLaneService = service;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="swimLaneId"></param>
        /// <returns></returns>
        [HttpGet("Get/{swimLaneId}")]
        public ActionResult<GetSwimlaneDetailCommandResult> Get(string swimLaneId)
        {
            GetSwimlaneDetailCommand command = new GetSwimlaneDetailCommand
            {
                SwimLaneId = swimLaneId
            };
            Task<GetSwimlaneDetailCommandResult> result = _swimLaneService.Get(command);
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
        /// <param name="input"></param>
        /// <returns></returns>
        [Route("Add")]
        [HttpPost]
        public ActionResult<CreateSwimlaneCommandResult> Add(SwimLaneAddInput input)
        {
            CreateSwimlaneCommand command = new CreateSwimlaneCommand
            {
                BoardId = input.BoardId,
                SwimLaneId = input.SwimLaneId,
                Name = input.Name
            };
            Task<CreateSwimlaneCommandResult> result = _swimLaneService.Add(command);
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
        /// <param name="boardId"></param>
        /// <param name="swimLaneId"></param>
        /// <returns></returns>
        [HttpGet("GetSwimLaneCards/{boardId}/{swimLaneId}")]
        public ActionResult<List<SwimlaneCardsOutput>> GetSwimLaneCards(string boardId, string swimLaneId)
        {
            GetSwimLaneCardsCommand command = new GetSwimLaneCardsCommand(boardId, swimLaneId);
            Task<GetSwimLaneCardsCommandResult> result = _swimLaneService.GetBoardSwimLanes(command);
            List<SwimlaneCardsOutput> returnValue = new List<SwimlaneCardsOutput>();

            returnValue = result.Result.ResultObject.Data.ConvertAll<SwimlaneCardsOutput>(new Converter<GetSwimLaneCardsCommandResultItem, SwimlaneCardsOutput>(GetSwimLaneCardsCommandResultItemToSwimlaneCardsOutput));

            if (result.Result.ResultObject.Success)
            {

                return Ok(returnValue);
            }
            else
            {
                return BadRequest(returnValue);
            }
        }

        public static SwimlaneCardsOutput GetSwimLaneCardsCommandResultItemToSwimlaneCardsOutput(GetSwimLaneCardsCommandResultItem input)
        {
            return new SwimlaneCardsOutput()
            {
                BoardId = input.BoardId,
                Name = input.Name,
                SwimLaneId = input.SwimLaneId,
                CardId = input.CardId,
                Description = input.Description,
                PriorityColor=input.PriorityColor
            };
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="input"></param>
        /// <returns></returns>
        [Route("Move")]
        [HttpPatch]
        public ActionResult<MoveSwimlaneCommandResult> Move(SwimLaneMoveInput input)
        {
            MoveSwimlaneCommand command = new MoveSwimlaneCommand
            {
                BoardId = input.BoardId,
                SwimLaneId = input.SwimLaneId,
                Name = input.Name,
                Position = input.Position
            };
            Task<MoveSwimlaneCommandResult> result = _swimLaneService.Move(command);
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
