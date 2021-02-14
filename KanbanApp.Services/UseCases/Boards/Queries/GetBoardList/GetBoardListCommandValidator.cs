using FluentValidation;

namespace KanbanApp.Services.UseCases.Boards.Queries.GetBoardList
{
    public class GetBoardListCommandValidator : AbstractValidator<GetBoardListCommand>
    {
        public GetBoardListCommandValidator()
        {
             //RuleFor(x => x.BoardId).NotEmpty().WithMessage("Board Id boş olamaz.");
        }
    }

}
