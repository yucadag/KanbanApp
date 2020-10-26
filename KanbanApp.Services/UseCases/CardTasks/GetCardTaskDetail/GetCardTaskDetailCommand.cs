using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;
using MediatR;

namespace KanbanApp.Services.UseCases.CardTasks.GetCardTaskDetail
{
    public class GetCardTaskDetailCommand : IRequest<GetCardTaskDetailCommandResult>
    {
        public string CardTaskId { get; set; }
    }
}
