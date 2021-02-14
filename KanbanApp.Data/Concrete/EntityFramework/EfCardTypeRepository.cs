using KanbanApp.Core.DataAccess.EntityFramework;
using KanbanApp.Domain.Data;
using KanbanApp.Domain.Entities;

namespace KanbanApp.Data.Concrete.EntityFramework
{
    public class EfCardTypeRepository : EfEntityRepositoryBase<CardType>, ICardTypeRepository
    {
        private readonly KanbanContext context;

        public EfCardTypeRepository(KanbanContext context) : base(context)
        {
            this.context = context;
        }
    }
   
}
