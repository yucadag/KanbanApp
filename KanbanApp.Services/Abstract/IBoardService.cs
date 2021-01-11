using KanbanApp.Services.UseCases.Boards.Commands.CreateBoard;
using KanbanApp.Services.UseCases.Boards.Commands.DeleteBoard;
using KanbanApp.Services.UseCases.Boards.Commands.UpdateBoard;
using KanbanApp.Services.UseCases.Boards.Queries.GetBoardDetail;
using KanbanApp.Services.UseCases.Boards.Queries.GetBoardList;
using KanbanApp.Services.UseCases.Boards.Queries.GetBoardSwimLanes;
using System.Threading.Tasks;

namespace KanbanApp.Services.Abstract
{
    public interface IBoardService
    {
        Task<GetBoardListCommandResult> GetList(GetBoardListCommand command);
        Task<CreateBoardCommandResult> Add(CreateBoardCommand command);
        Task<UpdateBoardCommandResult> Update(UpdateBoardCommand command);
        Task<DeleteBoardCommandResult> Delete(DeleteBoardCommand command);
        Task<GetBoardDetailCommandResult> Get(GetBoardDetailCommand command);
        Task<GetBoardSwimLanesCommandResult> GetBoardSwimLanes(GetBoardSwimLanesCommand command);
    }
}