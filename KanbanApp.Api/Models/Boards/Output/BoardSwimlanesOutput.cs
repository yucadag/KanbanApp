using KanbanApp.Api.Models.BaseModels;

namespace KanbanApp.Api.Models.Boards.Output
{
    public class BoardSwimlanesOutput : BaseOutput
    {

        public string BoardId { get; set; }
        public string SwimLaneId { get; set; }
        public string Name { get; set; }
        public int Position { get; set; }
    }
}
