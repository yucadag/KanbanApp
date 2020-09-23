using KanbanApp.Services.DTO.Core;
using System;
using System.Collections.Generic;
using System.Text;

namespace KanbanApp.Services.UseCases.Cards.DeleteCard
{
  public   class DeleteCardCommandResult
    {
        public ServiceResult<DeleteCardCommandResultItem> ResultObject { get; set; }
    }

    public class DeleteCardCommandResultItem
    {
        public string BoardId { get; set; }
        public string SwimLaneId { get; set; }
        public string Name { get; set; }
        public int Position { get; set; }
    }
}
