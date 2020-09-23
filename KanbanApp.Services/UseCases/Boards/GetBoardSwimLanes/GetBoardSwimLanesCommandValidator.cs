using FluentValidation;
using System;
using System.Collections.Generic;
using System.Text;

namespace KanbanApp.Services.UseCases.Boards.GetBoardSwimLanes
{
   public class GetBoardSwimLanesCommandValidator : AbstractValidator<GetBoardSwimLanesCommand>
    {
        public GetBoardSwimLanesCommandValidator()
        {
            RuleFor(x => x.BoardId).NotEmpty().WithMessage("Board Id boş olamaz.");
        }
    }

}
