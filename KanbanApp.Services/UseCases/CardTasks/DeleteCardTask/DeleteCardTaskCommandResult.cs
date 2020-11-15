using KanbanApp.Services.DTO.Core;

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
