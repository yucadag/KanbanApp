using KanbanApp.Api.Models.BaseModels;

namespace KanbanApp.Api.Models.Cards.Output
{
    public class CardCreateOutput:BaseOutput
    {
        public string BoardId { get; set; }
        public string SwimLaneId { get; set; }
        public string CardId { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public int Position { get; set; }
    }
}
