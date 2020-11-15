using FluentValidation;

namespace KanbanApp.Services.UseCases.CardTasks.DeleteCardTask
{
    public class DeleteCardTaskCommandValidator : AbstractValidator<DeleteCardTaskCommand>
    {
        public DeleteCardTaskCommandValidator()
        {
            RuleFor(x => x.CardTaskId).NotEmpty().WithMessage("Card Task Id boş olamaz.");
        }
    }
}
