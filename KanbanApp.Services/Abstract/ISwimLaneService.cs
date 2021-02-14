
using KanbanApp.Services.UseCases.SwimLanes.Commands.CreateSwimlane;
using KanbanApp.Services.UseCases.SwimLanes.Commands.MoveSwimlane;
using KanbanApp.Services.UseCases.SwimLanes.Queries.GetSwimLaneCards;
using KanbanApp.Services.UseCases.SwimLanes.Queries.GetSwimLaneCardsWithPaging;
using KanbanApp.Services.UseCases.SwimLanes.Queries.GetSwimlaneDetail;
using System.Threading.Tasks;

namespace KanbanApp.Services.Abstract
{
    public interface ISwimLaneService
    {
        Task<GetSwimlaneDetailCommandResult> Get(GetSwimlaneDetailCommand command);
        Task<CreateSwimlaneCommandResult> Add(CreateSwimlaneCommand command);
        Task<MoveSwimlaneCommandResult> Move(MoveSwimlaneCommand command);
        Task<GetSwimLaneCardsCommandResult> GetSwimLanesCards(GetSwimLaneCardsCommand command);
        Task<GetSwimLaneCardsWithPagingCommandResult> GetSwimLanesCardsWithPaging(GetSwimLaneCardsWithPagingCommand command);
    }
}
