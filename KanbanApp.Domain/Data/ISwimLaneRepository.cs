using KanbanApp.Core.DataAccess;
using KanbanApp.Domain.Entities;
using System;
using System.Collections.Generic;
using System.Text;

namespace KanbanApp.Domain.Data
{
    public interface ISwimLaneRepository : IEntityRepository<SwimLane>
    {
        List<Card> GetSwimLaneCards(string SwimLaneId);
    }
}
