using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;

using KanbanApp.Data.Concrete.EntityFramework;
using KanbanApp.Domain.Data;
using KanbanApp.Services.Abstract;
using KanbanApp.Services.Concrete;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.HttpsPolicy;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Logging;
using Microsoft.Extensions.Options;
using Swashbuckle.AspNetCore.Swagger;

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
            services.AddMvc().SetCompatibilityVersion(CompatibilityVersion.Version_2_1);
            var optionsBuilder = new DbContextOptionsBuilder<KanbanContext>();
            services.AddDbContext<KanbanContext>(option => option.UseSqlServer(@"Data Source=DESKTOP-BRA5MEI\SQLEXPRESS;Initial Catalog=Kanban;Integrated Security=True", b => b.MigrationsAssembly("KanbanApp.Api")));



            //services.AddScoped<DbContext, KanbanContext>();
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

            services.AddSwaggerGen(g =>
            {
                g.SwaggerDoc("v2", new Info
                {
                    Title = "Kanban API",
                    Version = "2.0",
                    Description = "Get your friends daily quotes, add something beaty words and more...",
                    Contact = new Contact { Name = "Mustafa Yucadağ", Email = "yucadag@gmail.com", Url = "http://www.google.com" }

                });

                g.IncludeXmlComments(Path.ChangeExtension(typeof(Startup).Assembly.Location, ".xml"));
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
                  builder.AllowAnyOrigin().AllowAnyMethod()
                  );


            app.UseMvc();

            app.UseSwagger();
            app.UseSwaggerUI(s =>
            {
                s.SwaggerEndpoint("/swagger/v2/swagger.json", "Kanban API");
            });
        }
    }
}