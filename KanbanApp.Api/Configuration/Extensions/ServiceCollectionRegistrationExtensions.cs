using KanbanApp.Services.UseCases.Boards.Commands.CreateBoard;
using KanbanApp.Services.UseCases.Boards.Commands.UpdateBoard;
using KanbanApp.Services.UseCases.Boards.Queries.GetBoardDetail;
using KanbanApp.Services.UseCases.Boards.Queries.GetBoardList;
using KanbanApp.Services.UseCases.Boards.Queries.GetBoardSwimLanes;
using KanbanApp.Services.UseCases.Cards.Commands.CreateCard;
using KanbanApp.Services.UseCases.Cards.Commands.DeleteCard;
using KanbanApp.Services.UseCases.Cards.Commands.MoveCard;
using KanbanApp.Services.UseCases.Cards.Queries.GetCardDetail;
using KanbanApp.Services.UseCases.SelectList.GetCardPriority;
using KanbanApp.Services.UseCases.SelectList.Queries.GetCardTypes;
using KanbanApp.Services.UseCases.SwimLanes.Queries.GetSwimLaneCards;
using KanbanApp.Services.UseCases.SwimLanes.Queries.GetSwimLaneCardsWithPaging;
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
            services.AddScoped<IRequestHandler<GetSwimLaneCardsWithPagingCommand, GetSwimLaneCardsWithPagingCommandResult>, GetSwimLaneCardsWithPagingCommandHandler>();
            services.AddScoped<IRequestHandler<MoveCardCommand, MoveCardCommandResult>, MoveCardCommandHandler>();
            services.AddScoped<IRequestHandler<CreateCardCommand, CreateCardCommandResult>, CreateCardCommandHandler>();
            services.AddScoped<IRequestHandler<DeleteCardCommand, DeleteCardCommandResult>, DeleteCardCommandHandler>();
            services.AddScoped<IRequestHandler<CreateBoardCommand, CreateBoardCommandResult>, CreateBoardCommandHandler>();
            services.AddScoped<IRequestHandler<GetBoardDetailCommand, GetBoardDetailCommandResult>, GetBoardDetailCommandHandler>();
            services.AddScoped<IRequestHandler<GetBoardListCommand, GetBoardListCommandResult>, GetBoardListCommandHandler>();
            services.AddScoped<IRequestHandler<GetCardPriorityCommand, GetCardPriorityCommandResult>, GetCardPriorityCommandHandler>();
            services.AddScoped<IRequestHandler<GetCardTypesCommand, GetCardTypesCommandResult>, GetCardTypesCommandHandler>();

            services.AddScoped<IRequestHandler<UpdateBoardCommand, UpdateBoardCommandResult>, UpdateBoardCommandHandler>();
                

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
