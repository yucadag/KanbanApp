using KanbanApp.Services.UseCases.Boards.CreateBoard;
using KanbanApp.Services.UseCases.Boards.DeleteBoard;
using KanbanApp.Services.UseCases.Boards.GetBoardDetail;
using KanbanApp.Services.UseCases.Boards.GetBoardList;
using KanbanApp.Services.UseCases.Boards.GetBoardSwimLanes;
using KanbanApp.Services.UseCases.Boards.UpdateBoard;
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