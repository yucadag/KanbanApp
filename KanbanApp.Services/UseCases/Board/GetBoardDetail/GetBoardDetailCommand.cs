using MediatR;
using System;
using System.Collections.Generic;
using System.Text;

namespace KanbanApp.Services.UseCases.Board.GetBoardDetail
{
  
    public sealed class GetBoardDetailCommand : IRequest<GetBoardDetailCommandResult>
    {
        public GetBoardDetailCommand(string userId, string name)
        {
            UserId = userId;
            Name = name;
        }

        public string UserId { get; }
        public string Name { get; }
    }
}
