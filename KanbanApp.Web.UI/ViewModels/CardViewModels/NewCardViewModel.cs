using KanbanApp.Domain.Entities;
using System.Collections.Generic;

namespace KanbanApp.Web.UI.ViewModels.CardViewModels
{
    public class NewCardViewModel
    {

        public decimal BoardId { get; set; }

        public string Name { get; set; }
        public string Description { get; set; }
        public decimal PriorityId { get; set; }

        public decimal CardTypeId { get; set; }
        public int OrderId { get; set; }
        public List<CardTask> CardTasks { get; set; }
        public List<CardAttachment> AttachmentList { get; set; }
    }
}