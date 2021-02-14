using KanbanApp.Core.DataAccess;
using KanbanApp.Domain.Entities;

namespace KanbanApp.Domain.Data
{
    public interface ICardTypeRepository : IEntityRepository<CardType>
    {
    }

}
