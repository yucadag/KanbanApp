func @_KanbanApp.BackgroundIntegration.Jobs.ExchangeMailIntegrationJob.Execute$$() -> () loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.BackgroundIntegration\\Jobs\\ExchangeMailIntegrationJob.cs" :7 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.BackgroundIntegration\\Jobs\\ExchangeMailIntegrationJob.cs" :9 :42) // "This is a job to get done on a schedule..." (StringLiteralExpression)
// Entity from another assembly: DateTime
%2 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.BackgroundIntegration\\Jobs\\ExchangeMailIntegrationJob.cs" :10 :39) // DateTime.Now (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.BackgroundIntegration\\Jobs\\ExchangeMailIntegrationJob.cs" :10 :59) // Not a variable of known type: serviceMessage
%4 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.BackgroundIntegration\\Jobs\\ExchangeMailIntegrationJob.cs" :10 :35) // $"[{DateTime.Now:G}] : {serviceMessage}" (InterpolatedStringExpression)
// Entity from another assembly: Console
%6 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.BackgroundIntegration\\Jobs\\ExchangeMailIntegrationJob.cs" :11 :30) // Not a variable of known type: formattedMessage
%7 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.BackgroundIntegration\\Jobs\\ExchangeMailIntegrationJob.cs" :11 :12) // Console.WriteLine(formattedMessage) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
