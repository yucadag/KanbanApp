using MediatR;

namespace KanbanApp.Services.UseCases.Cards.Queries.GetAttachmentList
{
    public class GetAttachmentListCommand : IRequest<GetAttachmentListCommandResult>
    {
        public string CardId { get; set; }
    }
}
