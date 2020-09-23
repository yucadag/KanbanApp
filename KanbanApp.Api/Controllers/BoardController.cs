using KanbanApp.Api.Models.Boards.Input;
using KanbanApp.Services.Abstract;
using KanbanApp.Services.DTO.Core;
using KanbanApp.Services.UseCases.Boards.CreateBoard;
using KanbanApp.Services.UseCases.Boards.GetBoardDetail;
using KanbanApp.Services.UseCases.Boards.GetBoardSwimLanes;
using Microsoft.AspNetCore.Mvc;
using System.Threading.Tasks;

namespace KanbanApp.Api.Controllers
{
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

        ///// <summary>
        ///// 
        ///// </summary>
        ///// <returns></returns>
        //[Route("GetList")]
        //[HttpGet]
        //public ActionResult<ServiceResult<List<BoardGetListOutPut>>> GetList()
        //{
        //    //BoardGetListFilterInput input
        //    // Expression<Func<BoardGetListFilterInput, bool>> projectFilter;

        //    ServiceResult<List<BoardGetListOutPut>> result = new ServiceResult<List<BoardGetListOutPut>>();
        //    result = _boardService.GetList(null);
        //    if (result.Success)
        //    {
        //        return Ok(result);
        //    }
        //    else
        //    {
        //        return BadRequest(result.ServiceMessageList);
        //    }
        //}

        /// <summary>
        /// 
        /// </summary>
        /// <param name="input"></param>
        /// <returns></returns>
        [Route("Add")]
        [HttpPost]
        public ActionResult<ServiceResult<CreateBoardCommandResult>> Add(BoardAddInput input)
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

        ///// <summary>
        ///// 
        ///// </summary>
        ///// <param name="input"></param>
        ///// <returns></returns>
        //[Route("Update")]
        //[HttpPatch]
        //public ActionResult<ServiceResult<BoardUpdateOutPut>> Update(BoardUpdateInput input)
        //{
        //    ServiceResult<BoardUpdateOutPut> result = _boardService.Update(input);
        //    if (result.Success)
        //    {
        //        return Ok(result);
        //    }
        //    else
        //    {
        //        return BadRequest(result.ServiceMessageList);
        //    }
        //}


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