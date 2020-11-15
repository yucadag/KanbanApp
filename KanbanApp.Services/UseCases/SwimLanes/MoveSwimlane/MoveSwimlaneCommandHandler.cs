using KanbanApp.Domain.Data;
using KanbanApp.Domain.Entities;
using KanbanApp.Services.DTO.Core;
using MediatR;
using System;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;

namespace KanbanApp.Services.UseCases.SwimLanes.MoveSwimlane
{


    public sealed class MoveSwimlaneCommandHandler : IRequestHandler<MoveSwimlaneCommand, MoveSwimlaneCommandResult>
    {
        private readonly ISwimLaneRepository _swimLaneRepository;

        public MoveSwimlaneCommandHandler(
           ISwimLaneRepository swimLaneRepository)
        {
            _swimLaneRepository = swimLaneRepository ?? throw new ArgumentNullException(nameof(swimLaneRepository));
        }

        public async Task<MoveSwimlaneCommandResult> Handle(MoveSwimlaneCommand request, CancellationToken cancellationToken)
        {
            MoveSwimlaneCommandResult result = new MoveSwimlaneCommandResult();
            result.ResultObject = new ServiceResult<MoveSwimlaneCommandResultItem>();
            result.ResultObject.Success = false;
            result.ResultObject.ServiceMessageList = new List<ServiceMessage>();
            result.ResultObject.Data = new MoveSwimlaneCommandResultItem();

            try
            {
                _swimLaneRepository.Update(new SwimLane() { BoardId = request.BoardId, Name = request.Name, Position = request.Position });
                result.ResultObject.Data.IsSuccess = true;
                result.ResultObject.Success = true;
            }
            catch (Exception ex)
            {
                result.ResultObject.Data.IsSuccess = false;
                result.ResultObject.Success = false;
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
