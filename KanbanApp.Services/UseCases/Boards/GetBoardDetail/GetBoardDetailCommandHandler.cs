using KanbanApp.Domain.Data;
using KanbanApp.Domain.Entities;
using KanbanApp.Services.DTO.Core;
using MediatR;
using System;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;

namespace KanbanApp.Services.UseCases.Boards.GetBoardDetail
{
    public class GetBoardDetailCommandHandler : IRequestHandler<GetBoardDetailCommand, GetBoardDetailCommandResult>
    {

        private readonly IBoardRepository _boardRepository;

        public GetBoardDetailCommandHandler(IBoardRepository boardRepository)
        {
            _boardRepository = boardRepository ?? throw new ArgumentNullException(nameof(boardRepository));
        }

        public async Task<GetBoardDetailCommandResult> Handle(GetBoardDetailCommand request, CancellationToken cancellationToken)
        {
            GetBoardDetailCommandResult result = new GetBoardDetailCommandResult();
            result.ResultObject = new ServiceResult<GetBoardDetailCommandResultItem>();
            result.ResultObject.Success = false;
            result.ResultObject.ServiceMessageList = new List<ServiceMessage>();
            result.ResultObject.Data = new GetBoardDetailCommandResultItem();

            try
            {
                var validator = new GetBoardDetailCommandValidator();
                var validationResult = validator.Validate(request);

                if (validationResult.IsValid)
                {

                    Board board = _boardRepository.Get(x => x.BoardId == request.BoardId);
                    result.ResultObject.Data.BoardId = board.BoardId;
                    result.ResultObject.Data.Name = board.Name;
                    result.ResultObject.Data.Description = board.Description;

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
                    LogText = "BoardService.GetBoardDetail() method error message: " + ex.Message,
                    SystemException = ex
                });
            }

            return result;

        }

    }
}
