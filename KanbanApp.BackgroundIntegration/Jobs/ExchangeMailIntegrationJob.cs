using FluentScheduler;
using System;

namespace KanbanApp.BackgroundIntegration.Jobs
{
    public class ExchangeMailIntegrationJob : IJob
    {
        public void Execute()
        {
            const string serviceMessage = "This is a job to get done on a schedule...";
            var formattedMessage = $"[{DateTime.Now:G}] : {serviceMessage}";
            Console.WriteLine(formattedMessage);
            //  Logger.Write(formattedMessage);
        }
    }
}
