using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;
using FluentValidation;

namespace KanbanApp.Services.UseCases.CardTasks.GetCardTaskDetail
{
    public class GetCardTaskDetailCommandValidator : AbstractValidator<GetCardTaskDetailCommand>
    {
        public GetCardTaskDetailCommandValidator()
        {

        }
    }
}
