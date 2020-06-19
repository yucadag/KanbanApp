using MediatR;
using System;
using System.Collections.Generic;
using System.Text;

namespace KanbanApp.Services.UseCases.Board.CreateBoard
{
    public sealed class CreateBoardCommand : IRequest<CreateBoardCommandResult>
    {
        public CreateBoardCommand(string ownerId, string name,string description)
        {
            OwnerId = ownerId;
            Name = name;
            Description = description;
        }

        public string OwnerId { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
    }
}
