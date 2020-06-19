using System;
using System.Collections.Generic;
using System.Text;
using FluentValidation;

namespace KanbanApp.Services.UseCases.Board.CreateBoard
{
    public class CreateBoardValidator : AbstractValidator<CreateBoardCommand>
    {
        public CreateBoardValidator()
        {
            RuleFor(x => x.OwnerId).NotEmpty();
            RuleFor(x => x.Name).NotEmpty().WithMessage("Please specify a first name");
        }
    }
}
