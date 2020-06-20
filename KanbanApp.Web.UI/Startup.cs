using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.DependencyInjection;

namespace KanbanApp.Web.UI
{
    public class Startup
    {
        // This method gets called by the runtime. Use this method to add services to the container.
        // For more information on how to configure your application, visit https://go.microsoft.com/fwlink/?LinkID=398940
        public void ConfigureServices(IServiceCollection services)
        {
            services.AddMvc();
            services.AddSession();
            //services.AddSwaggerGen(g=>{
            //    g.SwaggerDoc("v2",new Info
            //    {
            //        Title="DailyQuote CRUD API",
            //        Version="2.0",
            //        Description="Get your friends daily quotes, add something beaty words and more...",
            //        Contact=new Contact { Name = "Mustafa", Email = "yucadag@gmail.com", Url = "http://www.google.com"}                    
            //    });
 
            //    g.IncludeXmlComments(Path.ChangeExtension(typeof(Startup).Assembly.Location, ".xml"));
            //});
        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IHostingEnvironment env)
        {
            //if (env.IsDevelopment())
            //{
                app.UseDeveloperExceptionPage();
            //}

            app.UseMvc();
            app.UseDefaultFiles();
            app.UseStaticFiles();
         
            app.UseSession();
            app.UseMvcWithDefaultRoute();
            
            //app.UseSwagger();
            //app.UseSwaggerUI(s=>{
            //    s.SwaggerEndpoint("/swagger/v2/swagger.json","Daily Quote");
            //});
            // app.Run(async (context) => { await context.Response.WriteAsync("Hello World!"); });
        }
    }
}