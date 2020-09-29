using KanbanApp.Api.Models.BaseModels;

namespace KanbanApp.Api.Models.Boards.Input
{
    public class BoardGetInput : BaseInput
    {
        public string BoardId { get; set; }
    }
}
