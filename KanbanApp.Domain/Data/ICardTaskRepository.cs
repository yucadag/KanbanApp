using KanbanApp.Core.DataAccess;
using KanbanApp.Domain.Entities;
using System;
using System.Collections.Generic;
using System.Text;

namespace KanbanApp.Domain.Data
{
  
    public interface ICardTaskRepository : IEntityRepository<CardTask>
    {
      
    }
}
