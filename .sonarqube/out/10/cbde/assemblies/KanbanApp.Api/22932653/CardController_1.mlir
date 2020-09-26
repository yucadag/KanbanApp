func @_KanbanApp.Api.Controllers.CardController.Get$KanbanApp.Api.Models.Cards.CardGetInput$(none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :35 :8) {
^entry (%_input : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :37 :60)
cbde.store %_input, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :37 :60)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :39 :43) // new GetCardDetailCommand              {                  CardId = input.CardId              } (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :41 :25) // Not a variable of known type: input
%3 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :41 :25) // input.CardId (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :43 :54) // Not a variable of known type: _cardService
%6 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :43 :71) // Not a variable of known type: command
%7 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :43 :54) // _cardService.Get(command) (InvocationExpression)
%9 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :45 :16) // Not a variable of known type: result
%10 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :45 :16) // result.Result (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :45 :16) // result.Result.ResultObject (SimpleMemberAccessExpression)
%12 = cbde.unknown : i1 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :45 :16) // result.Result.ResultObject.Success (SimpleMemberAccessExpression)
cond_br %12, ^1, ^2 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :45 :16)

^1: // JumpBlock
// Entity from another assembly: Ok
%13 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :47 :26) // Not a variable of known type: result
%14 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :47 :23) // Ok(result) (InvocationExpression)
return %14 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :47 :16)

^2: // JumpBlock
// Entity from another assembly: BadRequest
%15 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :51 :34) // Not a variable of known type: result
%16 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :51 :23) // BadRequest(result) (InvocationExpression)
return %16 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :51 :16)

^3: // ExitBlock
cbde.unreachable

}
func @_KanbanApp.Api.Controllers.CardController.Update$KanbanApp.Api.Models.Cards.CardUpdateInput$(none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :62 :8) {
^entry (%_input : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :64 :60)
cbde.store %_input, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :64 :60)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :66 :40) // new UpdateCardCommand              {                  CardId = input.CardId,                  Name = input.Name,                  Description = input.Description              } (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :68 :25) // Not a variable of known type: input
%3 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :68 :25) // input.CardId (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :69 :23) // Not a variable of known type: input
%5 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :69 :23) // input.Name (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :70 :30) // Not a variable of known type: input
%7 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :70 :30) // input.Description (SimpleMemberAccessExpression)
%9 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :72 :51) // Not a variable of known type: _cardService
%10 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :72 :71) // Not a variable of known type: command
%11 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :72 :51) // _cardService.Update(command) (InvocationExpression)
%13 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :74 :16) // Not a variable of known type: result
%14 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :74 :16) // result.Result (SimpleMemberAccessExpression)
%15 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :74 :16) // result.Result.ResultObject (SimpleMemberAccessExpression)
%16 = cbde.unknown : i1 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :74 :16) // result.Result.ResultObject.Success (SimpleMemberAccessExpression)
cond_br %16, ^1, ^2 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :74 :16)

^1: // JumpBlock
// Entity from another assembly: Ok
%17 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :76 :26) // Not a variable of known type: result
%18 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :76 :23) // Ok(result) (InvocationExpression)
return %18 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :76 :16)

^2: // JumpBlock
// Entity from another assembly: BadRequest
%19 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :80 :34) // Not a variable of known type: result
%20 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :80 :23) // BadRequest(result) (InvocationExpression)
return %20 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :80 :16)

^3: // ExitBlock
cbde.unreachable

}
func @_KanbanApp.Api.Controllers.CardController.GetCardAttachments$string$(none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :89 :8) {
^entry (%_cardId : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :90 :79)
cbde.store %_cardId, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :90 :79)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :92 :67) // Not a variable of known type: _cardService
%2 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :92 :99) // Not a variable of known type: cardId
%3 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :92 :67) // _cardService.GetCardAttachments(cardId) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :94 :16) // Not a variable of known type: result
%6 = cbde.unknown : i1 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :94 :16) // result.Success (SimpleMemberAccessExpression)
cond_br %6, ^1, ^2 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :94 :16)

^1: // JumpBlock
// Entity from another assembly: Ok
%7 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :96 :26) // Not a variable of known type: result
%8 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :96 :23) // Ok(result) (InvocationExpression)
return %8 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :96 :16)

^2: // JumpBlock
// Entity from another assembly: BadRequest
%9 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :100 :34) // Not a variable of known type: result
%10 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :100 :34) // result.ServiceMessageList (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :100 :23) // BadRequest(result.ServiceMessageList) (InvocationExpression)
return %11 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :100 :16)

^3: // ExitBlock
cbde.unreachable

}
func @_KanbanApp.Api.Controllers.CardController.MoveCard$KanbanApp.Services.UseCases.Cards.MoveCard.MoveCardCommand$(none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :109 :8) {
^entry (%_command : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :111 :60)
cbde.store %_command, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :111 :60)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :113 :59) // Not a variable of known type: command
%2 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :113 :59) // command.CardId (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :113 :75) // Not a variable of known type: command
%4 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :113 :75) // command.SwimLaneId (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :113 :39) // new MoveCardCommand(command.CardId, command.SwimLaneId) (ObjectCreationExpression)
%7 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :114 :49) // Not a variable of known type: _cardService
%8 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :114 :71) // Not a variable of known type: _command
%9 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :114 :49) // _cardService.MoveCard(_command) (InvocationExpression)
%11 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :116 :16) // Not a variable of known type: result
%12 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :116 :16) // result.Result (SimpleMemberAccessExpression)
%13 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :116 :16) // result.Result.ResultObject (SimpleMemberAccessExpression)
%14 = cbde.unknown : i1 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :116 :16) // result.Result.ResultObject.Success (SimpleMemberAccessExpression)
cond_br %14, ^1, ^2 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :116 :16)

^1: // JumpBlock
// Entity from another assembly: Ok
%15 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :118 :26) // Not a variable of known type: result
%16 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :118 :23) // Ok(result) (InvocationExpression)
return %16 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :118 :16)

^2: // JumpBlock
// Entity from another assembly: BadRequest
%17 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :122 :34) // Not a variable of known type: result
%18 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :122 :23) // BadRequest(result) (InvocationExpression)
return %18 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :122 :16)

^3: // ExitBlock
cbde.unreachable

}
func @_KanbanApp.Api.Controllers.CardController.CreateCard$KanbanApp.Services.UseCases.Cards.CreateCard.CreateCardCommand$(none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :133 :8) {
^entry (%_command : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :135 :64)
cbde.store %_command, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :135 :64)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :137 :51) // Not a variable of known type: _cardService
%2 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :137 :75) // Not a variable of known type: command
%3 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :137 :51) // _cardService.CreateCard(command) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :139 :16) // Not a variable of known type: result
%6 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :139 :16) // result.Result (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :139 :16) // result.Result.ResultObject (SimpleMemberAccessExpression)
%8 = cbde.unknown : i1 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :139 :16) // result.Result.ResultObject.Success (SimpleMemberAccessExpression)
cond_br %8, ^1, ^2 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :139 :16)

^1: // JumpBlock
// Entity from another assembly: Ok
%9 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :141 :26) // Not a variable of known type: result
%10 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :141 :23) // Ok(result) (InvocationExpression)
return %10 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :141 :16)

^2: // JumpBlock
// Entity from another assembly: BadRequest
%11 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :145 :34) // Not a variable of known type: result
%12 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :145 :23) // BadRequest(result) (InvocationExpression)
return %12 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :145 :16)

^3: // ExitBlock
cbde.unreachable

}
