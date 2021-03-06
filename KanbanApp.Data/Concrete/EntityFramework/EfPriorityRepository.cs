﻿using KanbanApp.Core.DataAccess.EntityFramework;
using KanbanApp.Domain.Data;
using KanbanApp.Domain.Entities;

namespace KanbanApp.Data.Concrete.EntityFramework
{
    public class EfPriorityRepository : EfEntityRepositoryBase<Priority>, IPriorityRepository
    {
        private readonly KanbanContext context;

        public EfPriorityRepository(KanbanContext context) : base(context)
        {
            this.context = context;
        }
    }
}
