using KanbanApp.Services.DTO.Core;
using System.Collections.Generic;

namespace KanbanApp.Services.UseCases.Cards.GetAttachmentList
{
    public class GetAttachmentListCommandResult
    {
        public ServiceResult<List<GetAttachmentListCommandResultItem>> ResultObject { get; set; }
    }

    public class GetAttachmentListCommandResultItem
    {

        public string CardId { get; set; }
        public string AttachmentName { get; set; }
        public string CardAttachmentId { get; set; }
        public string AttachmentDownloadLink { get; set; }
    }
}
