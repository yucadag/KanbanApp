using KanbanApp.Data.Concrete.EntityFramework;
using KanbanApp.Domain.Data;
using KanbanApp.Services.Abstract;
using KanbanApp.Services.Concrete;
using Microsoft.Extensions.DependencyInjection;

namespace KanbanApp.Api.Configuration.Extensions
{
    public static class RepositoryCollectionRegistrationExtensions
    {
        public static IServiceCollection AddRepositoryRegistration(this IServiceCollection services)
        {
            services.AddTransient<IBoardRepository, EfBoardRepository>();
            services.AddTransient<IBoardService, BoardService>();

            services.AddTransient<ISwimLaneRepository, EfSwimLaneRepository>();
            services.AddTransient<ISwimLaneService, SwimLaneService>();

            services.AddTransient<ICardRepository, EfCardRepository>();
            services.AddTransient<ICardService, CardService>();

            services.AddTransient<IPriorityRepository, EfPriorityRepository>();
            services.AddTransient<IPriorityService, PriorityService>();

            return services;
        }

    }
}
