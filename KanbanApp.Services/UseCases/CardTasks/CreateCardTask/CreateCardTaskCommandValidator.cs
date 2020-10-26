using FluentValidation;

namespace KanbanApp.Services.UseCases.CardTasks.CreateCardTask
{
    public class CreateCardTaskCommandValidator : AbstractValidator<CreateCardTaskCommand>
    {
        public CreateCardTaskCommandValidator()
        {

        }
    }
}
