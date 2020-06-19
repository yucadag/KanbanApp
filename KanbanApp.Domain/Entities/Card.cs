using System.Collections.Generic;
using KanbanApp.Core;

namespace KanbanApp.Domain.Entities
{
    public class Card:IEntity
    {
        public Card()
        {
            CardTasks=new List<CardTask>();
            AttachmentList=new List<CardAttachment>();
            AssignUserList = new List<User>();
            TagList = new List<Tag>();
        }

        public string BoardId { get; set; }
        public string SwimLaneId { get; set; }
        public string CardId { get; set; }
        public string Name { get; set; }
        public string Description { get; set; } 
        public Priority CardPriority { get; set; }
        public CardType Type { get; set; }
        public int CardPosition { get; set; }
        public List<CardTask> CardTasks { get; set; }
        public CardWeightSize CardWeightSize { get; set; }
        public List<User> AssignUserList { get; set; }
        public List<CardAttachment> AttachmentList { get; set; }
        public int EstimateHours { get; set; }
        public List<Tag> TagList { get; set; }

    }
}