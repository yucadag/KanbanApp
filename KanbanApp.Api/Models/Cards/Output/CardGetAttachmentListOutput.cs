﻿namespace KanbanApp.Api.Models.Cards.Output
{
    public class CardGetAttachmentListOutput
    {
        public string CardId { get; set; }
        public string AttachmentName { get; set; }
        public string CardAttachmentId { get; set; }
        public string AttachmentDownloadLink { get; set; }
    }
}
