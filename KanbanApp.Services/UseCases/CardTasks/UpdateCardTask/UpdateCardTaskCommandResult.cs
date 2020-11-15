using KanbanApp.Services.DTO.Core;
using System;

namespace KanbanApp.Services.UseCases.CardTasks.UpdateCardTask
{
    public class UpdateCardTaskCommandResult
    {
        public ServiceResult<UpdateCardTaskCommandResultItem> ResultObject { get; set; }
    }

    public class UpdateCardTaskCommandResultItem
    {
        public string CardTaskId { get; set; }
        public string CardId { get; set; }
        public string Text { get; set; }
        public int CardTaskState { get; set; }
        public DateTime DueDate { get; set; }
        public float Estimate { get; set; }
    }
}
