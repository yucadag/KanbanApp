using KanbanApp.Api.Models.BaseModels;

namespace KanbanApp.Api.Models.Boards.Output
{
    public class BoardUpdateOutput : BaseOutput
    {
        public string BoardId { get; set; }

        public string OwnerId { get; set; }

        public string Name { get; set; }

        public string Description { get; set; }
    }
}
