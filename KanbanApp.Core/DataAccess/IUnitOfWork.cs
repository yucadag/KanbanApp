using System.Threading.Tasks;

namespace KanbanApp.Core.DataAccess
{
    public interface IUnitOfWork
    {
        Task CompleteAsync();
    }
}