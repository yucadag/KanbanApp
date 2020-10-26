using KanbanApp.Services.DTO.Core;
using System;


namespace KanbanApp.Services.UseCases.CardTasks.GetCardTaskDetail
{
    public class GetCardTaskDetailCommandResult
    {
        public ServiceResult<GetCardTaskDetailCommandResultItem> ResultObject { get; set; }
    }

    public class GetCardTaskDetailCommandResultItem
    {
        public string CardTaskId { get; set; }
        public string CardId { get; set; }
        public string Text { get; set; }
        public int CardTaskState { get; set; }
        public DateTime DueDate { get; set; }
        public float Estimate { get; set; }
    }
}
