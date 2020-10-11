using KanbanApp.Api.Models.Boards.Input;
using KanbanApp.Api.Models.Boards.Output;
using KanbanApp.Services.Abstract;
using KanbanApp.Services.UseCases.Boards.CreateBoard;
using KanbanApp.Services.UseCases.Boards.DeleteBoard;
using KanbanApp.Services.UseCases.Boards.GetBoardDetail;
using KanbanApp.Services.UseCases.Boards.GetBoardList;
using KanbanApp.Services.UseCases.Boards.GetBoardSwimLanes;
using KanbanApp.Services.UseCases.Boards.UpdateBoard;
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
        public ActionResult<BoardGetOutput> Get(BoardGetInput input)
        {
            GetBoardDetailCommand command = new GetBoardDetailCommand(input.BoardId);
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

        public static BoardGetOutput GetBoardListCommandResultItemToBoardGetOutput(GetBoardListCommandResultItem input)
        {
            return new BoardGetOutput()
            {
                BoardId = input.BoardId,
                Name = input.Name,
                Description = input.Description

            };
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
            List<BoardGetOutput> returnValue = new List<BoardGetOutput>();
            Task<GetBoardListCommandResult> result = _boardService.GetList(command);
            if (result.Result.ResultObject.Success)
            {
                returnValue = result.Result.ResultObject.Data.ConvertAll<BoardGetOutput>(new Converter<GetBoardListCommandResultItem, BoardGetOutput>(GetBoardListCommandResultItemToBoardGetOutput));
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
            CreateBoardCommand command = new CreateBoardCommand(input.BoardId, string.Empty, input.Name, input.Description);
            BoardAddOutput returnValue = new BoardAddOutput();
            Task<CreateBoardCommandResult> result = _boardService.Add(command);

            returnValue.BoardId = result.Result.ResultObject.Data.BoardId;
            returnValue.Name = result.Result.ResultObject.Data.Name;
            returnValue.Description = result.Result.ResultObject.Data.Description;
            returnValue.IsSuccess = true;

            if (result.Result.ResultObject.Success)
            {
                return Ok(result);
            }
            else
            {
                returnValue.IsSuccess = false;
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
        public ActionResult<List<BoardSwimlanesOutput>> GetBoardSwimLanes(string boardId)
        {
            List<BoardSwimlanesOutput> returnValue = new List<BoardSwimlanesOutput>();

            GetBoardSwimLanesCommand command = new GetBoardSwimLanesCommand(boardId);
            Task<GetBoardSwimLanesCommandResult> result = _boardService.GetBoardSwimLanes(command);

            returnValue = result.Result.ResultObject.Data.ConvertAll<BoardSwimlanesOutput>(new Converter<GetBoardSwimLanesCommandResultItem, BoardSwimlanesOutput>(GetBoardSwimLanesCommandResultItemToBoardSwimlanesOutput));

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


        public static BoardSwimlanesOutput GetBoardSwimLanesCommandResultItemToBoardSwimlanesOutput(GetBoardSwimLanesCommandResultItem input)
        {
            return new BoardSwimlanesOutput()
            {
                BoardId = input.BoardId,
                Name = input.Name,
                SwimLaneId = input.SwimLaneId


            };
        }

    }
}