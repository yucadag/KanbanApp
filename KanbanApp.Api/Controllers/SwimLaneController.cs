using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using KanbanApp.Domain.Entities;
using KanbanApp.Services.Abstract;
using KanbanApp.Services.DTO.Core;
using KanbanApp.Services.DTO.Input.SwimLaneServiceInput;
using KanbanApp.Services.DTO.OutPut.SwimLaneServiceOutput;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

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
        public ActionResult<Board> Get(string swimLaneId)
        {
            ServiceResult<SwimLaneGetOutPut> result = _swimLaneService.Get(swimLaneId);
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
        public ActionResult<ServiceResult<List<SwimLaneGetListOutPut>>> GetList()
        {
            //BoardGetListFilterInput input
            // Expression<Func<BoardGetListFilterInput, bool>> projectFilter;

            ServiceResult<List<SwimLaneGetListOutPut>> result = new ServiceResult<List<SwimLaneGetListOutPut>>();
            result = _swimLaneService.GetList();
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
        public ActionResult<ServiceResult<SwimLaneAddOutPut>> Add(SwimLaneAddInput input)
        {

            ServiceResult<SwimLaneAddOutPut> result = _swimLaneService.Add(input);
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
        public ActionResult<ServiceResult<SwimLaneUpdateOutPut>> Update(SwimLaneUpdateInput input)
        {
            ServiceResult<SwimLaneUpdateOutPut> result = _swimLaneService.Update(input);
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
        /// <param name="swimLaneId"></param>
        /// <returns></returns>
        [HttpGet("GetSwimLaneCards/{swimLaneId}")]
        public ActionResult<GetSwimLaneCardsOutPut> GetSwimLaneCards(string swimLaneId)
        {
            ServiceResult<GetSwimLaneCardsOutPut> result = _swimLaneService.GetSwimLaneCards(swimLaneId);

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
