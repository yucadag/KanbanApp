using KanbanApp.Api.Models.BaseModels;

namespace KanbanApp.Api.Models.Boards.Output
{
    /// <summary>
    /// 
    /// </summary>
    public class BoardGetOutput : BaseOutput
    {
        public string BoardId { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
    }
}
