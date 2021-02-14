using KanbanApp.Api.Models.BaseModels;

namespace KanbanApp.Api.Models.SelectList.Output
{
    public class CardTypeOutput:BaseOutput
    {
        public string CardTypeId { get; set; }
        public string Name { get; set; }
    }
}
