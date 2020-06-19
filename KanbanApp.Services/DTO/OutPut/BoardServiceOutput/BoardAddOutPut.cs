using System;
using System.Collections.Generic;
using System.Text;

namespace KanbanApp.Services.DTO.OutPut.BoardServiceOutput
{
   public class BoardAddOutPut
    {
        public string BoardId { get; set; }
        public string OwnerId { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
    }
}
