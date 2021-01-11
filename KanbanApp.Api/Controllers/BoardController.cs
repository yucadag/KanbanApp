
using AutoMapper;
using KanbanApp.Api.Models.Boards.Input;
using KanbanApp.Api.Models.Boards.Output;
using KanbanApp.Services.Abstract;
using KanbanApp.Services.UseCases.Boards.Commands.CreateBoard;
using KanbanApp.Services.UseCases.Boards.Commands.DeleteBoard;
using KanbanApp.Services.UseCases.Boards.Commands.UpdateBoard;
using KanbanApp.Services.UseCases.Boards.Queries.GetBoardDetail;
using KanbanApp.Services.UseCases.Boards.Queries.GetBoardList;
using KanbanApp.Services.UseCases.Boards.Queries.GetBoardSwimLanes;
using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;
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
        private readonly IMapper _mapper;
        /// <summary>
        /// 
        /// </summary>
        /// <param name="_service"></param>
        /// <param name="mapper"></param>
        public BoardController(IBoardService _service, IMapper mapper)
        {
            _mapper = mapper;
            _boardService = _service;

        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="input"></param>
        /// <returns></returns>
        [HttpPost]
        public ActionResult<BoardGetOutput> Get(BoardGetInput input)
        {
            
            GetBoardDetailCommand command = _mapper.Map<BoardGetInput, GetBoardDetailCommand>(input);

            BoardGetOutput returnValue = new BoardGetOutput();

            Task<GetBoardDetailCommandResult> result = _boardService.Get(command);
            if (result.Result.ResultObject.Success)
            {
                returnValue.BoardId = result.Result.ResultObject.Data.BoardId;
                returnValue.Name = result.Result.ResultObject.Data.Name;
                returnValue.Description = result.Result.ResultObject.Data.Description;
                returnValue.IsSuccess = true;
                return Ok(returnValue);
            }
            else

            {
                returnValue.IsSuccess = false;
                returnValue.MessageList = new List<string>();
                returnValue.MessageList[0] = result.Result.ResultObject.GetErrorMessageList()[0].UserFriendlyText;
                return BadRequest(returnValue);
            }
        }

        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        [Route("GetList")]
        [HttpGet]
        public ActionResult<List<BoardGetOutput>> GetList()
        {
            GetBoardListCommand command = new GetBoardListCommand();

            Task<GetBoardListCommandResult> result = _boardService.GetList(command);
            List<BoardGetOutput> returnValue = _mapper.Map<List<GetBoardListCommandResultItem>, List<BoardGetOutput>>(result.Result.ResultObject.Data);
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
        [Route("Add")]
        [HttpPost]
        public ActionResult<BoardAddOutput> Add(BoardAddInput input)
        {
            CreateBoardCommand command = _mapper.Map<BoardAddInput, CreateBoardCommand>(input);

            Task<CreateBoardCommandResult> result = _boardService.Add(command);

            BoardAddOutput returnValue = _mapper.Map<CreateBoardCommandResultItem, BoardAddOutput>(result.Result.ResultObject.Data);

            if (result.Result.ResultObject.Success)
            {
                //returnValue.IsSuccess = true;
                return Ok(returnValue);
            }
            else
            {
               // returnValue.IsSuccess = false;
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
        public ActionResult<BoardUpdateOutput> Update(BoardUpdateInput input)
        {
            UpdateBoardCommand command = _mapper.Map<BoardUpdateInput, UpdateBoardCommand>(input);

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
        public ActionResult<bool> Delete(BoardDeleteInput input)
        {
            DeleteBoardCommand command = _mapper.Map<BoardDeleteInput, DeleteBoardCommand>(input);
            Task<DeleteBoardCommandResult> result = _boardService.Delete(command);
            if (result.Result.ResultObject.Success)
            {
                return Ok(result.Result.ResultObject);
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
        public ActionResult<List<BoardSwimlanesOutput>> GetBoardSwimLanes(string boardId)
        {
            GetBoardSwimLanesCommand command = new GetBoardSwimLanesCommand(boardId);
            Task<GetBoardSwimLanesCommandResult> result = _boardService.GetBoardSwimLanes(command);
            List<BoardSwimlanesOutput> returnValue = _mapper.Map<List<GetBoardSwimLanesCommandResultItem>, List<BoardSwimlanesOutput>>(result.Result.ResultObject.Data);
           

            if (result.Result.ResultObject.Success)
            {
                returnValue[0].IsSuccess = true;
                return Ok(returnValue);
            }
            else
            {
                return BadRequest(result);
            }
        }

    }
}