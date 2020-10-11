using KanbanApp.Services.UseCases.Attachment.CreateAttachment;
using System.Threading.Tasks;

namespace KanbanApp.Services.Abstract
{
    public interface IAttachmentService
    {
        Task<CreateAttachmentCommandResult> CreateAttachment(CreateAttachmentCommand command);

    }
}
