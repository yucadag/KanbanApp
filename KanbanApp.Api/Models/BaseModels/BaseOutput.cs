using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace KanbanApp.Api.Models.BaseModels
{
    public class BaseOutput
    {
        public bool IsSuccess { get; set; }
        public List<string> MessageList { get; set; }
    }
}
