using KanbanApp.Services.UseCases.SelectList.Queries.GetCardTypes;
using System.Threading.Tasks;

namespace KanbanApp.Services.Abstract
{
    public interface ICardTypeService
    {
        Task<GetCardTypesCommandResult> GetCardTypes(GetCardTypesCommand command);
    }
}
