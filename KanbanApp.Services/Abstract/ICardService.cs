using KanbanApp.Services.UseCases.Cards.CreateCard;
using KanbanApp.Services.UseCases.Cards.DeleteCard;
using KanbanApp.Services.UseCases.Cards.GetAttachmentList;
using KanbanApp.Services.UseCases.Cards.GetCardDetail;
using KanbanApp.Services.UseCases.Cards.MoveCard;
using KanbanApp.Services.UseCases.Cards.UpdateCard;
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
