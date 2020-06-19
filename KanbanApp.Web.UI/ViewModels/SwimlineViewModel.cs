using System.Collections.Generic;
using KanbanApp.Domain.Entities;

namespace KanbanApp.Web.UI.ViewModels
{
    public class SwimlineViewModel
    {
        public Board BoardItem { get; set; }
        public List<SwimLane> SwimLaneList { get; set; }
        
    }
}