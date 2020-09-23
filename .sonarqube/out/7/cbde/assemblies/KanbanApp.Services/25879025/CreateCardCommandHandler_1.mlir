func @_KanbanApp.Services.UseCases.Cards.CreateCard.CreateCardCommandHandler.Handle$KanbanApp.Services.UseCases.Cards.CreateCard.CreateCardCommand.System.Threading.CancellationToken$(none, none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\UseCases\\Cards\\CreateCard\\CreateCardCommandHandler.cs" :11 :8) {
^entry (%_request : none, %_cancellationToken : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\UseCases\\Cards\\CreateCard\\CreateCardCommandHandler.cs" :11 :52)
cbde.store %_request, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\UseCases\\Cards\\CreateCard\\CreateCardCommandHandler.cs" :11 :52)
%1 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\UseCases\\Cards\\CreateCard\\CreateCardCommandHandler.cs" :11 :79)
cbde.store %_cancellationToken, %1 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\UseCases\\Cards\\CreateCard\\CreateCardCommandHandler.cs" :11 :79)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\UseCases\\Cards\\CreateCard\\CreateCardCommandHandler.cs" :13 :18) // new NotImplementedException() (ObjectCreationExpression)
cbde.throw %2 :  none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\UseCases\\Cards\\CreateCard\\CreateCardCommandHandler.cs" :13 :12)

^1: // ExitBlock
cbde.unreachable

}
