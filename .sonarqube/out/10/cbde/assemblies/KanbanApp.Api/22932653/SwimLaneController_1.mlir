func @_KanbanApp.Api.Controllers.SwimLaneController.Get$string$(none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :35 :8) {
^entry (%_swimLaneId : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :36 :64)
cbde.store %_swimLaneId, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :36 :64)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :38 :47) // new GetSwimlaneDetailCommand              {                  SwimLaneId = swimLaneId              } (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :40 :29) // Not a variable of known type: swimLaneId
%4 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :42 :58) // Not a variable of known type: _swimLaneService
%5 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :42 :79) // Not a variable of known type: command
%6 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :42 :58) // _swimLaneService.Get(command) (InvocationExpression)
%8 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :43 :16) // Not a variable of known type: result
%9 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :43 :16) // result.Result (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :43 :16) // result.Result.ResultObject (SimpleMemberAccessExpression)
%11 = cbde.unknown : i1 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :43 :16) // result.Result.ResultObject.Success (SimpleMemberAccessExpression)
cond_br %11, ^1, ^2 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :43 :16)

^1: // JumpBlock
// Entity from another assembly: Ok
%12 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :45 :26) // Not a variable of known type: result
%13 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :45 :23) // Ok(result) (InvocationExpression)
return %13 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :45 :16)

^2: // JumpBlock
// Entity from another assembly: BadRequest
%14 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :49 :34) // Not a variable of known type: result
%15 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :49 :23) // BadRequest(result) (InvocationExpression)
return %15 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :49 :16)

^3: // ExitBlock
cbde.unreachable

}
func @_KanbanApp.Api.Controllers.SwimLaneController.Add$KanbanApp.Api.Models.SwimLanes.Input.SwimLaneAddInput$(none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :59 :8) {
^entry (%_input : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :61 :61)
cbde.store %_input, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :61 :61)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :63 :44) // new CreateSwimlaneCommand              {                  BoardId = input.BoardId,                  SwimLaneId = input.SwimLaneId,                  Name = input.Name              } (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :65 :26) // Not a variable of known type: input
%3 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :65 :26) // input.BoardId (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :66 :29) // Not a variable of known type: input
%5 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :66 :29) // input.SwimLaneId (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :67 :23) // Not a variable of known type: input
%7 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :67 :23) // input.Name (SimpleMemberAccessExpression)
%9 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :69 :55) // Not a variable of known type: _swimLaneService
%10 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :69 :76) // Not a variable of known type: command
%11 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :69 :55) // _swimLaneService.Add(command) (InvocationExpression)
%13 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :70 :16) // Not a variable of known type: result
%14 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :70 :16) // result.Result (SimpleMemberAccessExpression)
%15 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :70 :16) // result.Result.ResultObject (SimpleMemberAccessExpression)
%16 = cbde.unknown : i1 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :70 :16) // result.Result.ResultObject.Success (SimpleMemberAccessExpression)
cond_br %16, ^1, ^2 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :70 :16)

^1: // JumpBlock
// Entity from another assembly: Ok
%17 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :72 :26) // Not a variable of known type: result
%18 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :72 :23) // Ok(result) (InvocationExpression)
return %18 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :72 :16)

^2: // JumpBlock
// Entity from another assembly: BadRequest
%19 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :76 :34) // Not a variable of known type: result
%20 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :76 :23) // BadRequest(result) (InvocationExpression)
return %20 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :76 :16)

^3: // ExitBlock
cbde.unreachable

}
func @_KanbanApp.Api.Controllers.SwimLaneController.GetSwimLaneCards$string.string$(none, none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :87 :8) {
^entry (%_boardId : none, %_swimLaneId : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :88 :69)
cbde.store %_boardId, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :88 :69)
%1 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :88 :85)
cbde.store %_swimLaneId, %1 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :88 :85)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :90 :74) // Not a variable of known type: boardId
%3 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :90 :83) // Not a variable of known type: swimLaneId
%4 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :90 :46) // new GetSwimLaneCardsCommand(boardId, swimLaneId) (ObjectCreationExpression)
%6 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :91 :57) // Not a variable of known type: _swimLaneService
%7 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :91 :92) // Not a variable of known type: command
%8 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :91 :57) // _swimLaneService.GetBoardSwimLanes(command) (InvocationExpression)
%10 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :93 :16) // Not a variable of known type: result
%11 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :93 :16) // result.Result (SimpleMemberAccessExpression)
%12 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :93 :16) // result.Result.ResultObject (SimpleMemberAccessExpression)
%13 = cbde.unknown : i1 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :93 :16) // result.Result.ResultObject.Success (SimpleMemberAccessExpression)
cond_br %13, ^1, ^2 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :93 :16)

^1: // JumpBlock
// Entity from another assembly: Ok
%14 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :95 :26) // Not a variable of known type: result
%15 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :95 :23) // Ok(result) (InvocationExpression)
return %15 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :95 :16)

^2: // JumpBlock
// Entity from another assembly: BadRequest
%16 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :99 :34) // Not a variable of known type: result
%17 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :99 :23) // BadRequest(result) (InvocationExpression)
return %17 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :99 :16)

^3: // ExitBlock
cbde.unreachable

}
func @_KanbanApp.Api.Controllers.SwimLaneController.Move$KanbanApp.Api.Models.SwimLanes.Input.SwimLaneMoveInput$(none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :108 :8) {
^entry (%_input : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :110 :60)
cbde.store %_input, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :110 :60)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :112 :42) // new MoveSwimlaneCommand              {                  BoardId = input.BoardId,                  SwimLaneId = input.SwimLaneId,                  Name = input.Name,                  Position = input.Position              } (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :114 :26) // Not a variable of known type: input
%3 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :114 :26) // input.BoardId (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :115 :29) // Not a variable of known type: input
%5 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :115 :29) // input.SwimLaneId (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :116 :23) // Not a variable of known type: input
%7 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :116 :23) // input.Name (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :117 :27) // Not a variable of known type: input
%9 = cbde.unknown : i32 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :117 :27) // input.Position (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :119 :53) // Not a variable of known type: _swimLaneService
%12 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :119 :75) // Not a variable of known type: command
%13 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :119 :53) // _swimLaneService.Move(command) (InvocationExpression)
%15 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :120 :16) // Not a variable of known type: result
%16 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :120 :16) // result.Result (SimpleMemberAccessExpression)
%17 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :120 :16) // result.Result.ResultObject (SimpleMemberAccessExpression)
%18 = cbde.unknown : i1 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :120 :16) // result.Result.ResultObject.Success (SimpleMemberAccessExpression)
cond_br %18, ^1, ^2 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :120 :16)

^1: // JumpBlock
// Entity from another assembly: Ok
%19 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :122 :26) // Not a variable of known type: result
%20 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :122 :23) // Ok(result) (InvocationExpression)
return %20 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :122 :16)

^2: // JumpBlock
// Entity from another assembly: BadRequest
%21 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :126 :34) // Not a variable of known type: result
%22 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :126 :23) // BadRequest(result) (InvocationExpression)
return %22 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :126 :16)

^3: // ExitBlock
cbde.unreachable

}
