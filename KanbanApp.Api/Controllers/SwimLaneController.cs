using KanbanApp.Api.Models.SwimLanes.Input;
using KanbanApp.Services.Abstract;
using KanbanApp.Services.DTO.Core;
using KanbanApp.Services.DTO.OutPut.SwimLaneServiceOutput;
using KanbanApp.Services.UseCases.SwimLanes.CreateSwimlane;
using KanbanApp.Services.UseCases.SwimLanes.GetSwimLaneCards;
using KanbanApp.Services.UseCases.SwimLanes.GetSwimlaneDetail;
using KanbanApp.Services.UseCases.SwimLanes.MoveSwimlane;
using Microsoft.AspNetCore.Mvc;
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
            GetSwimlaneDetailCommand command = new GetSwimlaneDetailCommand();

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
            CreateSwimlaneCommand command = new CreateSwimlaneCommand();
            command.BoardId = input.BoardId;
            command.SwimLaneId = input.SwimLaneId;
            command.Name = input.Name;
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
        public ActionResult<GetSwimLaneCardsOutPut> GetSwimLaneCards(string boardId, string swimLaneId)
        {
            GetSwimLaneCardsCommand command = new GetSwimLaneCardsCommand(boardId, swimLaneId);
            Task<GetSwimLaneCardsCommandResult> result = _swimLaneService.GetBoardSwimLanes(command);

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
        [Route("Move")]
        [HttpPatch]
        public ActionResult<MoveSwimlaneCommandResult> Move(SwimLaneMoveInput input)
        {
            MoveSwimlaneCommand command = new MoveSwimlaneCommand();
            command.BoardId = input.BoardId;
            command.SwimLaneId = input.SwimLaneId;
            command.Name = input.Name;
            command.Position = input.Position;
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
