using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Threading.Tasks;
using KanbanApp.Domain;
using KanbanApp.Domain.Entities;
using KanbanApp.Services.UseCases.Board.CreateBoard;
using KanbanApp.Services.Abstract;
using KanbanApp.Services.DTO.Core;
using KanbanApp.Services.DTO.Input.BoardServiceInput;
using KanbanApp.Services.DTO.OutPut.BoardServiceOutput;
using Microsoft.AspNetCore.Mvc;

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
        /// <param name="boardId"></param>
        /// <returns></returns>
        [HttpGet("Get/{boardId}")]
        public ActionResult<BoardGetOutPut> Get(string boardId)
        {
            ServiceResult<BoardGetOutPut> result = _boardService.Get(boardId);
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
        public ActionResult<ServiceResult<List<BoardGetListOutPut>>> GetList()
        {
            //BoardGetListFilterInput input
            // Expression<Func<BoardGetListFilterInput, bool>> projectFilter;

            ServiceResult<List<BoardGetListOutPut>> result = new ServiceResult<List<BoardGetListOutPut>>();
            result = _boardService.GetList(null);
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
        public ActionResult<ServiceResult<CreateBoardCommandResult>> Add(BoardAddInput input)
        {

            ServiceResult<CreateBoardCommandResult> result = _boardService.Add(input);
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
        public ActionResult<ServiceResult<BoardUpdateOutPut>> Update(BoardUpdateInput input)
        {
            ServiceResult<BoardUpdateOutPut> result = _boardService.Update(input);
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
        /// <param name="boardId"></param>
        /// <returns></returns>
        [HttpGet("GetBoardSwimLanes/{boardId}")]
        public ActionResult<ServiceResult<List<GetBoardSwimLanesOutPut>>> GetBoardSwimLanes(string boardId)
        {
            ServiceResult<List<GetBoardSwimLanesOutPut>> result = _boardService.GetBoardSwimLanes(boardId);
            
            if (result.Success)
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