using AutoMapper;
using KanbanApp.Api.Models.Boards.Input;
using KanbanApp.Api.Models.Boards.Output;
using KanbanApp.Services.UseCases.Boards.Commands.CreateBoard;
using KanbanApp.Services.UseCases.Boards.Commands.DeleteBoard;
using KanbanApp.Services.UseCases.Boards.Commands.UpdateBoard;
using KanbanApp.Services.UseCases.Boards.Queries.GetBoardDetail;
using KanbanApp.Services.UseCases.Boards.Queries.GetBoardList;
using KanbanApp.Services.UseCases.Boards.Queries.GetBoardSwimLanes;

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
