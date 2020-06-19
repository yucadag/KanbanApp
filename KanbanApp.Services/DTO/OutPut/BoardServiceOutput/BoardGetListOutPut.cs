using System;
using System.Collections.Generic;
using System.Text;

namespace KanbanApp.Services.DTO.OutPut.BoardServiceOutput
{
    public class BoardGetListOutPut
    {
        public string BoardId { get; internal set; }
        public string Description { get; internal set; }
        public string Name { get; internal set; }
    }
}
