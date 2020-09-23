using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;
using FluentValidation;

namespace KanbanApp.Services.UseCases.Cards.GetAttachmentList
{
    public class GetAttachmentListCommandValidator : AbstractValidator<GetAttachmentListCommand>
    {
        public GetAttachmentListCommandValidator()
        {
            RuleFor(x => x.CardId).NotEmpty().WithMessage("Card Id boş olamaz.");
        }
    }
}
