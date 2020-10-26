using KanbanApp.Services.Abstract;
using KanbanApp.Services.UseCases.SelectList;
using KanbanApp.Services.UseCases.SelectList.GetCardPriority;
using MediatR;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace KanbanApp.Services.Concrete
{
    public class PriorityService : IPriorityService
    {
        private readonly IMediator _mediator;

        public PriorityService(IMediator mediator)
        {
            _mediator = mediator;
        }

        public Task<GetCardPriorityCommandResult> GetCardPriority(GetCardPriorityCommand command)
        {
            Task<GetCardPriorityCommandResult> result;

            result = _mediator.Send(command);

            return result;
        }
    }
}
