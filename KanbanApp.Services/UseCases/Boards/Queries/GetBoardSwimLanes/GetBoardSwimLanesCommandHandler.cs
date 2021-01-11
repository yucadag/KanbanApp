using KanbanApp.Domain.Data;
using KanbanApp.Domain.Entities;
using KanbanApp.Services.DTO.Core;
using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;

namespace KanbanApp.Services.UseCases.Boards.Queries.GetBoardSwimLanes
{
    public class GetBoardSwimLanesCommandHandler : IRequestHandler<GetBoardSwimLanesCommand, GetBoardSwimLanesCommandResult>
    {

        private readonly IBoardRepository _boardRepository;

        public GetBoardSwimLanesCommandHandler(IBoardRepository boardRepository)
        {
            _boardRepository = boardRepository ?? throw new ArgumentNullException(nameof(boardRepository));
        }

        public async Task<GetBoardSwimLanesCommandResult> Handle(GetBoardSwimLanesCommand request, CancellationToken cancellationToken)
        {
            GetBoardSwimLanesCommandResult result = new GetBoardSwimLanesCommandResult();
            result.ResultObject = new ServiceResult<List<GetBoardSwimLanesCommandResultItem>>();
            result.ResultObject.Success = false;
            result.ResultObject.ServiceMessageList = new List<ServiceMessage>();
            result.ResultObject.Data = new List<GetBoardSwimLanesCommandResultItem>();

            try
            {
                var validator = new GetBoardSwimLanesCommandValidator();
                var validationResult = validator.Validate(request);

                if (validationResult.IsValid)
                {
                    List<SwimLane> boardList = _boardRepository.GetBoardSwimLanes(request.BoardId);
                    result.ResultObject.Data = boardList.Select(x => new GetBoardSwimLanesCommandResultItem()
                    {
                        SwimLaneId = x.SwimLaneId,
                        BoardId = x.BoardId,
                        Name = x.Name,
                        Position = x.Position
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
                    LogText = "BoardService.GetBoardSwimLanes() method error message: " + ex.Message,
                    SystemException = ex
                });
            }

            return result;

        }

    }


}
