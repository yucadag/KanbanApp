using System.Collections.Generic;

namespace KanbanApp.Services.DTO.Core
{
    public class ServiceResult<T>
    {
        public T Data { get; set; }
        public List<ServiceMessage> ServiceMessageList { get; set; }
        public bool Success { get; set; }
        public List<ServiceMessage> GetErrorMessageList()
        {
            return ServiceMessageList.FindAll(x => x.ServiceMessageType == eServiceMessageType.Error);
        }
        public List<ServiceMessage> GetSuccessMessageList()
        {
            return ServiceMessageList.FindAll(x => x.ServiceMessageType == eServiceMessageType.Success);
        }

        public List<ServiceMessage> GetWarningMessageList()
        {
            return ServiceMessageList.FindAll(x => x.ServiceMessageType == eServiceMessageType.Warning);
        }

    }
}
