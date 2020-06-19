using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using KanbanApp.Core.DataAccess.EntityFramework;
using KanbanApp.Domain.Data;
using KanbanApp.Domain.Entities;
using Microsoft.EntityFrameworkCore;

namespace KanbanApp.Data.Concrete.EntityFramework
{
    public class EfBoardRepository: EfEntityRepositoryBase<Board>, IBoardRepository
    {
        private readonly KanbanContext context;

        public EfBoardRepository(KanbanContext context):base(context)
        {
            this.context = context;
        }

        public  List<SwimLane> GetBoardSwimLanes(string boardId)
        {
            return context.SwimLanes.Where(x => x.BoardId == boardId).ToList();
        }

        public async Task<List<SwimLane>> GetBoardSwimLanesAsync(string boardId)
        { 
            return await context.SwimLanes.Where(x => x.BoardId == boardId).ToListAsync();
        }

        //public async Task<List<SwimLane>> GetBoardSwimLanesAsync(decimal boardId)
        //{
        //    return await context.SwimLanes.Where(x => x.BoardId == boardId).ToListAsync();
        //}
        /*
                public void Add(Board board) 
                {
                    context.Boards.Add(board);
                }

                public void Remove(Board board)
                {
                    context.Remove(board);
                }
                */
        /*
                public async Task<QueryResult<Board>> GetVehicles(BoardQuery queryObj)
                {
                    var result = new QueryResult<Board>();

                    var query = context.Boards
                        .Include(v => v.Model)
                        .ThenInclude(m => m.Make)
                        .Include(v => v.Features)
                        .ThenInclude(vf => vf.Feature)
                        .AsQueryable();

                    if (queryObj.MakeId.HasValue)
                        query = query.Where(v => v.Model.MakeId == queryObj.MakeId.Value);

                    if (queryObj.ModelId.HasValue)
                        query = query.Where(v => v.ModelId == queryObj.ModelId.Value);

                    var columnsMap = new Dictionary<string, Expression<Func<Vehicle, object>>>()
                    {
                        ["make"] = v => v.Model.Make.Name,
                        ["model"] = v => v.Model.Name,
                        ["contactName"] = v => v.ContactName
                    };

                    query = query.ApplyOrdering(queryObj, columnsMap);

                    result.TotalItems = await query.CountAsync();

                    query = query.ApplyPaging(queryObj);

                    result.Items = await query.ToListAsync();

                    return result; 
                }
        */
    }
}