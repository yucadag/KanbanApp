using KanbanApp.Core;
using System.Collections.Generic;

namespace KanbanApp.Domain.Entities
{
    public class Board : IEntity
    {
        public Board()
        {
            SwimLanes = new List<SwimLane>();
            BoardSettings = new List<Setting>();
        }
        public string BoardId { get; set; }
        public string OwnerId { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public List<Setting> BoardSettings { get; set; }
        public List<SwimLane> SwimLanes { get; set; }


    }
}