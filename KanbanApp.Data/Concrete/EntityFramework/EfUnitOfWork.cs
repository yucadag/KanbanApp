using System.Threading.Tasks;
using KanbanApp.Core.DataAccess;

namespace KanbanApp.Data.Concrete.EntityFramework
{
    public class EfUnitOfWork:IUnitOfWork
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