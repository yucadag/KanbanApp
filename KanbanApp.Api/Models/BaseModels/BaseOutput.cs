using System.Collections.Generic;

namespace KanbanApp.Api.Models.BaseModels
{
    public class BaseOutput
    {
        public bool IsSuccess { get; set; }
        public List<string> MessageList { get; set; }
    }
}
