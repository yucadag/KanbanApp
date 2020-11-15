using AutoMapper;
using KanbanApp.Api.Models.Boards.Input;
using KanbanApp.Api.Models.Boards.Output;
using KanbanApp.Services.UseCases.Boards.CreateBoard;
using KanbanApp.Services.UseCases.Boards.DeleteBoard;
using KanbanApp.Services.UseCases.Boards.GetBoardDetail;
using KanbanApp.Services.UseCases.Boards.GetBoardList;
using KanbanApp.Services.UseCases.Boards.GetBoardSwimLanes;
using KanbanApp.Services.UseCases.Boards.UpdateBoard;


namespace KanbanApp.Api.Mapping
{
    public class BoardProfile : Profile
    {
        public BoardProfile()
        {
            CreateMap<BoardGetInput, GetBoardDetailCommand>();
            CreateMap<BoardAddInput, CreateBoardCommand>();
            CreateMap<CreateBoardCommandResultItem, BoardAddOutput>();
            CreateMap<BoardUpdateInput, UpdateBoardCommand>();
            CreateMap<BoardDeleteInput, DeleteBoardCommand>();
            CreateMap<GetBoardSwimLanesCommandResultItem, BoardSwimlanesOutput>();
            CreateMap<GetBoardListCommandResultItem, BoardGetOutput>();
            CreateMap<UpdateBoardCommandResultItem, BoardUpdateOutput>();


        }
    }
}
