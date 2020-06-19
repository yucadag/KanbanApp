using System;
using System.Collections.Generic;
using System.Text;

namespace KanbanApp.Services.UseCases.Board.CreateBoard
{
   public class CreateBoardCommandResult
    {
        public string BoardId { get; set; }
        public string OwnerId { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }

    }
}
