using KanbanApp.Api.Models.BaseModels;

namespace KanbanApp.Api.Models.SwimLanes.Output
{
    public class SwimlaneCardsOutput : BaseOutput
    {
        public string BoardId { get; set; }
        public string SwimLaneId { get; set; }
        public string CardId { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }

    }
}
