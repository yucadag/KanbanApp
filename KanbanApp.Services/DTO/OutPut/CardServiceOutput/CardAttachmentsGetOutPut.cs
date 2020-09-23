namespace KanbanApp.Services.DTO.OutPut.CardServiceOutput
{
    public class CardAttachmentsGetOutPut
    {
        public string CardId { get; internal set; }
        public string CardAttachmentId { get; internal set; }
        public string AttachmentName { get; internal set; }
        public string AttachmentDownloadLink { get; internal set; }
    }
}
