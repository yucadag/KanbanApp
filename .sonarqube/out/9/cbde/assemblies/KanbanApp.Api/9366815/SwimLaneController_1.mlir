func @_KanbanApp.Api.Controllers.SwimLaneController.Get$string$(none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :37 :8) {
^entry (%_swimLaneId : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :38 :64)
cbde.store %_swimLaneId, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :38 :64)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :40 :47) // new GetSwimlaneDetailCommand              {                  SwimLaneId = swimLaneId              } (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :42 :29) // Not a variable of known type: swimLaneId
%4 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :44 :58) // Not a variable of known type: _swimLaneService
%5 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :44 :79) // Not a variable of known type: command
%6 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :44 :58) // _swimLaneService.Get(command) (InvocationExpression)
%8 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :45 :16) // Not a variable of known type: result
%9 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :45 :16) // result.Result (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :45 :16) // result.Result.ResultObject (SimpleMemberAccessExpression)
%11 = cbde.unknown : i1 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :45 :16) // result.Result.ResultObject.Success (SimpleMemberAccessExpression)
cond_br %11, ^1, ^2 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :45 :16)

^1: // JumpBlock
// Entity from another assembly: Ok
%12 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :47 :26) // Not a variable of known type: result
%13 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :47 :23) // Ok(result) (InvocationExpression)
return %13 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :47 :16)

^2: // JumpBlock
// Entity from another assembly: BadRequest
%14 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :51 :34) // Not a variable of known type: result
%15 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :51 :23) // BadRequest(result) (InvocationExpression)
return %15 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :51 :16)

^3: // ExitBlock
cbde.unreachable

}
func @_KanbanApp.Api.Controllers.SwimLaneController.Add$KanbanApp.Api.Models.SwimLanes.Input.SwimLaneAddInput$(none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :61 :8) {
^entry (%_input : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :63 :61)
cbde.store %_input, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :63 :61)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :65 :44) // new CreateSwimlaneCommand              {                  BoardId = input.BoardId,                  SwimLaneId = input.SwimLaneId,                  Name = input.Name              } (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :67 :26) // Not a variable of known type: input
%3 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :67 :26) // input.BoardId (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :68 :29) // Not a variable of known type: input
%5 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :68 :29) // input.SwimLaneId (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :69 :23) // Not a variable of known type: input
%7 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :69 :23) // input.Name (SimpleMemberAccessExpression)
%9 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :71 :55) // Not a variable of known type: _swimLaneService
%10 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :71 :76) // Not a variable of known type: command
%11 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :71 :55) // _swimLaneService.Add(command) (InvocationExpression)
%13 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :72 :16) // Not a variable of known type: result
%14 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :72 :16) // result.Result (SimpleMemberAccessExpression)
%15 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :72 :16) // result.Result.ResultObject (SimpleMemberAccessExpression)
%16 = cbde.unknown : i1 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :72 :16) // result.Result.ResultObject.Success (SimpleMemberAccessExpression)
cond_br %16, ^1, ^2 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :72 :16)

^1: // JumpBlock
// Entity from another assembly: Ok
%17 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :74 :26) // Not a variable of known type: result
%18 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :74 :23) // Ok(result) (InvocationExpression)
return %18 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :74 :16)

^2: // JumpBlock
// Entity from another assembly: BadRequest
%19 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :78 :34) // Not a variable of known type: result
%20 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :78 :23) // BadRequest(result) (InvocationExpression)
return %20 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :78 :16)

^3: // ExitBlock
cbde.unreachable

}
func @_KanbanApp.Api.Controllers.SwimLaneController.GetSwimLaneCards$string.string$(none, none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :89 :8) {
^entry (%_boardId : none, %_swimLaneId : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :90 :72)
cbde.store %_boardId, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :90 :72)
%1 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :90 :88)
cbde.store %_swimLaneId, %1 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :90 :88)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :92 :74) // Not a variable of known type: boardId
%3 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :92 :83) // Not a variable of known type: swimLaneId
%4 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :92 :46) // new GetSwimLaneCardsCommand(boardId, swimLaneId) (ObjectCreationExpression)
%6 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :93 :57) // Not a variable of known type: _swimLaneService
%7 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :93 :92) // Not a variable of known type: command
%8 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :93 :57) // _swimLaneService.GetBoardSwimLanes(command) (InvocationExpression)
%10 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :94 :52) // new List<SwimlaneCardsOutput>() (ObjectCreationExpression)
%12 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :96 :26) // Not a variable of known type: result
%13 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :96 :26) // result.Result (SimpleMemberAccessExpression)
%14 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :96 :26) // result.Result.ResultObject (SimpleMemberAccessExpression)
%15 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :96 :26) // result.Result.ResultObject.Data (SimpleMemberAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: GetSwimLaneCardsCommandResultItemToSwimlaneCardsOutput
%16 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :96 :90) // new Converter<GetSwimLaneCardsCommandResultItem, SwimlaneCardsOutput>(GetSwimLaneCardsCommandResultItemToSwimlaneCardsOutput) (ObjectCreationExpression)
%17 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :96 :26) // result.Result.ResultObject.Data.ConvertAll<SwimlaneCardsOutput>(new Converter<GetSwimLaneCardsCommandResultItem, SwimlaneCardsOutput>(GetSwimLaneCardsCommandResultItemToSwimlaneCardsOutput)) (InvocationExpression)
%18 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :98 :16) // Not a variable of known type: result
%19 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :98 :16) // result.Result (SimpleMemberAccessExpression)
%20 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :98 :16) // result.Result.ResultObject (SimpleMemberAccessExpression)
%21 = cbde.unknown : i1 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :98 :16) // result.Result.ResultObject.Success (SimpleMemberAccessExpression)
cond_br %21, ^1, ^2 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :98 :16)

^1: // JumpBlock
// Entity from another assembly: Ok
%22 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :101 :26) // Not a variable of known type: returnValue
%23 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :101 :23) // Ok(returnValue) (InvocationExpression)
return %23 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :101 :16)

^2: // JumpBlock
// Entity from another assembly: BadRequest
%24 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :105 :34) // Not a variable of known type: returnValue
%25 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :105 :23) // BadRequest(returnValue) (InvocationExpression)
return %25 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :105 :16)

^3: // ExitBlock
cbde.unreachable

}
func @_KanbanApp.Api.Controllers.SwimLaneController.GetSwimLaneCardsCommandResultItemToSwimlaneCardsOutput$KanbanApp.Services.UseCases.SwimLanes.GetSwimLaneCards.GetSwimLaneCardsCommandResultItem$(none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :109 :8) {
^entry (%_input : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :109 :97)
cbde.store %_input, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :109 :97)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :111 :19) // new SwimlaneCardsOutput()              {                  BoardId = input.BoardId,                  Name = input.Name,                  SwimLaneId = input.SwimLaneId,                  CardId = input.CardId,                  Description = input.Description              } (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :113 :26) // Not a variable of known type: input
%3 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :113 :26) // input.BoardId (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :114 :23) // Not a variable of known type: input
%5 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :114 :23) // input.Name (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :115 :29) // Not a variable of known type: input
%7 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :115 :29) // input.SwimLaneId (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :116 :25) // Not a variable of known type: input
%9 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :116 :25) // input.CardId (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :117 :30) // Not a variable of known type: input
%11 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :117 :30) // input.Description (SimpleMemberAccessExpression)
return %1 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :111 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_KanbanApp.Api.Controllers.SwimLaneController.Move$KanbanApp.Api.Models.SwimLanes.Input.SwimLaneMoveInput$(none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :126 :8) {
^entry (%_input : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :128 :60)
cbde.store %_input, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :128 :60)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :130 :42) // new MoveSwimlaneCommand              {                  BoardId = input.BoardId,                  SwimLaneId = input.SwimLaneId,                  Name = input.Name,                  Position = input.Position              } (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :132 :26) // Not a variable of known type: input
%3 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :132 :26) // input.BoardId (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :133 :29) // Not a variable of known type: input
%5 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :133 :29) // input.SwimLaneId (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :134 :23) // Not a variable of known type: input
%7 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :134 :23) // input.Name (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :135 :27) // Not a variable of known type: input
%9 = cbde.unknown : i32 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :135 :27) // input.Position (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :137 :53) // Not a variable of known type: _swimLaneService
%12 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :137 :75) // Not a variable of known type: command
%13 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :137 :53) // _swimLaneService.Move(command) (InvocationExpression)
%15 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :138 :16) // Not a variable of known type: result
%16 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :138 :16) // result.Result (SimpleMemberAccessExpression)
%17 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :138 :16) // result.Result.ResultObject (SimpleMemberAccessExpression)
%18 = cbde.unknown : i1 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :138 :16) // result.Result.ResultObject.Success (SimpleMemberAccessExpression)
cond_br %18, ^1, ^2 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :138 :16)

^1: // JumpBlock
// Entity from another assembly: Ok
%19 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :140 :26) // Not a variable of known type: result
%20 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :140 :23) // Ok(result) (InvocationExpression)
return %20 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :140 :16)

^2: // JumpBlock
// Entity from another assembly: BadRequest
%21 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :144 :34) // Not a variable of known type: result
%22 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :144 :23) // BadRequest(result) (InvocationExpression)
return %22 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :144 :16)

^3: // ExitBlock
cbde.unreachable

}
