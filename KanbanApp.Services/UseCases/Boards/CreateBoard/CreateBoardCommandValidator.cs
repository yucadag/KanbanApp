using FluentValidation;

namespace KanbanApp.Services.UseCases.Boards.CreateBoard
{
    public class CreateBoardCommandValidator : AbstractValidator<CreateBoardCommand>
    {
        public CreateBoardCommandValidator()
        {
            RuleFor(x => x.BoardId).NotEmpty().WithMessage("Board Id boş olamaz.");
            RuleFor(x => x.Name).NotEmpty().WithMessage("Name boş olamaz.");
            RuleFor(x => x.Description).NotEmpty().WithMessage("Description boş olamaz.");
        }
    }
}
