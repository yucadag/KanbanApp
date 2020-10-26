using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;
using MediatR;

namespace KanbanApp.Services.UseCases.CardTasks.CreateCardTask
{
    public class CreateCardTaskCommand : IRequest<CreateCardTaskCommandResult>
    {
        public string CardTaskId { get; set; }
        public string CardId { get; set; }
        public string Text { get; set; }
        public int CardTaskState { get; set; }
        public DateTime DueDate { get; set; }
        public float Estimate { get; set; }
    }
}
