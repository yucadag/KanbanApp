using KanbanApp.Domain.Data;
using KanbanApp.Domain.Entities;
using KanbanApp.Services.DTO.Core;
using MediatR;
using System;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;

namespace KanbanApp.Services.UseCases.Boards.Commands.DeleteBoard
{
    public sealed class DeleteBoardCommandHandler : IRequestHandler<DeleteBoardCommand, DeleteBoardCommandResult>
    {
        private readonly IBoardRepository _boardRepository;

        public DeleteBoardCommandHandler(
           IBoardRepository boardRepository)
        {
            _boardRepository = boardRepository ?? throw new ArgumentNullException(nameof(boardRepository));
        }

        public async Task<DeleteBoardCommandResult> Handle(DeleteBoardCommand request, CancellationToken cancellationToken)
        {
            DeleteBoardCommandResult result = new DeleteBoardCommandResult();
            result.ResultObject = new ServiceResult<bool>();
            result.ResultObject.Success = false;
            result.ResultObject.ServiceMessageList = new List<ServiceMessage>();
            result.ResultObject.Data = false;


            try
            {
                var validator = new DeleteBoardCommandValidator();
                var validationResult = validator.Validate(request);

                if (validationResult.IsValid)
                {

                    _boardRepository.Delete(new Board() { BoardId = request.BoardId });
                    result.ResultObject.Data = true;
                    result.ResultObject.Success = true;
                }
                else
                {
                    result.ResultObject.Success = false;
                }
            }
            catch (Exception ex)
            {
                result.ResultObject.ServiceMessageList.Add(new ServiceMessage()
                {
                    ServiceMessageType = eServiceMessageType.Error,
                    UserFriendlyText = "An error occured",
                    LogText = "BoardService.Delete() method error message: " + ex.Message + " Inner Message: " + ex.InnerException
                });
            }

            return result;
        }
    }

}