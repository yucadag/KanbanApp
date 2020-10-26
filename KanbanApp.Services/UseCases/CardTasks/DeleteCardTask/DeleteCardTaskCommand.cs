using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;
using MediatR;

namespace KanbanApp.Services.UseCases.CardTasks.DeleteCardTask
{
    public class DeleteCardTaskCommand : IRequest<DeleteCardTaskCommandResult>
    {
        public string CardTaskId { get; set; }
    }
}
