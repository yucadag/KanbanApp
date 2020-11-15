using AutoMapper;
using KanbanApp.Api.Models.SwimLanes.Input;
using KanbanApp.Api.Models.SwimLanes.Output;
using KanbanApp.Services.UseCases.SwimLanes.CreateSwimlane;
using KanbanApp.Services.UseCases.SwimLanes.GetSwimLaneCards;
using KanbanApp.Services.UseCases.SwimLanes.GetSwimlaneDetail;
using KanbanApp.Services.UseCases.SwimLanes.MoveSwimlane;

namespace KanbanApp.Api.Mapping
{
    public class SwimLaneProfile : Profile
    {
        public SwimLaneProfile()
        {
            CreateMap<GetSwimLaneCardsCommandResultItem, SwimlaneCardsOutput>();
            CreateMap<SwimLaneCardsInput, GetSwimLaneCardsCommand>();
            CreateMap<SwimLaneMoveInput, MoveSwimlaneCommand>();
            CreateMap<SwimLaneGetInput, GetSwimlaneDetailCommand>();
            CreateMap<GetSwimlaneDetailCommandResultItem, SwimLaneGetOutput>();
            CreateMap<SwimLaneAddInput, CreateSwimlaneCommand>();
            CreateMap<CreateSwimlaneCommandResultItem, SwimLaneAddOutput>();
            CreateMap<MoveSwimlaneCommandResultItem, SwimLaneMoveOutput>();
        }
    }
}
