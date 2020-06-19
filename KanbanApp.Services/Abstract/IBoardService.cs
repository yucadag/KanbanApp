using System;
using System.Collections.Generic;
using System.Linq.Expressions;
using KanbanApp.Services.UseCases.Board.CreateBoard;
using KanbanApp.Services.DTO.Core;
using KanbanApp.Services.DTO.Input.BoardServiceInput;
using KanbanApp.Services.DTO.OutPut.BoardServiceOutput;

namespace KanbanApp.Services.Abstract
{
    public interface IBoardService
    {
        ServiceResult<List<BoardGetListOutPut>> GetList(Expression<Func<BoardGetListFilterInput, bool>> filter = null);
        ServiceResult<CreateBoardCommandResult> Add(BoardAddInput input);
        ServiceResult<BoardUpdateOutPut> Update(BoardUpdateInput input);
        ServiceResult<BoardDeleteOutPut> Delete(string boardId);
        ServiceResult<BoardGetOutPut> Get(string boardId);
        ServiceResult<List<GetBoardSwimLanesOutPut>> GetBoardSwimLanes(string boardId);
        //Task<ServiceResult<BoardGetOutPut>> GetAsync(decimal boardId);
        //Task<ServiceResult<List<BoardGetListOutPut>>> GetListAsync(Expression<Func<BoardGetListFilterInput, bool>> filter = null);
        //Task<ServiceResult<BoardAddOutPut>> AddAsync(BoardAddInput board);
        //Task<ServiceResult<BoardUpdateOutPut>> UpdateAsync(BoardUpdateInput input);
        //Task<ServiceResult<BoardDeleteOutPut>> DeleteAsync(decimal boardId);
        //Task<List<SwimLane>> GetBoardSwimLanesAsync(decimal boardId);
    }
}