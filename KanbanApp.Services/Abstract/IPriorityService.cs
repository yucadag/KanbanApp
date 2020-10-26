using KanbanApp.Services.UseCases.SelectList.GetCardPriority;
using System.Threading.Tasks;

namespace KanbanApp.Services.Abstract
{
    public interface IPriorityService
    {
        Task<GetCardPriorityCommandResult> GetCardPriority(GetCardPriorityCommand command);
    }
}
