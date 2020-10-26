using KanbanApp.Api.Models.BaseModels;

namespace KanbanApp.Api.Models.Boards.Input
{
    /// <summary>
    /// 
    /// </summary>
    public class BoardDeleteInput : BaseInput
    {
        public string BoardId { get; set; }
    }
}
