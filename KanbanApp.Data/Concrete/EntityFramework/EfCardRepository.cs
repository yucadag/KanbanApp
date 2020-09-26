using KanbanApp.Core.DataAccess.EntityFramework;
using KanbanApp.Domain.Data;
using KanbanApp.Domain.Entities;
using System.Collections.Generic;
using System.Linq;

namespace KanbanApp.Data.Concrete.EntityFramework
{
    public class EfCardRepository : EfEntityRepositoryBase<Card>, ICardRepository
    {
        private readonly KanbanContext context;

        public EfCardRepository(KanbanContext context) : base(context)
        {
            this.context = context;
        }

        public List<CardAttachment> GetCardAttachments(string CardId)
        {
            return context.CardAttachments.Where(x => x.CardId == CardId).ToList();
        }
    }
}
