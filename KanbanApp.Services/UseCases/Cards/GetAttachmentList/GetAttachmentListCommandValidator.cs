using FluentValidation;

namespace KanbanApp.Services.UseCases.Cards.GetAttachmentList
{
    public class GetAttachmentListCommandValidator : AbstractValidator<GetAttachmentListCommand>
    {
        public GetAttachmentListCommandValidator()
        {
            RuleFor(x => x.CardId).NotEmpty().WithMessage("Card Id boş olamaz.");
        }
    }
}
