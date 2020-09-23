
using KanbanApp.Domain.Data;
using KanbanApp.Domain.Entities;
using KanbanApp.Services.Abstract;
using KanbanApp.Services.DTO.Core;

using KanbanApp.Services.DTO.OutPut.SwimLaneServiceOutput;
using KanbanApp.Services.UseCases.SwimLanes.CreateSwimlane;
using KanbanApp.Services.UseCases.SwimLanes.GetSwimLaneCards;
using KanbanApp.Services.UseCases.SwimLanes.GetSwimlaneDetail;
using KanbanApp.Services.UseCases.SwimLanes.MoveSwimlane;
using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace KanbanApp.Services.Concrete
{
    public class SwimLaneService : ISwimLaneService
    {
        private readonly ISwimLaneRepository _swimLaneRepository;
        private readonly IMediator _mediator;

        public SwimLaneService(ISwimLaneRepository swimLaneRepository, IMediator mediator)
        {
            _swimLaneRepository = swimLaneRepository;
            _mediator = mediator;
        }
        public Task<CreateSwimlaneCommandResult> Add(CreateSwimlaneCommand command)
        {
            Task<CreateSwimlaneCommandResult> result;

            result = _mediator.Send(command);

            return result;

        }
        public Task<GetSwimlaneDetailCommandResult> Get(GetSwimlaneDetailCommand command)
        {
            Task<GetSwimlaneDetailCommandResult> result;

            result = _mediator.Send(command);

            return result;

        }     
        public Task<GetSwimLaneCardsCommandResult> GetBoardSwimLanes(GetSwimLaneCardsCommand command)
        {
            Task<GetSwimLaneCardsCommandResult> result;

            result = _mediator.Send(command);

            return result;
        }
        public Task<MoveSwimlaneCommandResult> Move(MoveSwimlaneCommand command)
        {

            Task<MoveSwimlaneCommandResult> result;

            result = _mediator.Send(command);

            return result;

        }
    }
}
