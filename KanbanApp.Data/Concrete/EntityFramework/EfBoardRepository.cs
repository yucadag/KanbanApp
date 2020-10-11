using KanbanApp.Core.DataAccess.EntityFramework;
using KanbanApp.Domain.Data;
using KanbanApp.Domain.Entities;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace KanbanApp.Data.Concrete.EntityFramework
{
    public class EfBoardRepository : EfEntityRepositoryBase<Board>, IBoardRepository
    {
        private readonly KanbanContext context;

        public EfBoardRepository(KanbanContext context) : base(context)
        {
            this.context = context;
        }

        public List<SwimLane> GetBoardSwimLanes(string boardId)
        {
            return context.SwimLanes.Where(x => x.BoardId == boardId).OrderBy(x => x.Position).ToList();
        }

        public async Task<List<SwimLane>> GetBoardSwimLanesAsync(string boardId)
        {
            return await context.SwimLanes.Where(x => x.BoardId == boardId).ToListAsync();
        }
    }
}