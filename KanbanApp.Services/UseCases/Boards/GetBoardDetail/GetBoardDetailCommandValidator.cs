using FluentValidation;
using System;
using System.Collections.Generic;
using System.Text;

namespace KanbanApp.Services.UseCases.Boards.GetBoardDetail
{
  public  class GetBoardDetailCommandValidator : AbstractValidator<GetBoardDetailCommand>
    {
        public GetBoardDetailCommandValidator()
        {
            RuleFor(x => x.BoardId).NotEmpty().WithMessage("Board Id boş olamaz.");
        }
    }
}
