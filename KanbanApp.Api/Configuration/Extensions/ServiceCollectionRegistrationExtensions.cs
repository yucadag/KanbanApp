using FluentValidation;
using KanbanApp.Services.PipelineBehaviors;
using KanbanApp.Services.UseCases.Boards.CreateBoard;
using KanbanApp.Services.UseCases.Boards.GetBoardDetail;
using KanbanApp.Services.UseCases.Boards.GetBoardList;
using KanbanApp.Services.UseCases.Boards.GetBoardSwimLanes;
using KanbanApp.Services.UseCases.Cards.CreateCard;
using KanbanApp.Services.UseCases.Cards.DeleteCard;
using KanbanApp.Services.UseCases.Cards.GetCardDetail;
using KanbanApp.Services.UseCases.Cards.MoveCard;
using KanbanApp.Services.UseCases.SelectList.GetCardPriority;
using KanbanApp.Services.UseCases.SwimLanes.GetSwimLaneCards;
using MediatR;
using Microsoft.Extensions.DependencyInjection;

namespace KanbanApp.Api.Configuration.Extensions
{
    public static class ServiceCollectionRegistrationExtensions
    {

        public static IServiceCollection AddServiceRegistration(this IServiceCollection services)
        {
            services.AddScoped<IRequestHandler<GetBoardSwimLanesCommand, GetBoardSwimLanesCommandResult>, GetBoardSwimLanesCommandHandler>();
            services.AddScoped<IRequestHandler<GetSwimLaneCardsCommand, GetSwimLaneCardsCommandResult>, GetSwimLaneCardsCommandHandler>();
            services.AddScoped<IRequestHandler<MoveCardCommand, MoveCardCommandResult>, MoveCardCommandHandler>();
            services.AddScoped<IRequestHandler<CreateCardCommand, CreateCardCommandResult>, CreateCardCommandHandler>();
            services.AddScoped<IRequestHandler<DeleteCardCommand, DeleteCardCommandResult>, DeleteCardCommandHandler>();
            services.AddScoped<IRequestHandler<CreateBoardCommand, CreateBoardCommandResult>, CreateBoardCommandHandler>();
            services.AddScoped<IRequestHandler<GetBoardDetailCommand, GetBoardDetailCommandResult>, GetBoardDetailCommandHandler>();
            services.AddScoped<IRequestHandler<GetBoardListCommand, GetBoardListCommandResult>, GetBoardListCommandHandler>();
            services.AddScoped<IRequestHandler<GetCardPriorityCommand, GetCardPriorityCommandResult>, GetCardPriorityCommandHandler>();



            services.AddScoped<IRequestHandler<GetCardDetailCommand, GetCardDetailCommandResult>, GetCardDetailCommandHandler>();

         

            //services.AddTransient(typeof(IPipelineBehavior<,>), typeof(LoggingBehavior<,>));
           // services.AddTransient(typeof(IPipelineBehavior<,>), typeof(BusinessValidationPipeline<,>));
            //services.AddTransient(typeof(IPipelineBehavior<,>), typeof(ValidationBehaviour<,>));
            //services.AddTransient(typeof(IPipelineBehavior<,>), typeof(CachingBehavior<,>));
            //services.AddTransient(typeof(IPipelineBehavior<,>), typeof(FallbackBehavior<,>));
            //services.AddTransient(typeof(IPipelineBehavior<,>), typeof(RetryBehavior<,>));


            return services;
        }
    }
}
