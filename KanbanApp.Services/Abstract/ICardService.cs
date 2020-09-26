using KanbanApp.Services.DTO.Core;

using KanbanApp.Services.DTO.OutPut.CardServiceOutput;
using KanbanApp.Services.UseCases.Cards.CreateCard;
using KanbanApp.Services.UseCases.Cards.DeleteCard;
using KanbanApp.Services.UseCases.Cards.GetCardDetail;
using KanbanApp.Services.UseCases.Cards.MoveCard;
using KanbanApp.Services.UseCases.Cards.UpdateCard;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace KanbanApp.Services.Abstract
{
    public interface ICardService
    {

        Task<UpdateCardCommandResult> Update(UpdateCardCommand command);
        Task<DeleteCardCommandResult> Delete(DeleteCardCommand command);
        Task<GetCardDetailCommandResult> Get(GetCardDetailCommand command);
        ServiceResult<List<CardAttachmentsGetOutPut>> GetCardAttachments(string cardId);
        Task<MoveCardCommandResult> MoveCard(MoveCardCommand command);
        Task<CreateCardCommandResult> CreateCard(CreateCardCommand command);

    }
}
