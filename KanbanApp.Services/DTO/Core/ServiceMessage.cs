using System;
using System.Collections.Generic;

namespace KanbanApp.Services.DTO.Core
{
    public class ServiceMessage
    {
        public eServiceMessageType ServiceMessageType { get; set; }
        public string UserFriendlyText { get; set; }
        public string LogText { get; set; }
        public Exception SystemException { get; set; }
        public Dictionary<string, string> InputParameterList { get; set; }
    }

    public enum eServiceMessageType
    {
        Error,
        Warning,
        Success
    }
}
