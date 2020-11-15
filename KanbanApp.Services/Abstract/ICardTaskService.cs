using KanbanApp.Services.UseCases.CardTasks.CreateCardTask;
using KanbanApp.Services.UseCases.CardTasks.DeleteCardTask;
using KanbanApp.Services.UseCases.CardTasks.GetCardTaskDetail;
using KanbanApp.Services.UseCases.CardTasks.UpdateCardTask;
using System.Threading.Tasks;

namespace KanbanApp.Services.Abstract
{
    public interface ICardTaskService
    {
        Task<UpdateCardTaskCommandResult> Update(UpdateCardTaskCommand command);
        Task<DeleteCardTaskCommandResult> Delete(DeleteCardTaskCommand command);
        Task<GetCardTaskDetailCommandResult> Get(GetCardTaskDetailCommand command);
        Task<CreateCardTaskCommandResult> CreateCard(CreateCardTaskCommand command);

    }
}
