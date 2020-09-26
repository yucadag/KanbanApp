func @_KanbanApp.Services.Concrete.CardService.Delete$KanbanApp.Services.UseCases.Cards.DeleteCard.DeleteCardCommand$(none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\CardService.cs" :31 :8) {
^entry (%_command : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\CardService.cs" :31 :52)
cbde.store %_command, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\CardService.cs" :31 :52)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\CardService.cs" :35 :21) // Not a variable of known type: _mediator
%3 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\CardService.cs" :35 :36) // Not a variable of known type: command
%4 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\CardService.cs" :35 :21) // _mediator.Send(command) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\CardService.cs" :37 :19) // Not a variable of known type: result
return %5 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\CardService.cs" :37 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_KanbanApp.Services.Concrete.CardService.Get$KanbanApp.Services.UseCases.Cards.GetCardDetail.GetCardDetailCommand$(none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\CardService.cs" :40 :8) {
^entry (%_command : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\CardService.cs" :40 :52)
cbde.store %_command, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\CardService.cs" :40 :52)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\CardService.cs" :44 :21) // Not a variable of known type: _mediator
%3 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\CardService.cs" :44 :36) // Not a variable of known type: command
%4 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\CardService.cs" :44 :21) // _mediator.Send(command) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\CardService.cs" :46 :19) // Not a variable of known type: result
return %5 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\CardService.cs" :46 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function GetCardAttachments(none), it contains poisonous unsupported syntaxes

func @_KanbanApp.Services.Concrete.CardService.Update$KanbanApp.Services.UseCases.Cards.UpdateCard.UpdateCardCommand$(none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\CardService.cs" :86 :8) {
^entry (%_command : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\CardService.cs" :86 :52)
cbde.store %_command, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\CardService.cs" :86 :52)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\CardService.cs" :90 :21) // Not a variable of known type: _mediator
%3 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\CardService.cs" :90 :36) // Not a variable of known type: command
%4 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\CardService.cs" :90 :21) // _mediator.Send(command) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\CardService.cs" :92 :19) // Not a variable of known type: result
return %5 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\CardService.cs" :92 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_KanbanApp.Services.Concrete.CardService.MoveCard$KanbanApp.Services.UseCases.Cards.MoveCard.MoveCardCommand$(none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\CardService.cs" :95 :8) {
^entry (%_command : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\CardService.cs" :95 :52)
cbde.store %_command, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\CardService.cs" :95 :52)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\CardService.cs" :99 :21) // Not a variable of known type: _mediator
%3 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\CardService.cs" :99 :36) // Not a variable of known type: command
%4 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\CardService.cs" :99 :21) // _mediator.Send(command) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\CardService.cs" :101 :19) // Not a variable of known type: result
return %5 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\CardService.cs" :101 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_KanbanApp.Services.Concrete.CardService.CreateCard$KanbanApp.Services.UseCases.Cards.CreateCard.CreateCardCommand$(none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\CardService.cs" :104 :8) {
^entry (%_command : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\CardService.cs" :104 :56)
cbde.store %_command, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\CardService.cs" :104 :56)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\CardService.cs" :108 :21) // Not a variable of known type: _mediator
%3 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\CardService.cs" :108 :36) // Not a variable of known type: command
%4 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\CardService.cs" :108 :21) // _mediator.Send(command) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\CardService.cs" :110 :19) // Not a variable of known type: result
return %5 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\CardService.cs" :110 :12)

^1: // ExitBlock
cbde.unreachable

}
