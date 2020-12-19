using AutoMapper;
using KanbanApp.Api.Configuration.Extensions;
using KanbanApp.Api.Configuration.Middleware;
using KanbanApp.Data.Concrete.EntityFramework;
using MediatR;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;

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


            services.AddAutoMapper(typeof(Startup));


            services.AddMetrics();
            services.AddMvc(option => option.EnableEndpointRouting = false).SetCompatibilityVersion(CompatibilityVersion.Version_3_0).AddJsonOptions(options =>
            {
                options.JsonSerializerOptions.MaxDepth = 1000;  // or however deep you need
            });
            services.AddDbContext<KanbanContext>(option => option.UseSqlServer(@"Data Source=DESKTOP-BRA5MEI\SQLEXPRESS;Initial Catalog=Kanban;Integrated Security=True", b => b.MigrationsAssembly("KanbanApp.Api")));

            services.AddServiceRegistration();

            services.AddMediatR(typeof(Startup));
            services.AddScoped<IMediator, Mediator>();


            services.AddRepositoryRegistration();

            services.AddCors(c =>
            {
                c.AddPolicy("AllowOrigin", options => options.AllowAnyOrigin());
            });


            services.AddSwaggerDocumentation();


        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
        {

            app.UseDeveloperExceptionPage();


            app.UseCors(builder =>
                  builder.AllowAnyOrigin().AllowAnyMethod().AllowAnyHeader()
                  );

            app.UseMvc();
            app.UseSwaggerDocumentation();
            app.UseStaticFiles();
            app.UseRouting();
            app.UseMiddleware<RequestResponseLoggingMiddleware>();

        }
    }
}