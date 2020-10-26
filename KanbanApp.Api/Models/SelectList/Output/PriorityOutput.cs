using KanbanApp.Api.Models.BaseModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace KanbanApp.Api.Models.SelectList.Output
{
    public class PriorityOutput : BaseOutput
    {
        public int PriorityId { get; set; }
        public string Name { get; set; }
        public string Color { get; set; }
    }
}
