using KanbanApp.Core.DataAccess;
using System.Threading.Tasks;

namespace KanbanApp.Data.Concrete.EntityFramework
{
    public class EfUnitOfWork : IUnitOfWork
    {
        private readonly KanbanContext context;

        public EfUnitOfWork(KanbanContext context)
        {
            this.context = context;
        }

        public async Task CompleteAsync()
        {
            await context.SaveChangesAsync();
        }
    }
}