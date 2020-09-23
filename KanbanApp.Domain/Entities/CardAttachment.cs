using KanbanApp.Core;

namespace KanbanApp.Domain.Entities
{
    public class CardAttachment : IEntity

    {
        public string CardId { get; set; }
        public string CardAttachmentId { get; set; }
        public string AttachmentName { get; set; }
        public string AttachmentDownloadLink { get; set; }
    }
}