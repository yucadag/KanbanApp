using KanbanApp.Core.DataAccess;
using KanbanApp.Domain.Entities;
using System.Collections.Generic;

namespace KanbanApp.Domain.Data
{
    public interface ISwimLaneRepository : IEntityRepository<SwimLane>
    {
        List<Card> GetSwimLaneCards(string SwimLaneId);
    }
}
