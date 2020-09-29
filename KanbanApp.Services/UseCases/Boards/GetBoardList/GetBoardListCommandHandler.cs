using KanbanApp.Domain.Data;
using KanbanApp.Domain.Entities;
using KanbanApp.Services.DTO.Core;
using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;

namespace KanbanApp.Services.UseCases.Boards.GetBoardList
{
    public class GetBoardListCommandHandler : IRequestHandler<GetBoardListCommand, GetBoardListCommandResult>
    {

        private readonly IBoardRepository _boardRepository;

        public GetBoardListCommandHandler(IBoardRepository boardRepository)
        {
            _boardRepository = boardRepository ?? throw new ArgumentNullException(nameof(boardRepository));
        }

        public async Task<GetBoardListCommandResult> Handle(GetBoardListCommand request, CancellationToken cancellationToken)
        {
            GetBoardListCommandResult result = new GetBoardListCommandResult();
            result.ResultObject = new ServiceResult<List<GetBoardListCommandResultItem>>();
            result.ResultObject.Success = false;
            result.ResultObject.ServiceMessageList = new List<ServiceMessage>();
            result.ResultObject.Data = new List<GetBoardListCommandResultItem>();

            try
            {
                //PredicateBuilder.

                var validator = new GetBoardListCommandValidator();
                var validationResult = validator.Validate(request);

                if (validationResult.IsValid)
                {

                    List<Board> boardList = _boardRepository.GetList();
                    result.ResultObject.Data = boardList.Select(x => new GetBoardListCommandResultItem()
                    {
                        BoardId = x.BoardId,
                        Name = x.Name,
                        Description = x.Description
                    }).ToList();

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
                    LogText = "BoardService.GetBoardList() method error message: " + ex.Message,
                    SystemException = ex
                });
            }

            return result;

        }

    }
}
