using FluentValidation;

namespace KanbanApp.Services.UseCases.Boards.DeleteBoard
{
    public class DeleteBoardCommandValidator : AbstractValidator<DeleteBoardCommand>
    {
        public DeleteBoardCommandValidator()
        {
            RuleFor(x => x.BoardId).NotEmpty().WithMessage("Board Id boş olamaz.");
        }
    }
}
