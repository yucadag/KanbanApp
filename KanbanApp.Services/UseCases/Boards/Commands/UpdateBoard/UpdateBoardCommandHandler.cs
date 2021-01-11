using KanbanApp.Domain.Data;
using KanbanApp.Domain.Entities;
using KanbanApp.Services.DTO.Core;
using MediatR;
using System;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;

namespace KanbanApp.Services.UseCases.Boards.Commands.UpdateBoard
{


    public sealed class UpdateBoardCommandHandler : IRequestHandler<UpdateBoardCommand, UpdateBoardCommandResult>
    {
        private readonly IBoardRepository _boardRepository;

        public UpdateBoardCommandHandler(
           IBoardRepository boardRepository)
        {
            _boardRepository = boardRepository ?? throw new ArgumentNullException(nameof(boardRepository));
        }

        public async Task<UpdateBoardCommandResult> Handle(UpdateBoardCommand request, CancellationToken cancellationToken)
        {
            UpdateBoardCommandResult result = new UpdateBoardCommandResult();
            result.ResultObject = new ServiceResult<UpdateBoardCommandResultItem>();
            result.ResultObject.Success = false;
            result.ResultObject.ServiceMessageList = new List<ServiceMessage>();
            result.ResultObject.Data = new UpdateBoardCommandResultItem();

            try
            {
                _boardRepository.Update(new Board() { BoardId = request.BoardId, Name = request.Name, Description = request.Description, OwnerId = request.OwnerId });
                result.ResultObject.Data.BoardId = request.BoardId;
                result.ResultObject.Data.Name = request.Name;
                result.ResultObject.Data.Description = request.Description;
                result.ResultObject.Data.OwnerId = request.OwnerId;
            }
            catch (Exception ex)
            {
                result.ResultObject.ServiceMessageList.Add(new ServiceMessage()
                {
                    ServiceMessageType = eServiceMessageType.Error,
                    UserFriendlyText = "An error occured",
                    LogText = "BoardService.Update() method error message: " + ex.Message + " Inner Message: " + ex.InnerException
                });
            }

            return result;

        }
    }


}
