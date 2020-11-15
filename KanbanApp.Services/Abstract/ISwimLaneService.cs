
using KanbanApp.Services.UseCases.SwimLanes.CreateSwimlane;
using KanbanApp.Services.UseCases.SwimLanes.GetSwimLaneCards;
using KanbanApp.Services.UseCases.SwimLanes.GetSwimlaneDetail;
using KanbanApp.Services.UseCases.SwimLanes.MoveSwimlane;
using System.Threading.Tasks;

namespace KanbanApp.Services.Abstract
{
    public interface ISwimLaneService
    {
        Task<GetSwimlaneDetailCommandResult> Get(GetSwimlaneDetailCommand command);
        Task<CreateSwimlaneCommandResult> Add(CreateSwimlaneCommand command);
        Task<MoveSwimlaneCommandResult> Move(MoveSwimlaneCommand command);
        Task<GetSwimLaneCardsCommandResult> GetSwimLanesCards(GetSwimLaneCardsCommand command);
    }
}
