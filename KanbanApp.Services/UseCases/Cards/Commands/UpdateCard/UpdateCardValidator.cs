using FluentValidation;

namespace KanbanApp.Services.UseCases.Cards.Commands.UpdateCard
{
    public class UpdateCardValidator : AbstractValidator<UpdateCardCommand>
    {
        public UpdateCardValidator()
        {
            RuleFor(x => x.CardId).NotEmpty().WithMessage("Card Id boş olamaz.");          
        }
    }
}
