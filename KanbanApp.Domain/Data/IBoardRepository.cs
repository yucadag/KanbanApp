﻿using KanbanApp.Core.DataAccess;
using KanbanApp.Domain.Entities;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace KanbanApp.Domain.Data
{

    public interface IBoardRepository : IEntityRepository<Board>
    {
        List<SwimLane> GetBoardSwimLanes(string boardId);
        Task<List<SwimLane>> GetBoardSwimLanesAsync(string boardId);
    }
}
