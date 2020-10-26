using KanbanApp.Services.DTO.Core;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;

namespace KanbanApp.Services.UseCases.CardTasks.DeleteCardTask
{
    public class DeleteCardTaskCommandResult
    {
        public ServiceResult<DeleteCardTaskCommandResultItem> ResultObject { get; set; }
    }

    public class DeleteCardTaskCommandResultItem
    {
        public bool IsSuccess { get; set; }
       
    }
}
