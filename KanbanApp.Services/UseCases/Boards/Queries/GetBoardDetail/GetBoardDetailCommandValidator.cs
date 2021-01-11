using FluentValidation;

namespace KanbanApp.Services.UseCases.Boards.Queries.GetBoardDetail
{
    public class GetBoardDetailCommandValidator : AbstractValidator<GetBoardDetailCommand>
    {
        public GetBoardDetailCommandValidator()
        {
            RuleFor(x => x.BoardId).NotEmpty().WithMessage("Board Id boş olamaz.");
        }
    }
}
