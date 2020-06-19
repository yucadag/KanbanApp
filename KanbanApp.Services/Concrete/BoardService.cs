using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using KanbanApp.Domain.Data;
using KanbanApp.Domain.Entities;
using KanbanApp.Services.UseCases.Board.CreateBoard;
using KanbanApp.Services.Abstract;
using KanbanApp.Services.DTO.Core;
using KanbanApp.Services.DTO.Input.BoardServiceInput;
using KanbanApp.Services.DTO.OutPut.BoardServiceOutput;

namespace KanbanApp.Services.Concrete
{
    public class BoardService : IBoardService
    {
        private readonly IBoardRepository _boardRepository;

        public BoardService(IBoardRepository boardRepository)
        {
            _boardRepository = boardRepository;
        }

        public ServiceResult<List<BoardGetListOutPut>> GetList(Expression<Func<BoardGetListFilterInput, bool>> filter = null)
        {
            ServiceResult<List<BoardGetListOutPut>> result = new ServiceResult<List<BoardGetListOutPut>>() { Data = new List<BoardGetListOutPut>(), Success = false, ServiceMessageList = new List<ServiceMessage>() };


            try
            {
                List<Board> boardList = _boardRepository.GetList();
                result.Data = boardList.Select(x => new BoardGetListOutPut()
                {
                    //do your variable mapping here 
                    BoardId = x.BoardId,
                    Description = x.Description,
                    Name = x.Name
                }).ToList();



                result.Success = true;
            }
            catch (Exception ex)
            {
                result.ServiceMessageList.Add(new ServiceMessage()
                {
                    ServiceMessageType = eServiceMessageType.Error,
                    UserFriendlyText = "An error occured",
                    LogText = "BoardService.GetList() method error message: " + ex.Message,
                    SystemException = ex
                });
            }

            return result;
        }
        //TODO input nesnesini AutoMapper ile maple manuel iþlem yapma
        public ServiceResult<CreateBoardCommandResult> Add(BoardAddInput input)
        {
            ServiceResult<CreateBoardCommandResult> result = new ServiceResult<CreateBoardCommandResult>();
            result.Success = false;
            result.ServiceMessageList = new List<ServiceMessage>();
            result.Data = new CreateBoardCommandResult();

            try
            {
                Board board = _boardRepository.Add(new Board() { BoardId = input.BoardId, Name = input.Name, OwnerId = input.OwnerId, Description = input.Description });
                result.Data.BoardId = board.BoardId;
                result.Data.Name = board.Name;
                result.Data.Description = board.Description;
                result.Data.OwnerId = board.OwnerId;

                result.Success = true;
            }
            catch (Exception ex)
            {
                result.ServiceMessageList.Add(new ServiceMessage()
                {
                    ServiceMessageType = eServiceMessageType.Error,
                    UserFriendlyText = "An error occured",
                    LogText = "BoardService.Add() method error message: " + ex.Message + " Inner Message: " + ex.InnerException
                });
            }

            return result;
        }

        //TODO input nesnesini AutoMapper ile maple manuel iþlem yapma
        public ServiceResult<BoardUpdateOutPut> Update(BoardUpdateInput input)
        {
            ServiceResult<BoardUpdateOutPut> result = new ServiceResult<BoardUpdateOutPut>();
            result.Success = false;
            result.Data = new BoardUpdateOutPut();
            result.ServiceMessageList = new List<ServiceMessage>();


            try
            {
                _boardRepository.Update(new Board() { BoardId = input.BoardId, Name = input.Name, Description = input.Description, OwnerId = input.OwnerId });
                result.Data = new BoardUpdateOutPut() { Name = input.Name };
                result.Success = true;
            }
            catch (Exception ex)
            {
                result.ServiceMessageList.Add(new ServiceMessage()
                {
                    ServiceMessageType = eServiceMessageType.Error,
                    UserFriendlyText = "An error occured",
                    LogText = "BoardService.Update() method error message: " + ex.Message
                });
            }

            return result;
        }

        public ServiceResult<BoardDeleteOutPut> Delete(string boardId)
        {
            ServiceResult<BoardDeleteOutPut> result = new ServiceResult<BoardDeleteOutPut>();
            result.Success = false;
            result.ServiceMessageList = new List<ServiceMessage>();

            try
            {
                _boardRepository.Delete(new Board { BoardId = boardId });
                result.Success = true;
            }
            catch (Exception ex)
            {
                result.ServiceMessageList.Add(new ServiceMessage()
                {
                    ServiceMessageType = eServiceMessageType.Error,
                    UserFriendlyText = "An error occured",
                    LogText = "BoardService.Delete() method error message: " + ex.Message
                });
            }

            return result;
        }

        public ServiceResult<BoardGetOutPut> Get(string boardId)
        {
            ServiceResult<BoardGetOutPut> result = new ServiceResult<BoardGetOutPut>();
            result.Data = new BoardGetOutPut();
            result.Success = false;
            result.ServiceMessageList = new List<ServiceMessage>();
            try
            {
                Board board = _boardRepository.Get(p => p.BoardId == boardId);
                result.Data = new BoardGetOutPut() { BoardId = board.BoardId, Name = board.Name, Description = board.Description };
                result.Success = true;
            }
            catch (Exception ex)
            {
                result.ServiceMessageList.Add(new ServiceMessage()
                {
                    ServiceMessageType = eServiceMessageType.Error,
                    UserFriendlyText = "An error occured",
                    LogText = "BoardService.Get() method error message: " + ex.Message
                });
            }

            return result;
        }

        public ServiceResult<List<GetBoardSwimLanesOutPut>> GetBoardSwimLanes(string boardId)
        {
            ServiceResult<List<GetBoardSwimLanesOutPut>> result = new ServiceResult<List<GetBoardSwimLanesOutPut>>();
            result.Success = false;
            result.ServiceMessageList = new List<ServiceMessage>();
            result.Data = new List<GetBoardSwimLanesOutPut>();

            try
            {
                List<SwimLane> boardList = _boardRepository.GetBoardSwimLanes(boardId);
                result.Data = boardList.Select(x => new GetBoardSwimLanesOutPut()
                {
                    //do your variable mapping here 
                    BoardId = x.BoardId,
                    Name = x.Name,
                    Position = x.Position
                }).ToList();

                result.Success = true;
            }
            catch (Exception ex) 
            {
                result.ServiceMessageList.Add(new ServiceMessage()
                {
                    ServiceMessageType = eServiceMessageType.Error,
                    UserFriendlyText = "An error occured",
                    LogText = "BoardService.GetBoardSwimLanes() method error message: " + ex.Message,
                    SystemException = ex
                });
            }

            return result;
        }

        //public Task<ServiceResult<BoardGetOutPut>> GetAsync(decimal boardId)
        //{
        //    Task<ServiceResult<BoardGetOutPut>> result;
        //    result.Result.Data = new ServiceResult<BoardGetOutPut>();
        //    result.Result.Success = false;
        //    result.Result.ServiceMessageList = new List<ServiceMessage>();
        //    try
        //    {
        //        Task<Board> board = _boardRepository.GetAsync(p => p.BoardId == boardId);
        //        result.Result.Data = new BoardGetOutPut() { Name = board.Result.Name, Description = board.Result.Description };
        //        result.Result.Success = true;
        //    }
        //    catch (Exception ex)
        //    {
        //        result.Result.ServiceMessageList.Add(new ServiceMessage()
        //        {
        //            ServiceMessageType = eServiceMessageType.Error,
        //            UserFriendlyText = "An error occured",
        //            LogText = "BoardService.Get() method error message: " + ex.Message
        //        });
        //    }

        //    return result;
        //}

        //public Task<List<Board>> GetListAsync(Expression<Func<Board, bool>> filter = null)
        //{
        //    return _boardRepository.GetListAsync(filter);
        //}

        //public Task<Board> AddAsync(Board board)
        //{
        //    return _boardRepository.AddAsync(board);

        //}

        //public Task UpdateAsync(Board board)
        //{
        //    return _boardRepository.UpdateAsync(board);
        //}

        //public Task DeleteAsync(Board board)
        //{
        //    return _boardRepository.DeleteAsync(new Board { BoardId = board.BoardId });
        //}

        //public Task<List<SwimLane>> GetBoardSwimLanesAsync(decimal boardId)
        //{
        //    return _boardRepository.GetBoardSwimLanesAsync(boardId);
        //}


    }
}