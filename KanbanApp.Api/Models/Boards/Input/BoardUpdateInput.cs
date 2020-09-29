using KanbanApp.Api.Models.BaseModels;

namespace KanbanApp.Api.Models.Boards.Input
{
    public class BoardUpdateInput : BaseInput
    {
        public string BoardId { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
    }
}
