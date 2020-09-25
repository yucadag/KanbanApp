using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace KanbanApp.Api.Models.Boards.Input
{
    public class BoardUpdateInput
    {
        public string BoardId { get;  set; }
        public string Name { get;  set; }
        public string Description { get;  set; }
    }
}
