using AutoMapper;
using KanbanApp.Api.Models.SwimLanes.Input;
using KanbanApp.Api.Models.SwimLanes.Output;
using KanbanApp.Services.Abstract;
using KanbanApp.Services.UseCases.SwimLanes.Commands.CreateSwimlane;
using KanbanApp.Services.UseCases.SwimLanes.Commands.MoveSwimlane;
using KanbanApp.Services.UseCases.SwimLanes.Queries.GetSwimLaneCards;
using KanbanApp.Services.UseCases.SwimLanes.Queries.GetSwimLaneCardsWithPaging;
using KanbanApp.Services.UseCases.SwimLanes.Queries.GetSwimlaneDetail;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
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
        private readonly IMapper _mapper;

        /// <summary>
        /// 
        /// </summary>
        /// <param name="service"></param>
        /// <param name="mapper"></param>
        public SwimLaneController(ISwimLaneService service, IMapper mapper)
        {
            _mapper = mapper;
            _swimLaneService = service;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="input"></param>
        /// <returns></returns>
        [Route("Get")]
        [HttpPost]
        public ActionResult<SwimLaneGetOutput> Get(SwimLaneGetInput input)
        {
            GetSwimlaneDetailCommand command = _mapper.Map<SwimLaneGetInput, GetSwimlaneDetailCommand>(input);
            Task<GetSwimlaneDetailCommandResult> result = _swimLaneService.Get(command);
            SwimLaneGetOutput returnValue = _mapper.Map<GetSwimlaneDetailCommandResultItem, SwimLaneGetOutput>(result.Result.ResultObject.Data);
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
        public ActionResult<SwimLaneAddOutput> Add(SwimLaneAddInput input)
        {
            CreateSwimlaneCommand command = _mapper.Map<SwimLaneAddInput, CreateSwimlaneCommand>(input);
            Task<CreateSwimlaneCommandResult> result = _swimLaneService.Add(command);
            SwimLaneAddOutput returnValue = _mapper.Map<CreateSwimlaneCommandResultItem, SwimLaneAddOutput>(result.Result.ResultObject.Data);

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
        [Route("GetSwimLaneCards")]
        [HttpPost]
        public ActionResult<List<SwimlaneCardsOutput>> GetSwimLaneCards(SwimLaneCardsInput input)
        {
            GetSwimLaneCardsCommand command = _mapper.Map<SwimLaneCardsInput, GetSwimLaneCardsCommand>(input);
            Task<GetSwimLaneCardsCommandResult> result = _swimLaneService.GetSwimLanesCards(command);
            List<SwimlaneCardsOutput> returnValue = _mapper.Map<List<GetSwimLaneCardsCommandResultItem>, List<SwimlaneCardsOutput>>(result.Result.ResultObject.Data);

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
        [Route("GetSwimLaneCardsWithPaging")]
        [HttpPost]
        public ActionResult<List<SwimLaneCardsWithPagingOutput>> GetSwimLaneCardsWithPaging(SwimLaneCardsWithPagingInput input)
        {
            GetSwimLaneCardsWithPagingCommand command = _mapper.Map<SwimLaneCardsWithPagingInput, GetSwimLaneCardsWithPagingCommand>(input);
            command.PagingParameter = new Core.Paging.PagingParameterBase();
            command.PagingParameter.PageNumber = input.PageNumber;
            command.PagingParameter.PageSize = input.PageSize;
            Task<GetSwimLaneCardsWithPagingCommandResult> result = _swimLaneService.GetSwimLanesCardsWithPaging(command);
            List<SwimLaneCardsWithPagingOutput> returnValue = _mapper.Map<List<GetSwimLaneCardsWithPagingCommandResultItem>, List<SwimLaneCardsWithPagingOutput>>(result.Result.ResultObject.Data);

            if (result.Result.ResultObject.Success)
            {
                var metadata = new
                {
                    result.Result.ResultObject.Data.TotalCount,
                    result.Result.ResultObject.Data.PageSize,
                    result.Result.ResultObject.Data.CurrentPage,
                    result.Result.ResultObject.Data.TotalPages,
                    result.Result.ResultObject.Data.HasNext,
                    result.Result.ResultObject.Data.HasPrevious
                };
                Response.Headers.Add("X-Pagination", JsonConvert.SerializeObject(metadata));
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
        [Route("Move")]
        [HttpPatch]
        public ActionResult<SwimLaneMoveOutput> Move(SwimLaneMoveInput input)
        {
            MoveSwimlaneCommand command = _mapper.Map<SwimLaneMoveInput, MoveSwimlaneCommand>(input);
            Task<MoveSwimlaneCommandResult> result = _swimLaneService.Move(command);
            SwimLaneMoveOutput resultValue = _mapper.Map<MoveSwimlaneCommandResultItem, SwimLaneMoveOutput>(result.Result.ResultObject.Data);
            if (result.Result.ResultObject.Success)
            {
                return Ok(resultValue);
            }
            else
            {
                return BadRequest(resultValue);
            }
        }


    }
}
