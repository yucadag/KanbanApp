using MediatR;
using System;
using System.Collections.Generic;
using System.Text;

namespace KanbanApp.Services.UseCases.Board.DeleteBoard
{
    public sealed class DeleteBoardCommand : IRequest<DeleteBoardCommandResult>
    {
        public DeleteBoardCommand(string userId, string name)
        {
            UserId = userId;
            Name = name;
        }

        public string UserId { get; }
        public string Name { get; }
    }
}
