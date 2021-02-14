using KanbanApp.Services.UseCases.Cards.Commands.CreateCard;
using KanbanApp.Services.UseCases.Cards.Commands.DeleteCard;
using KanbanApp.Services.UseCases.Cards.Commands.MoveCard;
using KanbanApp.Services.UseCases.Cards.Commands.UpdateCard;
using KanbanApp.Services.UseCases.Cards.Queries.GetAttachmentList;
using KanbanApp.Services.UseCases.Cards.Queries.GetCardDetail;
using System.Threading.Tasks;

namespace KanbanApp.Services.Abstract
{
    public interface ICardService
    {

        Task<UpdateCardCommandResult> Update(UpdateCardCommand command);
        Task<DeleteCardCommandResult> Delete(DeleteCardCommand command);
        Task<GetCardDetailCommandResult> Get(GetCardDetailCommand command);
        Task<GetAttachmentListCommandResult> GetAttachmentList(GetAttachmentListCommand command);
        Task<MoveCardCommandResult> MoveCard(MoveCardCommand command);
        Task<CreateCardCommandResult> CreateCard(CreateCardCommand command);

    }
}
