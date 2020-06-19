using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace KanbanApp.Infrastructure.Logging.Abstract
{
   public interface ILogger
    {
        Task LogEvent();
    }
}
