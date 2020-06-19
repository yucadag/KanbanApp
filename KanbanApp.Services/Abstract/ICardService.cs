using KanbanApp.Domain.Entities;
using KanbanApp.Services.DTO.Core;
using KanbanApp.Services.DTO.Input.CardServiceInput;
using KanbanApp.Services.DTO.OutPut.CardServiceOutput;
using System;
using System.Collections.Generic;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace KanbanApp.Services.Abstract
{
   public interface ICardService
    {

        ServiceResult<List<CardGetListOutPut>> GetList(Expression<Func<CardGetListFilterInput, bool>> filter = null);
        ServiceResult<CardAddOutPut> Add(CardAddInput input);
        ServiceResult<CardUpdateOutPut> Update(CardUpdateInput input);
        ServiceResult<CardDeleteOutPut> Delete(string cardId);
        ServiceResult<CardGetOutPut> Get(string cardId);
        ServiceResult<List<CardAttachmentsGetOutPut>> GetCardAttachments(string cardId);
    }
}
