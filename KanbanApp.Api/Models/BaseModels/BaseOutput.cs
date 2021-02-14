using System.Collections.Generic;

namespace KanbanApp.Api.Models.BaseModels
{
    public class BaseOutput
    {
        public BaseOutput()
        {
            MessageList = new List<string>();
        }
        public bool IsSuccess { get; set; }
        public List<string> MessageList { get; set; }
    }
}
