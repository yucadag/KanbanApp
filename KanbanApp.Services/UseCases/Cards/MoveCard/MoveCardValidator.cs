using FluentValidation;

namespace KanbanApp.Services.UseCases.Cards.MoveCard
{
    public class MoveCardValidator : AbstractValidator<MoveCardCommand>
    {
        public MoveCardValidator()
        {
            RuleFor(x => x.CardId).NotEmpty().WithMessage("Card Id boş olamaz.");
            RuleFor(x => x.SwimLaneId).NotEmpty().WithMessage("SwimLaneId boş olamaz.");
        }
    }
}
