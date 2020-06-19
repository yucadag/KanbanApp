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
   public class EfCardRepository : EfEntityRepositoryBase<Card>, ICardRepository
    {
        private readonly KanbanContext context;

        public EfCardRepository(KanbanContext context) : base(context)
        {
            this.context = context;
        }

        public  List<CardAttachment> GetCardAttachments(string CardId)
        {
            return  context.CardAttachments.Where(x => x.CardId == CardId).ToList();
        }


    }
}
