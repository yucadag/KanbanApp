using KanbanApp.Core.DataAccess.EntityFramework;
using KanbanApp.Domain.Data;
using KanbanApp.Domain.Entities;

namespace KanbanApp.Data.Concrete.EntityFramework
{

    public class EfCardTaskRepository : EfEntityRepositoryBase<CardTask>, ICardTaskRepository
    {
        private readonly KanbanContext _context;

        public EfCardTaskRepository(KanbanContext context) : base(context)
        {
            _context = context;
        }
    }
}
