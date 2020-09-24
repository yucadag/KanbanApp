// Skipping function ConfigureServices(none), it contains poisonous unsupported syntaxes

func @_KanbanApp.Web.UI.Startup.Configure$Microsoft.AspNetCore.Builder.IApplicationBuilder.Microsoft.AspNetCore.Hosting.IHostingEnvironment$(none, none) -> () loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Startup.cs" :30 :8) {
^entry (%_app : none, %_env : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Startup.cs" :30 :30)
cbde.store %_app, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Startup.cs" :30 :30)
%1 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Startup.cs" :30 :55)
cbde.store %_env, %1 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Startup.cs" :30 :55)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Startup.cs" :34 :12) // Not a variable of known type: app
%3 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Startup.cs" :34 :12) // app.UseDeveloperExceptionPage() (InvocationExpression)
%4 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Startup.cs" :37 :12) // Not a variable of known type: app
%5 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Startup.cs" :37 :12) // app.UseMvc() (InvocationExpression)
%6 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Startup.cs" :38 :12) // Not a variable of known type: app
%7 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Startup.cs" :38 :12) // app.UseDefaultFiles() (InvocationExpression)
%8 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Startup.cs" :39 :12) // Not a variable of known type: app
%9 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Startup.cs" :39 :12) // app.UseStaticFiles() (InvocationExpression)
%10 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Startup.cs" :41 :12) // Not a variable of known type: app
%11 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Startup.cs" :41 :12) // app.UseSession() (InvocationExpression)
%12 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Startup.cs" :42 :12) // Not a variable of known type: app
%13 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Startup.cs" :42 :12) // app.UseMvcWithDefaultRoute() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
