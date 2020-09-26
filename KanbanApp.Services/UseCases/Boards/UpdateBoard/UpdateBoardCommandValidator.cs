﻿using FluentValidation;

namespace KanbanApp.Services.UseCases.Boards.UpdateBoard
{
    public class UpdateBoardCommandValidator : AbstractValidator<UpdateBoardCommand>
    {
        public UpdateBoardCommandValidator()
        {
            RuleFor(x => x.BoardId).NotEmpty().WithMessage("Board Id boş olamaz.");
        }
    }
}
