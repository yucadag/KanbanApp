using MediatR;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace KanbanApp.Services.UseCases.Cards.CreateCard
{
    public sealed class CreateCardCommandHandler : IRequestHandler<CreateCardCommand, CreateCardCommandResult>
    {
        public Task<CreateCardCommandResult> Handle(CreateCardCommand request, CancellationToken cancellationToken)
        {
            throw new NotImplementedException();
        }
    }
}
