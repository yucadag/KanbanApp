using KanbanApp.Api.Models.BaseModels;

namespace KanbanApp.Api.Models.SelectList.Output
{
    public class PriorityOutput : BaseOutput
    {
        public int PriorityId { get; set; }
        public string Name { get; set; }
        public string Color { get; set; }
    }
}
