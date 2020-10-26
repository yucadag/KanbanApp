using KanbanApp.Core.DataAccess.EntityFramework;
using KanbanApp.Domain.Data;
using KanbanApp.Domain.Entities;
using System;
using System.Collections.Generic;
using System.Text;

namespace KanbanApp.Data.Concrete.EntityFramework
{

    public class EfCardTaskRepository : EfEntityRepositoryBase<CardTask>, ICardTaskRepository
    {
        private readonly KanbanContext context;

        public EfCardTaskRepository(KanbanContext context) : base(context)
        {
            this.context = context;
        }        
    }
}
