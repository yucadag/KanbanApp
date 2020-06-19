using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Threading.Tasks;
using KanbanApp.Core.DataAccess.EntityFramework;
using KanbanApp.Domain;
using KanbanApp.Domain.Data;
using KanbanApp.Domain.Entities;
using Microsoft.EntityFrameworkCore;

namespace KanbanApp.Data.Concrete.EntityFramework
{
    public class EfSwimLaneRepository : EfEntityRepositoryBase<SwimLane>, ISwimLaneRepository
    {
        private readonly KanbanContext _context;
        public EfSwimLaneRepository(KanbanContext context) : base(context)
        {
            _context = context;
        }

        public  List<Card> GetSwimLaneCards(string SwimLaneId)
        {
            return  _context.Cards.Where(x => x.SwimLaneId == SwimLaneId).ToList();
        }
    }
}
