func @_KanbanApp.Web.UI.Startup.ConfigureServices$Microsoft.Extensions.DependencyInjection.IServiceCollection$(none) -> () loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Startup.cs" :16 :8) {
^entry (%_services : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Startup.cs" :16 :38)
cbde.store %_services, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Startup.cs" :16 :38)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Startup.cs" :18 :12) // Not a variable of known type: services
%2 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Startup.cs" :18 :12) // services.AddMvc() (InvocationExpression)
%3 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Startup.cs" :19 :12) // Not a variable of known type: services
%4 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Startup.cs" :19 :12) // services.AddSession() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_KanbanApp.Web.UI.Startup.Configure$Microsoft.AspNetCore.Builder.IApplicationBuilder.Microsoft.AspNetCore.Hosting.IHostingEnvironment$(none, none) -> () loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Startup.cs" :34 :8) {
^entry (%_app : none, %_env : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Startup.cs" :34 :30)
cbde.store %_app, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Startup.cs" :34 :30)
%1 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Startup.cs" :34 :55)
cbde.store %_env, %1 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Startup.cs" :34 :55)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Startup.cs" :38 :16) // Not a variable of known type: app
%3 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Startup.cs" :38 :16) // app.UseDeveloperExceptionPage() (InvocationExpression)
%4 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Startup.cs" :41 :12) // Not a variable of known type: app
%5 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Startup.cs" :41 :12) // app.UseMvc() (InvocationExpression)
%6 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Startup.cs" :42 :12) // Not a variable of known type: app
%7 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Startup.cs" :42 :12) // app.UseDefaultFiles() (InvocationExpression)
%8 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Startup.cs" :43 :12) // Not a variable of known type: app
%9 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Startup.cs" :43 :12) // app.UseStaticFiles() (InvocationExpression)
%10 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Startup.cs" :45 :12) // Not a variable of known type: app
%11 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Startup.cs" :45 :12) // app.UseSession() (InvocationExpression)
%12 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Startup.cs" :46 :12) // Not a variable of known type: app
%13 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Startup.cs" :46 :12) // app.UseMvcWithDefaultRoute() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
