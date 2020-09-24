﻿using FluentValidation;

namespace KanbanApp.Services.UseCases.Cards.CreateCard
{
    public class CreateCardCommandValidator : AbstractValidator<CreateCardCommand>
    {
        public CreateCardCommandValidator()
        {
            RuleFor(x => x.CardId).NotEmpty().WithMessage("Card Id boş olamaz.");
            RuleFor(x => x.Name).NotEmpty().WithMessage("Name boş olamaz.");
            RuleFor(x => x.Description).NotEmpty().WithMessage("Description boş olamaz.");
        }
    }
}