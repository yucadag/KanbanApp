// Skipping function Main(none), it contains poisonous unsupported syntaxes

func @_KanbanApp.Api.Program.ConfigureLogging$$() -> () loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Program.cs" :35 :8) {
^entry :
br ^0

^0: // SimpleBlock
// Entity from another assembly: Environment
%0 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Program.cs" :37 :65) // "ASPNETCORE_ENVIRONMENT" (StringLiteralExpression)
%1 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Program.cs" :37 :30) // Environment.GetEnvironmentVariable("ASPNETCORE_ENVIRONMENT") (InvocationExpression)
%3 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Program.cs" :38 :32) // new ConfigurationBuilder() (ObjectCreationExpression)
%4 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Program.cs" :39 :29) // "appsettings.json" (StringLiteralExpression)
%5 = constant 0 : i1 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Program.cs" :39 :59) // false
%6 = constant 1 : i1 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Program.cs" :39 :82) // true
%7 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Program.cs" :38 :32) // new ConfigurationBuilder()                  .AddJsonFile("appsettings.json", optional: false, reloadOnChange: true) (InvocationExpression)
// Entity from another assembly: Environment
%8 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Program.cs" :41 :70) // "ASPNETCORE_ENVIRONMENT" (StringLiteralExpression)
%9 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Program.cs" :41 :35) // Environment.GetEnvironmentVariable("ASPNETCORE_ENVIRONMENT") (InvocationExpression)
%10 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Program.cs" :41 :20) // $"appsettings.{Environment.GetEnvironmentVariable("ASPNETCORE_ENVIRONMENT")}.json" (InterpolatedStringExpression)
%11 = constant 1 : i1 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Program.cs" :42 :30) // true
%12 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Program.cs" :38 :32) // new ConfigurationBuilder()                  .AddJsonFile("appsettings.json", optional: false, reloadOnChange: true)                  .AddJsonFile(                      $"appsettings.{Environment.GetEnvironmentVariable("ASPNETCORE_ENVIRONMENT")}.json",                      optional: true) (InvocationExpression)
%13 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Program.cs" :38 :32) // new ConfigurationBuilder()                  .AddJsonFile("appsettings.json", optional: false, reloadOnChange: true)                  .AddJsonFile(                      $"appsettings.{Environment.GetEnvironmentVariable("ASPNETCORE_ENVIRONMENT")}.json",                      optional: true)                  .Build() (InvocationExpression)
// Entity from another assembly: Log
%15 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Program.cs" :45 :12) // Log.Logger (SimpleMemberAccessExpression)
%16 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Program.cs" :45 :25) // new LoggerConfiguration() (ObjectCreationExpression)
%17 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Program.cs" :45 :25) // new LoggerConfiguration()                  .Enrich (SimpleMemberAccessExpression)
%18 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Program.cs" :45 :25) // new LoggerConfiguration()                  .Enrich.FromLogContext() (InvocationExpression)
%19 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Program.cs" :45 :25) // new LoggerConfiguration()                  .Enrich.FromLogContext()                  .Enrich (SimpleMemberAccessExpression)
%20 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Program.cs" :45 :25) // new LoggerConfiguration()                  .Enrich.FromLogContext()                  .Enrich.WithExceptionDetails() (InvocationExpression)
%21 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Program.cs" :45 :25) // new LoggerConfiguration()                  .Enrich.FromLogContext()                  .Enrich.WithExceptionDetails()                  .Enrich (SimpleMemberAccessExpression)
%22 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Program.cs" :45 :25) // new LoggerConfiguration()                  .Enrich.FromLogContext()                  .Enrich.WithExceptionDetails()                  .Enrich.WithMachineName() (InvocationExpression)
%23 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Program.cs" :45 :25) // new LoggerConfiguration()                  .Enrich.FromLogContext()                  .Enrich.WithExceptionDetails()                  .Enrich.WithMachineName()                  .WriteTo (SimpleMemberAccessExpression)
%24 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Program.cs" :45 :25) // new LoggerConfiguration()                  .Enrich.FromLogContext()                  .Enrich.WithExceptionDetails()                  .Enrich.WithMachineName()                  .WriteTo.Debug() (InvocationExpression)
%25 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Program.cs" :45 :25) // new LoggerConfiguration()                  .Enrich.FromLogContext()                  .Enrich.WithExceptionDetails()                  .Enrich.WithMachineName()                  .WriteTo.Debug()                  .WriteTo (SimpleMemberAccessExpression)
%26 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Program.cs" :45 :25) // new LoggerConfiguration()                  .Enrich.FromLogContext()                  .Enrich.WithExceptionDetails()                  .Enrich.WithMachineName()                  .WriteTo.Debug()                  .WriteTo.Console() (InvocationExpression)
%27 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Program.cs" :45 :25) // new LoggerConfiguration()                  .Enrich.FromLogContext()                  .Enrich.WithExceptionDetails()                  .Enrich.WithMachineName()                  .WriteTo.Debug()                  .WriteTo.Console()                  .WriteTo (SimpleMemberAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: ConfigureElasticSink
%28 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Program.cs" :51 :60) // Not a variable of known type: configuration
%29 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Program.cs" :51 :75) // Not a variable of known type: environment
%30 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Program.cs" :51 :39) // ConfigureElasticSink(configuration, environment) (InvocationExpression)
%31 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Program.cs" :45 :25) // new LoggerConfiguration()                  .Enrich.FromLogContext()                  .Enrich.WithExceptionDetails()                  .Enrich.WithMachineName()                  .WriteTo.Debug()                  .WriteTo.Console()                  .WriteTo.Elasticsearch(ConfigureElasticSink(configuration, environment)) (InvocationExpression)
%32 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Program.cs" :45 :25) // new LoggerConfiguration()                  .Enrich.FromLogContext()                  .Enrich.WithExceptionDetails()                  .Enrich.WithMachineName()                  .WriteTo.Debug()                  .WriteTo.Console()                  .WriteTo.Elasticsearch(ConfigureElasticSink(configuration, environment))                  .Enrich (SimpleMemberAccessExpression)
%33 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Program.cs" :52 :37) // "Environment" (StringLiteralExpression)
%34 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Program.cs" :52 :52) // Not a variable of known type: environment
%35 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Program.cs" :45 :25) // new LoggerConfiguration()                  .Enrich.FromLogContext()                  .Enrich.WithExceptionDetails()                  .Enrich.WithMachineName()                  .WriteTo.Debug()                  .WriteTo.Console()                  .WriteTo.Elasticsearch(ConfigureElasticSink(configuration, environment))                  .Enrich.WithProperty("Environment", environment) (InvocationExpression)
%36 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Program.cs" :45 :25) // new LoggerConfiguration()                  .Enrich.FromLogContext()                  .Enrich.WithExceptionDetails()                  .Enrich.WithMachineName()                  .WriteTo.Debug()                  .WriteTo.Console()                  .WriteTo.Elasticsearch(ConfigureElasticSink(configuration, environment))                  .Enrich.WithProperty("Environment", environment)                  .ReadFrom (SimpleMemberAccessExpression)
%37 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Program.cs" :53 :40) // Not a variable of known type: configuration
%38 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Program.cs" :45 :25) // new LoggerConfiguration()                  .Enrich.FromLogContext()                  .Enrich.WithExceptionDetails()                  .Enrich.WithMachineName()                  .WriteTo.Debug()                  .WriteTo.Console()                  .WriteTo.Elasticsearch(ConfigureElasticSink(configuration, environment))                  .Enrich.WithProperty("Environment", environment)                  .ReadFrom.Configuration(configuration) (InvocationExpression)
%39 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Program.cs" :45 :25) // new LoggerConfiguration()                  .Enrich.FromLogContext()                  .Enrich.WithExceptionDetails()                  .Enrich.WithMachineName()                  .WriteTo.Debug()                  .WriteTo.Console()                  .WriteTo.Elasticsearch(ConfigureElasticSink(configuration, environment))                  .Enrich.WithProperty("Environment", environment)                  .ReadFrom.Configuration(configuration)                  .CreateLogger() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
// Skipping function ConfigureElasticSink(none, none), it contains poisonous unsupported syntaxes

