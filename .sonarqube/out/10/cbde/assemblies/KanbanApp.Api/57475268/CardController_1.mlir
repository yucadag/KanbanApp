func @_KanbanApp.Api.Controllers.CardController.GetCardAttachments$string$(none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :115 :8) {
^entry (%_cardId : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :116 :79)
cbde.store %_cardId, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :116 :79)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :118 :67) // Not a variable of known type: _cardService
%2 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :118 :99) // Not a variable of known type: cardId
%3 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :118 :67) // _cardService.GetCardAttachments(cardId) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :120 :16) // Not a variable of known type: result
%6 = cbde.unknown : i1 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :120 :16) // result.Success (SimpleMemberAccessExpression)
cond_br %6, ^1, ^2 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :120 :16)

^1: // JumpBlock
// Entity from another assembly: Ok
%7 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :122 :26) // Not a variable of known type: result
%8 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :122 :23) // Ok(result) (InvocationExpression)
return %8 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :122 :16)

^2: // JumpBlock
// Entity from another assembly: BadRequest
%9 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :126 :34) // Not a variable of known type: result
%10 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :126 :34) // result.ServiceMessageList (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :126 :23) // BadRequest(result.ServiceMessageList) (InvocationExpression)
return %11 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :126 :16)

^3: // ExitBlock
cbde.unreachable

}
func @_KanbanApp.Api.Controllers.CardController.MoveCard$KanbanApp.Services.UseCases.Cards.MoveCard.MoveCardCommand$(none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :135 :8) {
^entry (%_command : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :137 :60)
cbde.store %_command, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :137 :60)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :139 :59) // Not a variable of known type: command
%2 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :139 :59) // command.CardId (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :139 :75) // Not a variable of known type: command
%4 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :139 :75) // command.SwimLaneId (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :139 :39) // new MoveCardCommand(command.CardId, command.SwimLaneId) (ObjectCreationExpression)
%7 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :140 :49) // Not a variable of known type: _cardService
%8 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :140 :71) // Not a variable of known type: _command
%9 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :140 :49) // _cardService.MoveCard(_command) (InvocationExpression)
%11 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :142 :16) // Not a variable of known type: result
%12 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :142 :16) // result.Result (SimpleMemberAccessExpression)
%13 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :142 :16) // result.Result.ResultObject (SimpleMemberAccessExpression)
%14 = cbde.unknown : i1 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :142 :16) // result.Result.ResultObject.Success (SimpleMemberAccessExpression)
cond_br %14, ^1, ^2 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :142 :16)

^1: // JumpBlock
// Entity from another assembly: Ok
%15 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :144 :26) // Not a variable of known type: result
%16 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :144 :23) // Ok(result) (InvocationExpression)
return %16 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :144 :16)

^2: // JumpBlock
// Entity from another assembly: BadRequest
%17 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :148 :34) // Not a variable of known type: result
%18 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :148 :23) // BadRequest(result) (InvocationExpression)
return %18 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :148 :16)

^3: // ExitBlock
cbde.unreachable

}
func @_KanbanApp.Api.Controllers.CardController.CreateCard$KanbanApp.Services.UseCases.Cards.CreateCard.CreateCardCommand$(none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :159 :8) {
^entry (%_command : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :161 :64)
cbde.store %_command, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :161 :64)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :163 :41) // new CreateCardCommand() (ObjectCreationExpression)
%3 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :164 :23) // Not a variable of known type: command
%4 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :165 :51) // Not a variable of known type: _cardService
%5 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :165 :75) // Not a variable of known type: _command
%6 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :165 :51) // _cardService.CreateCard(_command) (InvocationExpression)
%8 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :167 :16) // Not a variable of known type: result
%9 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :167 :16) // result.Result (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :167 :16) // result.Result.ResultObject (SimpleMemberAccessExpression)
%11 = cbde.unknown : i1 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :167 :16) // result.Result.ResultObject.Success (SimpleMemberAccessExpression)
cond_br %11, ^1, ^2 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :167 :16)

^1: // JumpBlock
// Entity from another assembly: Ok
%12 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :169 :26) // Not a variable of known type: result
%13 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :169 :23) // Ok(result) (InvocationExpression)
return %13 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :169 :16)

^2: // JumpBlock
// Entity from another assembly: BadRequest
%14 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :173 :34) // Not a variable of known type: result
%15 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :173 :23) // BadRequest(result) (InvocationExpression)
return %15 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :173 :16)

^3: // ExitBlock
cbde.unreachable

}
