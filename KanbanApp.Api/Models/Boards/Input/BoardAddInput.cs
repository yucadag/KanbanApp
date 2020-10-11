using KanbanApp.Api.Models.BaseModels;

namespace KanbanApp.Api.Models.Boards.Input
{
    /// <summary>
    /// 
    /// </summary>
    public class BoardAddInput : BaseInput
    {
        /// <summary>
        /// 
        /// </summary>
        public string BoardId { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public string OwnerId { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public string Name { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public string Description { get; set; }
    }
}
