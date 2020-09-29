using KanbanApp.Api.Models.BaseModels;

namespace KanbanApp.Api.Models.Boards.Input
{
    public class BoardDeleteInput : BaseInput
    {
        public string BoardId { get; set; }
    }
}
