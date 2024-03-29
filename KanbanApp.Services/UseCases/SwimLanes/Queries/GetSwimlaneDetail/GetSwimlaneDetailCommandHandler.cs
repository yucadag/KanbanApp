﻿using KanbanApp.Domain.Data;
using KanbanApp.Domain.Entities;
using KanbanApp.Services.DTO.Core;
using MediatR;
using System;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;

namespace KanbanApp.Services.UseCases.SwimLanes.Queries.GetSwimlaneDetail
{
    public class GetSwimlaneDetailCommandHandler : IRequestHandler<GetSwimlaneDetailCommand, GetSwimlaneDetailCommandResult>
    {
        private readonly ISwimLaneRepository _swimLaneRepository;

        public GetSwimlaneDetailCommandHandler(ISwimLaneRepository swimLaneRepository)
        {
            _swimLaneRepository = swimLaneRepository ?? throw new ArgumentNullException(nameof(swimLaneRepository));
        }

        public async Task<GetSwimlaneDetailCommandResult> Handle(GetSwimlaneDetailCommand request, CancellationToken cancellationToken)
        {
            GetSwimlaneDetailCommandResult result = new GetSwimlaneDetailCommandResult();
            result.ResultObject = new ServiceResult<GetSwimlaneDetailCommandResultItem>();
            result.ResultObject.Success = false;
            result.ResultObject.ServiceMessageList = new List<ServiceMessage>();
            result.ResultObject.Data = new GetSwimlaneDetailCommandResultItem();

            //PredicateBuilder

            try
            {
                SwimLane swimLane = _swimLaneRepository.Get(x => x.SwimLaneId == request.SwimLaneId);
                result.ResultObject.Data.BoardId = swimLane.BoardId;
                result.ResultObject.Data.SwimLaneId = swimLane.SwimLaneId;
                result.ResultObject.Data.Name = swimLane.Name;


                result.ResultObject.Success = true;
            }
            catch (Exception ex)
            {
                result.ResultObject.ServiceMessageList.Add(new ServiceMessage()
                {
                    ServiceMessageType = eServiceMessageType.Error,
                    UserFriendlyText = "An error occured",
                    LogText = "BoardService.GetBoardSwimLanes() method error message: " + ex.Message,
                    SystemException = ex
                });
            }

            return result;

        }
    }
}
