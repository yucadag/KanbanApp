using KanbanApp.Core.DataAccess;
using KanbanApp.Domain.Entities;
using System;
using System.Collections.Generic;
using System.Linq.Expressions;

namespace KanbanApp.Domain.Data
{
    public interface ICardRepository : IEntityRepository<Card>
    {
        List<CardAttachment> GetCardAttachments(string CardId);

        Card GetCardWithdetail(Expression<Func<Card, bool>> filter = null);
       
    }
}
