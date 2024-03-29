﻿using AutoMapper;
using KanbanApp.Api.Models.SwimLanes.Input;
using KanbanApp.Api.Models.SwimLanes.Output;
using KanbanApp.Services.UseCases.SwimLanes.Commands.CreateSwimlane;
using KanbanApp.Services.UseCases.SwimLanes.Commands.MoveSwimlane;
using KanbanApp.Services.UseCases.SwimLanes.Queries.GetSwimLaneCards;
using KanbanApp.Services.UseCases.SwimLanes.Queries.GetSwimLaneCardsWithPaging;
using KanbanApp.Services.UseCases.SwimLanes.Queries.GetSwimlaneDetail;

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
            CreateMap<SwimLaneCardsWithPagingInput, SwimLaneCardsWithPagingOutput>();
            CreateMap<SwimLaneCardsWithPagingInput, GetSwimLaneCardsWithPagingCommand>();
            CreateMap<GetSwimLaneCardsWithPagingCommandResultItem, SwimLaneCardsWithPagingOutput>();
        }
    }
}
