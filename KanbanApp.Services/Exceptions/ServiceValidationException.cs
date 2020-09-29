using System;

namespace KanbanApp.Services.Exceptions
{
    [Serializable]
    public class ServiceValidationException : Exception
    {
        public ServiceValidationException(string message) : base(message)
        {
        }

        public ServiceValidationException(string message, Exception innerException) : base(message, innerException)
        {
        }
    }
}
