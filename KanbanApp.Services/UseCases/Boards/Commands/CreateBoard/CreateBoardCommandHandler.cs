using KanbanApp.Domain.Data;
using KanbanApp.Domain.Entities;
using KanbanApp.Services.DTO.Core;
using MediatR;
using System;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;

namespace KanbanApp.Services.UseCases.Boards.Commands.CreateBoard
{
    public sealed class CreateBoardCommandHandler : IRequestHandler<CreateBoardCommand, CreateBoardCommandResult>
    {
        private readonly IBoardRepository _boardRepository;

        public CreateBoardCommandHandler(
           IBoardRepository boardRepository)
        {
            _boardRepository = boardRepository ?? throw new ArgumentNullException(nameof(boardRepository));
        }

        public async Task<CreateBoardCommandResult> Handle(CreateBoardCommand request, CancellationToken cancellationToken)
        {
            CreateBoardCommandResult result = new CreateBoardCommandResult();
            result.ResultObject = new ServiceResult<CreateBoardCommandResultItem>();
            result.ResultObject.Success = false;
            result.ResultObject.ServiceMessageList = new List<ServiceMessage>();
            result.ResultObject.Data = new CreateBoardCommandResultItem();

            try
            {
                var validator = new CreateBoardCommandValidator();
                var validationResult = validator.Validate(request);

                if (validationResult.IsValid)
                {

                    Board board = _boardRepository.Add(new Board() { BoardId = request.BoardId, Name = request.Name, OwnerId = request.OwnerId, Description = request.Description });
                    result.ResultObject.Data.BoardId = board.BoardId;
                    result.ResultObject.Data.Name = board.Name;
                    result.ResultObject.Data.Description = board.Description;
                    result.ResultObject.Data.OwnerId = board.OwnerId;

                    result.ResultObject.Success = true;

                }
                else
                {
                    result.ResultObject.ServiceMessageList.Add(new ServiceMessage() { ServiceMessageType = eServiceMessageType.Error, UserFriendlyText = validationResult.Errors[0].ErrorMessage });
                    result.ResultObject.Success = false;
                }
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
