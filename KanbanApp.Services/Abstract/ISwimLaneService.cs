using KanbanApp.Domain.Entities;
using KanbanApp.Services.DTO.Core;
using KanbanApp.Services.DTO.Input.SwimLaneServiceInput;
using KanbanApp.Services.DTO.OutPut.SwimLaneServiceOutput;
using System;
using System.Collections.Generic;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace KanbanApp.Services.Abstract
{
   public interface ISwimLaneService
    {
        ServiceResult<SwimLaneGetOutPut> Get(string swimLaneId);
        ServiceResult<List<SwimLaneGetListOutPut>> GetList();
        ServiceResult<SwimLaneAddOutPut> Add(SwimLaneAddInput input);
        ServiceResult<SwimLaneUpdateOutPut> Update(SwimLaneUpdateInput input);
   
        ServiceResult<SwimLaneDeleteOutPut> Delete(string swimLaneId);
     
        ServiceResult<GetSwimLaneCardsOutPut> GetSwimLaneCards(string swimLaneId);
        //void Delete(SwimLane swimLane);
        //SwimLane Get(string swimLaneId);
        //Task<SwimLane> GetAsync(string swimLaneId);
        //Task<List<SwimLane>> GetListAsync(Expression<Func<SwimLane, bool>> filter = null);
        //Task<SwimLane> AddAsync(SwimLane swimLane);
        //Task UpdateAsync(SwimLane swimLane);
        //Task DeleteAsync(SwimLane swimLane);
        //Task<List<Card>> GetSwimLaneCardsAsync(string SwimLaneId);

    }
}
