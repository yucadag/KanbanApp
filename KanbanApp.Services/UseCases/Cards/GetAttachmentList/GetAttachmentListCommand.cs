using MediatR;

namespace KanbanApp.Services.UseCases.Cards.GetAttachmentList
{
    public class GetAttachmentListCommand : IRequest<GetAttachmentListCommandResult>
    {
        public string CardId { get; set; }
    }
}
