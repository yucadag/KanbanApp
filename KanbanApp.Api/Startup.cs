using KanbanApp.Data.Concrete.EntityFramework;
using KanbanApp.Domain.Data;
using KanbanApp.Services.Abstract;
using KanbanApp.Services.Concrete;
using KanbanApp.Services.UseCases.Boards.CreateBoard;
using KanbanApp.Services.UseCases.Boards.GetBoardDetail;
using KanbanApp.Services.UseCases.Boards.GetBoardList;
using KanbanApp.Services.UseCases.Boards.GetBoardSwimLanes;
using KanbanApp.Services.UseCases.Cards.CreateCard;
using KanbanApp.Services.UseCases.Cards.GetCardDetail;
using KanbanApp.Services.UseCases.Cards.MoveCard;
using KanbanApp.Services.UseCases.SwimLanes.GetSwimLaneCards;
using MediatR;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.OpenApi.Models;
using System;

namespace KanbanApp.Api
{
    public class Startup
    {
        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        public IConfiguration Configuration { get; }

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {
            services.AddMvc(option => option.EnableEndpointRouting = false).SetCompatibilityVersion(CompatibilityVersion.Version_2_1).AddJsonOptions(options =>
            {
                options.JsonSerializerOptions.MaxDepth = 1000;  // or however deep you need
            });

            services.AddDbContext<KanbanContext>(option => option.UseSqlServer(@"Data Source=DESKTOP-BRA5MEI\SQLEXPRESS;Initial Catalog=Kanban;Integrated Security=True", b => b.MigrationsAssembly("KanbanApp.Api")));

            services.AddScoped<IRequestHandler<GetBoardSwimLanesCommand, GetBoardSwimLanesCommandResult>, GetBoardSwimLanesCommandHandler>();
            services.AddScoped<IRequestHandler<GetSwimLaneCardsCommand, GetSwimLaneCardsCommandResult>, GetSwimLaneCardsCommandHandler>();
            services.AddScoped<IRequestHandler<MoveCardCommand, MoveCardCommandResult>, MoveCardCommandHandler>();
            services.AddScoped<IRequestHandler<CreateCardCommand, CreateCardCommandResult>, CreateCardCommandHandler>();
            services.AddScoped<IRequestHandler<CreateBoardCommand, CreateBoardCommandResult>, CreateBoardCommandHandler>();
            services.AddScoped<IRequestHandler<GetBoardDetailCommand, GetBoardDetailCommandResult>, GetBoardDetailCommandHandler>();
            services.AddScoped<IRequestHandler<GetBoardListCommand, GetBoardListCommandResult>, GetBoardListCommandHandler>();



            services.AddScoped<IRequestHandler<GetCardDetailCommand, GetCardDetailCommandResult>, GetCardDetailCommandHandler>();

            services.AddMediatR(typeof(Startup));
            services.AddScoped<IMediator, Mediator>();


            services.AddTransient<IBoardRepository, EfBoardRepository>();
            services.AddTransient<IBoardService, BoardService>();

            services.AddTransient<ISwimLaneRepository, EfSwimLaneRepository>();
            services.AddTransient<ISwimLaneService, SwimLaneService>();

            services.AddTransient<ICardRepository, EfCardRepository>();
            services.AddTransient<ICardService, CardService>();

            services.AddCors(c =>
            {
                c.AddPolicy("AllowOrigin", options => options.AllowAnyOrigin());
            });

            // Register the Swagger generator, defining 1 or more Swagger documents
            services.AddSwaggerGen(c =>
            {
                c.SwaggerDoc("v1", new OpenApiInfo
                {
                    Version = "v1",
                    Title = "Kanban API",
                    Description = "A simple example ASP.NET Core Web API",
                    TermsOfService = new Uri("https://example.com/terms"),
                    Contact = new OpenApiContact
                    {
                        Name = "Mustafa YUCADAĞ",
                        Email = "yucadag@gmail.com",
                        Url = new Uri("https://www.zedotech.com"),
                    },
                    License = new OpenApiLicense
                    {
                        Name = "Use under LICX",
                        Url = new Uri("https://example.com/license"),
                    }
                });
            });
        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IHostingEnvironment env)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
            }
            else
            {
                app.UseHsts();
            }

            app.UseCors(builder =>
                  builder.AllowAnyOrigin().AllowAnyMethod().AllowAnyHeader()
                  );


            app.UseMvc();

            // Enable middleware to serve generated Swagger as a JSON endpoint.
            app.UseSwagger();
            // Enable middleware to serve swagger-ui (HTML, JS, CSS, etc.),
            // specifying the Swagger JSON endpoint.
            app.UseSwaggerUI(c =>
            {
                c.SwaggerEndpoint("/swagger/v1/swagger.json", "Kanban API V1");
            });

            app.UseStaticFiles();
            app.UseRouting();

        }
    }
}