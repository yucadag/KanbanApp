using KanbanApp.Api.Models.BaseModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace KanbanApp.Api.Models.Boards.Output
{
    public class BoardAddOutput:BaseOutput
    {
        public string BoardId { get; set; }
        public string OwnerId { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }

    }
}
