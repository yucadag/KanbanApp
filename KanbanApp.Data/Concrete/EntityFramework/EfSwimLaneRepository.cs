using KanbanApp.Core.DataAccess.EntityFramework;
using KanbanApp.Domain.Data;
using KanbanApp.Domain.Entities;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.Linq;

namespace KanbanApp.Data.Concrete.EntityFramework
{
    public class EfSwimLaneRepository : EfEntityRepositoryBase<SwimLane>, ISwimLaneRepository
    {
        private readonly KanbanContext _context;
        public EfSwimLaneRepository(KanbanContext context) : base(context)
        {
            _context = context;
        }

        public List<Card> GetSwimLaneCards(string SwimLaneId)
        {
            return _context.Cards.Include(c => c.CardPriority).Where(x => x.SwimLaneId == SwimLaneId).ToList();

            //        .Join(_context.Priority, card => card.CardPriority.PriorityId,
            //priority => priority.PriorityId,
            //(card, priority) => new
            //{
            //    PriorityId = priority.PriorityId,
            //    Color = priority.Color
            //}).Where(x => x. == SwimLaneId).ToList();
        }
    }
}
