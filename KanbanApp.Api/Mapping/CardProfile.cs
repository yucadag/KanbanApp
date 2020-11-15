using AutoMapper;
using KanbanApp.Api.Models.Cards.Input;
using KanbanApp.Api.Models.Cards.Output;
using KanbanApp.Services.UseCases.Cards.CreateCard;
using KanbanApp.Services.UseCases.Cards.MoveCard;

namespace KanbanApp.Api.Mapping
{
    public class CardProfile : Profile
    {
        public CardProfile()
        {
            CreateMap<CardCreateInput, CreateCardCommand>();
            CreateMap<CreateCardCommandResultItem, CardCreateOutput>();
            CreateMap<CardMoveInput, MoveCardCommand>();
            CreateMap<MoveCardCommandResultItem,CardMoveOutput>();
        }
    }
}
