using KanbanApp.Core.DataAccess;
using KanbanApp.Core.Paging;
using KanbanApp.Domain.Entities;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace KanbanApp.Domain.Data
{
    public interface ISwimLaneRepository : IEntityRepository<SwimLane>
    {
        List<Card> GetSwimLaneCards(string SwimLaneId);
        PagedList<Card> GetSwimLaneCardsWithPaging(string SwimLaneId, PagingParameterBase pagingParameter);
        Task<int> CountAsync();
    }
}
