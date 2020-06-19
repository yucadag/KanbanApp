
using KanbanApp.Domain.Data;
using KanbanApp.Domain.Entities;
using KanbanApp.Services.Abstract;
using KanbanApp.Services.DTO.Core;
using KanbanApp.Services.DTO.Input.SwimLaneServiceInput;
using KanbanApp.Services.DTO.OutPut.SwimLaneServiceOutput;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace KanbanApp.Services.Concrete
{
    public class SwimLaneService : ISwimLaneService
    {
        private readonly ISwimLaneRepository _swimLaneRepository;
        public SwimLaneService(ISwimLaneRepository swimLaneRepository)
        {
            _swimLaneRepository = swimLaneRepository;
        }
        public ServiceResult<SwimLaneAddOutPut> Add(SwimLaneAddInput input)
        {
            ServiceResult<SwimLaneAddOutPut> result = new ServiceResult<SwimLaneAddOutPut>();
            result.Success = false;
            result.ServiceMessageList = new List<ServiceMessage>();
            result.Data = new SwimLaneAddOutPut();

            try
            {
                SwimLane swimLane = _swimLaneRepository.Add(new SwimLane() {  BoardId=input.BoardId, Name=input.Name, SwimLaneId=input.SwimLaneId });
                result.Data.BoardId = swimLane.BoardId;
                result.Data.Name = swimLane.Name;
                result.Data.Position = swimLane.Position;
                result.Data.SwimLaneId = swimLane.SwimLaneId;
                result.Success = true;
            }
            catch (Exception ex)
            {
                result.ServiceMessageList.Add(new ServiceMessage()
                {
                    ServiceMessageType = eServiceMessageType.Error,
                    UserFriendlyText = "An error occured",
                    LogText = "SwimLaneService.Add() method error message: " + ex.Message + " Inner Message: " + ex.InnerException
                });
            }

            return result;

           
        }

     

        public ServiceResult<SwimLaneDeleteOutPut>  Delete(string swimLaneId)
        {

            ServiceResult<SwimLaneDeleteOutPut> result = new ServiceResult<SwimLaneDeleteOutPut>();
            result.Success = false;
            result.ServiceMessageList = new List<ServiceMessage>();

            try
            {
                _swimLaneRepository.Delete(new SwimLane { SwimLaneId = swimLaneId });
                result.Success = true;
            }
            catch (Exception ex)
            {
                result.ServiceMessageList.Add(new ServiceMessage()
                {
                    ServiceMessageType = eServiceMessageType.Error,
                    UserFriendlyText = "An error occured",
                    LogText = "SwimLaneService.Delete() method error message: " + ex.Message
                });
            }

            return result; 
        }

       

        public ServiceResult<SwimLaneGetOutPut> Get(string swimLaneId)
        {


            ServiceResult<SwimLaneGetOutPut> result = new ServiceResult<SwimLaneGetOutPut>();
            result.Data = new SwimLaneGetOutPut();
            result.Success = false;
            result.ServiceMessageList = new List<ServiceMessage>();
            try
            {
                SwimLane swimLane = _swimLaneRepository.Get(p => p.SwimLaneId == swimLaneId);
                result.Data = new SwimLaneGetOutPut() { BoardId = swimLane.BoardId, Name = swimLane.Name, SwimLaneId= swimLane.SwimLaneId};
                result.Success = true;
            }
            catch (Exception ex)
            {
                result.ServiceMessageList.Add(new ServiceMessage()
                {
                    ServiceMessageType = eServiceMessageType.Error,
                    UserFriendlyText = "An error occured",
                    LogText = "SwimLaneService.Get() method error message: " + ex.Message
                });
            }

            return result;

        }

     

        public ServiceResult<List<SwimLaneGetListOutPut>> GetList()
        {
            ServiceResult<List<SwimLaneGetListOutPut>> result = new ServiceResult<List<SwimLaneGetListOutPut>>() { Data = new List<SwimLaneGetListOutPut>(), Success = false, ServiceMessageList = new List<ServiceMessage>() };


            try
            {
                List<SwimLane> swimLaneList = _swimLaneRepository.GetList();
                result.Data = swimLaneList.Select(x => new SwimLaneGetListOutPut()
                {
                    //do your variable mapping here 
                    BoardId = x.BoardId,
                    SwimLaneId = x.SwimLaneId,
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
                    LogText = "SwimLaneService.GetList() method error message: " + ex.Message,
                    SystemException = ex
                });
            }

            return result;

           
        }

     

        public ServiceResult<GetSwimLaneCardsOutPut>  GetSwimLaneCards(string SwimLaneId)
        {
            ServiceResult<GetSwimLaneCardsOutPut> result = new ServiceResult<GetSwimLaneCardsOutPut>();
            result.Success = false;
            result.ServiceMessageList = new List<ServiceMessage>();
            result.Data = new GetSwimLaneCardsOutPut();

            try
            {
               List<Card> cardList = _swimLaneRepository.GetSwimLaneCards(SwimLaneId);
                result.Data.CardList = cardList;
            
                result.Success = true;
            }
            catch (Exception ex)
            {
                result.ServiceMessageList.Add(new ServiceMessage()
                {
                    ServiceMessageType = eServiceMessageType.Error,
                    UserFriendlyText = "An error occured",
                    LogText = "SwimLaneService.GetSwimLaneCards() method error message: " + ex.Message + " Inner Message: " + ex.InnerException
                });
            }

            return result;


            
        }

        public ServiceResult<SwimLaneUpdateOutPut> Update(SwimLaneUpdateInput input)
        {
           

            ServiceResult<SwimLaneUpdateOutPut> result = new ServiceResult<SwimLaneUpdateOutPut>();
            result.Success = false;
            result.Data = new SwimLaneUpdateOutPut();
            result.ServiceMessageList = new List<ServiceMessage>();


            try
            {
                _swimLaneRepository.Update(new SwimLane() { SwimLaneId = input.SwimLaneId });
                result.Data = new SwimLaneUpdateOutPut() { SwimLaneId = input.SwimLaneId };
                result.Success = true;
            }
            catch (Exception ex)
            {
                result.ServiceMessageList.Add(new ServiceMessage()
                {
                    ServiceMessageType = eServiceMessageType.Error,
                    UserFriendlyText = "An error occured",
                    LogText = "SwimLaneService.Update() method error message: " + ex.Message
                });
            }

            return result; 
           

        }

        //public Task UpdateAsync(SwimLane swimLane)
        //{
        //    return _swimLaneRepository.UpdateAsync(swimLane);
        //}

       
    }
}
