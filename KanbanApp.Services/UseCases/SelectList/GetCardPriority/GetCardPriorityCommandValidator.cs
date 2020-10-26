using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;
using FluentValidation;

namespace KanbanApp.Services.UseCases.SelectList.GetCardPriority
{
    public class GetCardPriorityCommandValidator : AbstractValidator<GetCardPriorityCommand>
    {
        public GetCardPriorityCommandValidator()
        {

        }
    }
}
