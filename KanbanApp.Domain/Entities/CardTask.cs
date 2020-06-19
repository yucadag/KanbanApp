using KanbanApp.Core;
using KanbanApp.Domain.Shared;
using System;
using System.Collections.Generic;

namespace KanbanApp.Domain.Entities
{
    public class CardTask:IEntity
    {
        public string CardTaskId { get; set; }
        public string Text { get; set; }
        public ECardTaskState CardTaskState { get; set; }
        public DateTime DueDate { get; set; }
        public float Estimate { get; set; }
        public List<User> AssignUserList { get; set; }
    }
}