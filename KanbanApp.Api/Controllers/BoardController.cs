using KanbanApp.Api.Models.Boards.Input;
using KanbanApp.Services.Abstract;
using KanbanApp.Services.UseCases.Boards.CreateBoard;
using KanbanApp.Services.UseCases.Boards.DeleteBoard;
using KanbanApp.Services.UseCases.Boards.GetBoardDetail;
using KanbanApp.Services.UseCases.Boards.GetBoardList;
using KanbanApp.Services.UseCases.Boards.GetBoardSwimLanes;
using KanbanApp.Services.UseCases.Boards.UpdateBoard;
using Microsoft.AspNetCore.Mvc;
using System.Threading.Tasks;

namespace KanbanApp.Api.Controllers
{
    /// <summary>
    /// 
    /// </summary>
    [Route("api/[controller]")]
    [ApiController]
    public class BoardController : ControllerBase
    {
        private readonly IBoardService _boardService;
        /// <summary>
        /// 
        /// </summary>
        /// <param name="_service"></param>
        public BoardController(IBoardService _service)
        {
            _boardService = _service;

        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="input"></param>
        /// <returns></returns>
        [HttpPost]
        public ActionResult<GetBoardDetailCommandResult> Get(BoardGetInput input)
        {
            GetBoardDetailCommand command = new GetBoardDetailCommand(input.BoardId);

            Task<GetBoardDetailCommandResult> result = _boardService.Get(command);
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
        /// <returns></returns>
        [Route("GetList")]
        [HttpGet]
        public ActionResult<GetBoardListCommandResult> GetList()
        {
            GetBoardListCommand command = new GetBoardListCommand();

            Task<GetBoardListCommandResult> result = _boardService.GetList(command);
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
        public ActionResult<CreateBoardCommandResult> Add(BoardAddInput input)
        {
            CreateBoardCommand command = new CreateBoardCommand(input.BoardId, string.Empty, input.Name, input.Description);

            Task<CreateBoardCommandResult> result = _boardService.Add(command);
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
        [Route("Update")]
        [HttpPatch]
        public ActionResult<UpdateBoardCommandResult> Update(BoardUpdateInput input)
        {
            UpdateBoardCommand command = new UpdateBoardCommand
            {
                BoardId = input.BoardId,
                Name = input.Name,
                Description = input.Description
            };

            Task<UpdateBoardCommandResult> result = _boardService.Update(command);
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
        [Route("Delete")]
        [HttpPost]
        public ActionResult<DeleteBoardCommandResult> Delete(BoardDeleteInput input)
        {
            DeleteBoardCommand command = new DeleteBoardCommand(input.BoardId);

            Task<DeleteBoardCommandResult> result = _boardService.Delete(command);
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
        /// <returns></returns>
        [HttpGet("GetBoardSwimLanes/{boardId}")]
        public ActionResult<GetBoardSwimLanesCommandResult> GetBoardSwimLanes(string boardId)
        {
            GetBoardSwimLanesCommand command = new GetBoardSwimLanesCommand(boardId);
            Task<GetBoardSwimLanesCommandResult> result = _boardService.GetBoardSwimLanes(command);

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