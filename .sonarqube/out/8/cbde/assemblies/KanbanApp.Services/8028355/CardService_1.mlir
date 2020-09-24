func @_KanbanApp.Services.Concrete.CardService.Delete$KanbanApp.Services.UseCases.Cards.DeleteCard.DeleteCardCommand$(none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\CardService.cs" :32 :8) {
^entry (%_command : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\CardService.cs" :32 :52)
cbde.store %_command, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\CardService.cs" :32 :52)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\CardService.cs" :36 :21) // Not a variable of known type: _mediator
%3 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\CardService.cs" :36 :36) // Not a variable of known type: command
%4 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\CardService.cs" :36 :21) // _mediator.Send(command) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\CardService.cs" :38 :19) // Not a variable of known type: result
return %5 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\CardService.cs" :38 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_KanbanApp.Services.Concrete.CardService.Get$KanbanApp.Services.UseCases.Cards.GetCardDetail.GetCardDetailCommand$(none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\CardService.cs" :41 :8) {
^entry (%_command : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\CardService.cs" :41 :52)
cbde.store %_command, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\CardService.cs" :41 :52)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\CardService.cs" :45 :21) // Not a variable of known type: _mediator
%3 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\CardService.cs" :45 :36) // Not a variable of known type: command
%4 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\CardService.cs" :45 :21) // _mediator.Send(command) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\CardService.cs" :47 :19) // Not a variable of known type: result
return %5 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\CardService.cs" :47 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function GetCardAttachments(none), it contains poisonous unsupported syntaxes

func @_KanbanApp.Services.Concrete.CardService.Update$KanbanApp.Services.UseCases.Cards.UpdateCard.UpdateCardCommand$(none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\CardService.cs" :87 :8) {
^entry (%_command : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\CardService.cs" :87 :52)
cbde.store %_command, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\CardService.cs" :87 :52)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\CardService.cs" :91 :21) // Not a variable of known type: _mediator
%3 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\CardService.cs" :91 :36) // Not a variable of known type: command
%4 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\CardService.cs" :91 :21) // _mediator.Send(command) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\CardService.cs" :93 :19) // Not a variable of known type: result
return %5 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\CardService.cs" :93 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_KanbanApp.Services.Concrete.CardService.MoveCard$KanbanApp.Services.UseCases.Cards.MoveCard.MoveCardCommand$(none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\CardService.cs" :96 :8) {
^entry (%_command : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\CardService.cs" :96 :52)
cbde.store %_command, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\CardService.cs" :96 :52)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\CardService.cs" :100 :21) // Not a variable of known type: _mediator
%3 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\CardService.cs" :100 :36) // Not a variable of known type: command
%4 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\CardService.cs" :100 :21) // _mediator.Send(command) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\CardService.cs" :102 :19) // Not a variable of known type: result
return %5 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\CardService.cs" :102 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_KanbanApp.Services.Concrete.CardService.CreateCard$KanbanApp.Services.UseCases.Cards.CreateCard.CreateCardCommand$(none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\CardService.cs" :105 :8) {
^entry (%_command : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\CardService.cs" :105 :56)
cbde.store %_command, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\CardService.cs" :105 :56)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\CardService.cs" :109 :21) // Not a variable of known type: _mediator
%3 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\CardService.cs" :109 :36) // Not a variable of known type: command
%4 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\CardService.cs" :109 :21) // _mediator.Send(command) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\CardService.cs" :111 :19) // Not a variable of known type: result
return %5 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\CardService.cs" :111 :12)

^1: // ExitBlock
cbde.unreachable

}
