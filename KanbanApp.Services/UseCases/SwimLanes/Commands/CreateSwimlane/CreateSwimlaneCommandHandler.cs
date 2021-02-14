using KanbanApp.Domain.Data;
using KanbanApp.Domain.Entities;
using KanbanApp.Services.DTO.Core;
using MediatR;
using System;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;

namespace KanbanApp.Services.UseCases.SwimLanes.Commands.CreateSwimlane
{
    public sealed class CreateSwimlaneCommandHandler : IRequestHandler<CreateSwimlaneCommand, CreateSwimlaneCommandResult>
    {
        private readonly ISwimLaneRepository _swimLaneRepository;

        public CreateSwimlaneCommandHandler(
           ISwimLaneRepository swimLaneRepository)
        {
            _swimLaneRepository = swimLaneRepository ?? throw new ArgumentNullException(nameof(swimLaneRepository));
        }

        public async Task<CreateSwimlaneCommandResult> Handle(CreateSwimlaneCommand request, CancellationToken cancellationToken)
        {
            CreateSwimlaneCommandResult result = new CreateSwimlaneCommandResult();
            result.ResultObject = new ServiceResult<CreateSwimlaneCommandResultItem>();
            result.ResultObject.Success = false;
            result.ResultObject.ServiceMessageList = new List<ServiceMessage>();
            result.ResultObject.Data = new CreateSwimlaneCommandResultItem();

            try
            {
                SwimLane swimLane = _swimLaneRepository.Add(new SwimLane() { BoardId = request.BoardId, Name = request.Name });
                result.ResultObject.Data.BoardId = swimLane.BoardId;
                result.ResultObject.Data.Name = swimLane.Name;
                result.ResultObject.Data.SwimLaneId = swimLane.SwimLaneId;

                result.ResultObject.Success = true;
            }
            catch (Exception ex)
            {
                result.ResultObject.ServiceMessageList.Add(new ServiceMessage()
                {
                    ServiceMessageType = eServiceMessageType.Error,
                    UserFriendlyText = "An error occured",
                    LogText = "BoardService.Add() method error message: " + ex.Message + " Inner Message: " + ex.InnerException
                });
            }


            return result;

        }
    }

}
