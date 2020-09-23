using KanbanApp.Domain.Entities;
using System.Collections.Generic;

namespace KanbanApp.Web.UI.ViewModels
{
    public class SwimlineViewModel
    {
        public Board BoardItem { get; set; }
        public List<SwimLane> SwimLaneList { get; set; }

    }
}