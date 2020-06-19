using System.Collections.Generic;
using KanbanApp.Core;

namespace KanbanApp.Domain.Entities
{
    public class SwimLane:IEntity
    {
        public SwimLane()
        {
            Cards=new List<Card>();
        }

        public string BoardId { get; set; }

        public string SwimLaneId { get; set; }
        public string Name { get; set; }
        public List<Card> Cards { get; set; }
        public int Position { get; set; }

        public SwimLaneSetting Settings { get; set; }
    }

    
}