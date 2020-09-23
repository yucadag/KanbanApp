using System;
using System.Collections.Generic;
using System.Text;

namespace KanbanApp.Services.Exceptions
{
  public   class ServiceValidationException:Exception
    {
        public ServiceValidationException(string message) : base(message)
        {
        }

        public ServiceValidationException(string message, Exception innerException) : base(message, innerException)
        {
        }
    }
}
