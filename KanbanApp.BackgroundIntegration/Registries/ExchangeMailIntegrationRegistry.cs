using FluentScheduler;
using KanbanApp.BackgroundIntegration.Jobs;

namespace KanbanApp.BackgroundIntegration.Registries
{
    public class ExchangeMailIntegrationRegistry : Registry
    {
        public ExchangeMailIntegrationRegistry()
        {
            Schedule<ExchangeMailIntegrationJob>().ToRunNow()
                .AndEvery(3).Seconds();
        }
    }
}
