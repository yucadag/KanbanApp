using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;
using FluentValidation;

namespace KanbanApp.Services.UseCases.CardTasks.UpdateCardTask
{
    public class UpdateCardTaskCommandValidator : AbstractValidator<UpdateCardTaskCommand>
    {
        public UpdateCardTaskCommandValidator()
        {

        }
    }
}
