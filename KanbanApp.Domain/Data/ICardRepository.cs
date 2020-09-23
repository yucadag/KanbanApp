using KanbanApp.Core.DataAccess;
using KanbanApp.Domain.Entities;
using System.Collections.Generic;

namespace KanbanApp.Domain.Data
{
    public interface ICardRepository : IEntityRepository<Card>
    {
        List<CardAttachment> GetCardAttachments(string CardId);
    }
}
