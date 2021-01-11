using AutoMapper;
using KanbanApp.Api.Models.Cards.Input;
using KanbanApp.Api.Models.Cards.Output;
using KanbanApp.Services.UseCases.Cards.Commands.CreateCard;
using KanbanApp.Services.UseCases.Cards.Queries.GetAttachmentList;
using KanbanApp.Services.UseCases.Cards.Commands.MoveCard;

namespace KanbanApp.Api.Mapping
{
    public class CardProfile : Profile
    {
        public CardProfile()
        {
            CreateMap<CardCreateInput, CreateCardCommand>();
            CreateMap<CreateCardCommandResultItem, CardCreateOutput>();
            CreateMap<CardMoveInput, MoveCardCommand>();
            CreateMap<MoveCardCommandResultItem, CardMoveOutput>();
            CreateMap<GetAttachmentListCommandResultItem, CardGetAttachmentListOutput>();
        }
    }
}
