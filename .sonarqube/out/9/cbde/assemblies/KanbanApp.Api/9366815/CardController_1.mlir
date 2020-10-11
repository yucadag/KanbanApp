func @_KanbanApp.Api.Controllers.CardController.Get$KanbanApp.Api.Models.Cards.Input.CardGetInput$(none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :34 :8) {
^entry (%_input : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :36 :47)
cbde.store %_input, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :36 :47)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :38 :40) // new GetCardOutput() (ObjectCreationExpression)
%3 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :40 :43) // new GetCardDetailCommand              {                  CardId = input.CardId              } (ObjectCreationExpression)
%4 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :42 :25) // Not a variable of known type: input
%5 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :42 :25) // input.CardId (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :44 :54) // Not a variable of known type: _cardService
%8 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :44 :71) // Not a variable of known type: command
%9 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :44 :54) // _cardService.Get(command) (InvocationExpression)
%11 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :46 :16) // Not a variable of known type: result
%12 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :46 :16) // result.Result (SimpleMemberAccessExpression)
%13 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :46 :16) // result.Result.ResultObject (SimpleMemberAccessExpression)
%14 = cbde.unknown : i1 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :46 :16) // result.Result.ResultObject.Success (SimpleMemberAccessExpression)
cond_br %14, ^1, ^2 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :46 :16)

^1: // JumpBlock
%15 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :48 :16) // Not a variable of known type: returnValue
%16 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :48 :16) // returnValue.BoardId (SimpleMemberAccessExpression)
%17 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :48 :38) // Not a variable of known type: result
%18 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :48 :38) // result.Result (SimpleMemberAccessExpression)
%19 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :48 :38) // result.Result.ResultObject (SimpleMemberAccessExpression)
%20 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :48 :38) // result.Result.ResultObject.Data (SimpleMemberAccessExpression)
%21 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :48 :38) // result.Result.ResultObject.Data.BoardId (SimpleMemberAccessExpression)
%22 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :49 :16) // Not a variable of known type: returnValue
%23 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :49 :16) // returnValue.SwimLaneId (SimpleMemberAccessExpression)
%24 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :49 :41) // Not a variable of known type: result
%25 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :49 :41) // result.Result (SimpleMemberAccessExpression)
%26 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :49 :41) // result.Result.ResultObject (SimpleMemberAccessExpression)
%27 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :49 :41) // result.Result.ResultObject.Data (SimpleMemberAccessExpression)
%28 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :49 :41) // result.Result.ResultObject.Data.SwimLaneId (SimpleMemberAccessExpression)
%29 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :50 :16) // Not a variable of known type: returnValue
%30 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :50 :16) // returnValue.CardId (SimpleMemberAccessExpression)
%31 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :50 :37) // Not a variable of known type: result
%32 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :50 :37) // result.Result (SimpleMemberAccessExpression)
%33 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :50 :37) // result.Result.ResultObject (SimpleMemberAccessExpression)
%34 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :50 :37) // result.Result.ResultObject.Data (SimpleMemberAccessExpression)
%35 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :50 :37) // result.Result.ResultObject.Data.CardId (SimpleMemberAccessExpression)
%36 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :51 :16) // Not a variable of known type: returnValue
%37 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :51 :16) // returnValue.Name (SimpleMemberAccessExpression)
%38 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :51 :35) // Not a variable of known type: result
%39 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :51 :35) // result.Result (SimpleMemberAccessExpression)
%40 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :51 :35) // result.Result.ResultObject (SimpleMemberAccessExpression)
%41 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :51 :35) // result.Result.ResultObject.Data (SimpleMemberAccessExpression)
%42 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :51 :35) // result.Result.ResultObject.Data.Name (SimpleMemberAccessExpression)
%43 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :52 :16) // Not a variable of known type: returnValue
%44 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :52 :16) // returnValue.Description (SimpleMemberAccessExpression)
%45 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :52 :42) // Not a variable of known type: result
%46 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :52 :42) // result.Result (SimpleMemberAccessExpression)
%47 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :52 :42) // result.Result.ResultObject (SimpleMemberAccessExpression)
%48 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :52 :42) // result.Result.ResultObject.Data (SimpleMemberAccessExpression)
%49 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :52 :42) // result.Result.ResultObject.Data.Description (SimpleMemberAccessExpression)
%50 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :53 :16) // Not a variable of known type: returnValue
%51 = cbde.unknown : i32 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :53 :16) // returnValue.Position (SimpleMemberAccessExpression)
%52 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :53 :39) // Not a variable of known type: result
%53 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :53 :39) // result.Result (SimpleMemberAccessExpression)
%54 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :53 :39) // result.Result.ResultObject (SimpleMemberAccessExpression)
%55 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :53 :39) // result.Result.ResultObject.Data (SimpleMemberAccessExpression)
%56 = cbde.unknown : i32 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :53 :39) // result.Result.ResultObject.Data.Position (SimpleMemberAccessExpression)
// Entity from another assembly: Ok
%57 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :55 :26) // Not a variable of known type: returnValue
%58 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :55 :23) // Ok(returnValue) (InvocationExpression)
return %58 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :55 :16)

^2: // JumpBlock
// Entity from another assembly: BadRequest
%59 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :59 :34) // Not a variable of known type: returnValue
%60 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :59 :23) // BadRequest(returnValue) (InvocationExpression)
return %60 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :59 :16)

^3: // ExitBlock
cbde.unreachable

}
func @_KanbanApp.Api.Controllers.CardController.Update$KanbanApp.Api.Models.Cards.Input.CardUpdateInput$(none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :70 :8) {
^entry (%_input : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :72 :60)
cbde.store %_input, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :72 :60)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :74 :40) // new UpdateCardCommand              {                  CardId = input.CardId,                  Name = input.Name,                  Description = input.Description              } (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :76 :25) // Not a variable of known type: input
%3 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :76 :25) // input.CardId (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :77 :23) // Not a variable of known type: input
%5 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :77 :23) // input.Name (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :78 :30) // Not a variable of known type: input
%7 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :78 :30) // input.Description (SimpleMemberAccessExpression)
%9 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :80 :51) // Not a variable of known type: _cardService
%10 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :80 :71) // Not a variable of known type: command
%11 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :80 :51) // _cardService.Update(command) (InvocationExpression)
%13 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :82 :16) // Not a variable of known type: result
%14 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :82 :16) // result.Result (SimpleMemberAccessExpression)
%15 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :82 :16) // result.Result.ResultObject (SimpleMemberAccessExpression)
%16 = cbde.unknown : i1 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :82 :16) // result.Result.ResultObject.Success (SimpleMemberAccessExpression)
cond_br %16, ^1, ^2 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :82 :16)

^1: // JumpBlock
// Entity from another assembly: Ok
%17 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :84 :26) // Not a variable of known type: result
%18 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :84 :23) // Ok(result) (InvocationExpression)
return %18 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :84 :16)

^2: // JumpBlock
// Entity from another assembly: BadRequest
%19 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :88 :34) // Not a variable of known type: result
%20 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :88 :23) // BadRequest(result) (InvocationExpression)
return %20 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :88 :16)

^3: // ExitBlock
cbde.unreachable

}
func @_KanbanApp.Api.Controllers.CardController.GetAttachmentList$string$(none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :97 :8) {
^entry (%_cardId : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :98 :78)
cbde.store %_cardId, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :98 :78)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :100 :47) // new GetAttachmentListCommand              {                  CardId = cardId,              } (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :102 :25) // Not a variable of known type: cardId
%4 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :104 :58) // Not a variable of known type: _cardService
%5 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :104 :89) // Not a variable of known type: command
%6 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :104 :58) // _cardService.GetAttachmentList(command) (InvocationExpression)
%8 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :106 :16) // Not a variable of known type: result
%9 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :106 :16) // result.Result (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :106 :16) // result.Result.ResultObject (SimpleMemberAccessExpression)
%11 = cbde.unknown : i1 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :106 :16) // result.Result.ResultObject.Success (SimpleMemberAccessExpression)
cond_br %11, ^1, ^2 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :106 :16)

^1: // JumpBlock
// Entity from another assembly: Ok
%12 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :108 :26) // Not a variable of known type: result
%13 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :108 :23) // Ok(result) (InvocationExpression)
return %13 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :108 :16)

^2: // JumpBlock
// Entity from another assembly: BadRequest
%14 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :112 :34) // Not a variable of known type: result
%15 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :112 :23) // BadRequest(result) (InvocationExpression)
return %15 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :112 :16)

^3: // ExitBlock
cbde.unreachable

}
func @_KanbanApp.Api.Controllers.CardController.MoveCard$KanbanApp.Services.UseCases.Cards.MoveCard.MoveCardCommand$(none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :121 :8) {
^entry (%_command : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :123 :60)
cbde.store %_command, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :123 :60)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :125 :59) // Not a variable of known type: command
%2 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :125 :59) // command.CardId (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :125 :75) // Not a variable of known type: command
%4 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :125 :75) // command.SwimLaneId (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :125 :39) // new MoveCardCommand(command.CardId, command.SwimLaneId) (ObjectCreationExpression)
%7 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :126 :49) // Not a variable of known type: _cardService
%8 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :126 :71) // Not a variable of known type: _command
%9 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :126 :49) // _cardService.MoveCard(_command) (InvocationExpression)
%11 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :128 :16) // Not a variable of known type: result
%12 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :128 :16) // result.Result (SimpleMemberAccessExpression)
%13 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :128 :16) // result.Result.ResultObject (SimpleMemberAccessExpression)
%14 = cbde.unknown : i1 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :128 :16) // result.Result.ResultObject.Success (SimpleMemberAccessExpression)
cond_br %14, ^1, ^2 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :128 :16)

^1: // JumpBlock
// Entity from another assembly: Ok
%15 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :130 :26) // Not a variable of known type: result
%16 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :130 :23) // Ok(result) (InvocationExpression)
return %16 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :130 :16)

^2: // JumpBlock
// Entity from another assembly: BadRequest
%17 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :134 :34) // Not a variable of known type: result
%18 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :134 :23) // BadRequest(result) (InvocationExpression)
return %18 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :134 :16)

^3: // ExitBlock
cbde.unreachable

}
func @_KanbanApp.Api.Controllers.CardController.CreateCard$KanbanApp.Services.UseCases.Cards.CreateCard.CreateCardCommand$(none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :143 :8) {
^entry (%_command : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :145 :64)
cbde.store %_command, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :145 :64)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :147 :12) // Not a variable of known type: command
%2 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :147 :12) // command.CardId (SimpleMemberAccessExpression)
// Entity from another assembly: Guid
%3 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :147 :29) // Guid.NewGuid() (InvocationExpression)
%4 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :147 :29) // Guid.NewGuid().ToString() (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :148 :51) // Not a variable of known type: _cardService
%6 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :148 :75) // Not a variable of known type: command
%7 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :148 :51) // _cardService.CreateCard(command) (InvocationExpression)
%9 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :150 :16) // Not a variable of known type: result
%10 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :150 :16) // result.Result (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :150 :16) // result.Result.ResultObject (SimpleMemberAccessExpression)
%12 = cbde.unknown : i1 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :150 :16) // result.Result.ResultObject.Success (SimpleMemberAccessExpression)
cond_br %12, ^1, ^2 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :150 :16)

^1: // JumpBlock
// Entity from another assembly: Ok
%13 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :152 :26) // Not a variable of known type: result
%14 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :152 :23) // Ok(result) (InvocationExpression)
return %14 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :152 :16)

^2: // JumpBlock
// Entity from another assembly: BadRequest
%15 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :156 :34) // Not a variable of known type: result
%16 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :156 :23) // BadRequest(result) (InvocationExpression)
return %16 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\CardController.cs" :156 :16)

^3: // ExitBlock
cbde.unreachable

}
