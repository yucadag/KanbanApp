using KanbanApp.Core.DataAccess.EntityFramework;
using KanbanApp.Core.Paging;
using KanbanApp.Domain.Data;
using KanbanApp.Domain.Entities;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace KanbanApp.Data.Concrete.EntityFramework
{
    public class EfSwimLaneRepository : EfEntityRepositoryBase<SwimLane>, ISwimLaneRepository
    {
        private readonly KanbanContext _context;
        protected readonly DbSet<SwimLane> dbSet;
        public EfSwimLaneRepository(KanbanContext context) : base(context)
        {
            _context = context;
            dbSet = context.Set<SwimLane>();
        }

        public List<Card> GetSwimLaneCards(string SwimLaneId)
        {
            List<Card> cardList;

            try
            {
                cardList = _context.Cards.Include(c => c.CardPriority).Where(x => x.SwimLaneId == SwimLaneId).ToList();
            }
            catch (System.Exception ex)
            {

                throw ex;
            }

            return cardList;

            //        .Join(_context.Priority, card => card.CardPriority.PriorityId,
            //priority => priority.PriorityId,
            //(card, priority) => new
            //{
            //    PriorityId = priority.PriorityId,
            //    Color = priority.Color
            //}).Where(x => x. == SwimLaneId).ToList();
        }

        public PagedList<Card> GetSwimLaneCardsWithPaging(string SwimLaneId, PagingParameterBase pagingParameter)
        {



            try
            {
                int count = _context.Cards.Include(c => c.CardPriority).Where(x => x.SwimLaneId == SwimLaneId).Count();
                PagedList<Card> cardList = PagedList<Card>.ToPagedList(_context.Cards.Include(c => c.CardPriority).Where(x => x.SwimLaneId == SwimLaneId).OrderBy(on => on.CardId).Skip((pagingParameter.PageNumber - 1) * pagingParameter.PageSize)
        .Take(pagingParameter.PageSize), pagingParameter.PageNumber,
        pagingParameter.PageSize, count);

                return cardList;

            }
            catch (System.Exception ex)
            {

                throw ex;
            }





        }

        public Task<int> CountAsync()
        {
            return dbSet.CountAsync();
        }
    }
}
