﻿using FluentValidation;
using System;
using System.Collections.Generic;
using System.Text;

namespace KanbanApp.Services.UseCases.Cards.DeleteCard
{
  public  class DeleteCardCommandValidator : AbstractValidator<DeleteCardCommand>
    {
        public DeleteCardCommandValidator()
        {
            RuleFor(x => x.CardId).NotEmpty().WithMessage("Card Id boş olamaz.");
        }
    }
}