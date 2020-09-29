func @_KanbanApp.Api.Controllers.SwimLaneController.Get$string$(none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :34 :8) {
^entry (%_swimLaneId : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :35 :64)
cbde.store %_swimLaneId, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :35 :64)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :37 :47) // new GetSwimlaneDetailCommand              {                  SwimLaneId = swimLaneId              } (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :39 :29) // Not a variable of known type: swimLaneId
%4 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :41 :58) // Not a variable of known type: _swimLaneService
%5 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :41 :79) // Not a variable of known type: command
%6 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :41 :58) // _swimLaneService.Get(command) (InvocationExpression)
%8 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :42 :16) // Not a variable of known type: result
%9 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :42 :16) // result.Result (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :42 :16) // result.Result.ResultObject (SimpleMemberAccessExpression)
%11 = cbde.unknown : i1 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :42 :16) // result.Result.ResultObject.Success (SimpleMemberAccessExpression)
cond_br %11, ^1, ^2 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :42 :16)

^1: // JumpBlock
// Entity from another assembly: Ok
%12 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :44 :26) // Not a variable of known type: result
%13 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :44 :23) // Ok(result) (InvocationExpression)
return %13 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :44 :16)

^2: // JumpBlock
// Entity from another assembly: BadRequest
%14 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :48 :34) // Not a variable of known type: result
%15 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :48 :23) // BadRequest(result) (InvocationExpression)
return %15 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :48 :16)

^3: // ExitBlock
cbde.unreachable

}
func @_KanbanApp.Api.Controllers.SwimLaneController.Add$KanbanApp.Api.Models.SwimLanes.Input.SwimLaneAddInput$(none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :58 :8) {
^entry (%_input : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :60 :61)
cbde.store %_input, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :60 :61)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :62 :44) // new CreateSwimlaneCommand              {                  BoardId = input.BoardId,                  SwimLaneId = input.SwimLaneId,                  Name = input.Name              } (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :64 :26) // Not a variable of known type: input
%3 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :64 :26) // input.BoardId (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :65 :29) // Not a variable of known type: input
%5 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :65 :29) // input.SwimLaneId (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :66 :23) // Not a variable of known type: input
%7 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :66 :23) // input.Name (SimpleMemberAccessExpression)
%9 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :68 :55) // Not a variable of known type: _swimLaneService
%10 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :68 :76) // Not a variable of known type: command
%11 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :68 :55) // _swimLaneService.Add(command) (InvocationExpression)
%13 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :69 :16) // Not a variable of known type: result
%14 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :69 :16) // result.Result (SimpleMemberAccessExpression)
%15 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :69 :16) // result.Result.ResultObject (SimpleMemberAccessExpression)
%16 = cbde.unknown : i1 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :69 :16) // result.Result.ResultObject.Success (SimpleMemberAccessExpression)
cond_br %16, ^1, ^2 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :69 :16)

^1: // JumpBlock
// Entity from another assembly: Ok
%17 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :71 :26) // Not a variable of known type: result
%18 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :71 :23) // Ok(result) (InvocationExpression)
return %18 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :71 :16)

^2: // JumpBlock
// Entity from another assembly: BadRequest
%19 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :75 :34) // Not a variable of known type: result
%20 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :75 :23) // BadRequest(result) (InvocationExpression)
return %20 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :75 :16)

^3: // ExitBlock
cbde.unreachable

}
func @_KanbanApp.Api.Controllers.SwimLaneController.GetSwimLaneCards$string.string$(none, none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :86 :8) {
^entry (%_boardId : none, %_swimLaneId : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :87 :76)
cbde.store %_boardId, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :87 :76)
%1 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :87 :92)
cbde.store %_swimLaneId, %1 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :87 :92)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :89 :74) // Not a variable of known type: boardId
%3 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :89 :83) // Not a variable of known type: swimLaneId
%4 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :89 :46) // new GetSwimLaneCardsCommand(boardId, swimLaneId) (ObjectCreationExpression)
%6 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :90 :57) // Not a variable of known type: _swimLaneService
%7 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :90 :92) // Not a variable of known type: command
%8 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :90 :57) // _swimLaneService.GetBoardSwimLanes(command) (InvocationExpression)
%10 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :92 :16) // Not a variable of known type: result
%11 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :92 :16) // result.Result (SimpleMemberAccessExpression)
%12 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :92 :16) // result.Result.ResultObject (SimpleMemberAccessExpression)
%13 = cbde.unknown : i1 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :92 :16) // result.Result.ResultObject.Success (SimpleMemberAccessExpression)
cond_br %13, ^1, ^2 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :92 :16)

^1: // JumpBlock
// Entity from another assembly: Ok
%14 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :94 :26) // Not a variable of known type: result
%15 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :94 :23) // Ok(result) (InvocationExpression)
return %15 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :94 :16)

^2: // JumpBlock
// Entity from another assembly: BadRequest
%16 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :98 :34) // Not a variable of known type: result
%17 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :98 :23) // BadRequest(result) (InvocationExpression)
return %17 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :98 :16)

^3: // ExitBlock
cbde.unreachable

}
func @_KanbanApp.Api.Controllers.SwimLaneController.Move$KanbanApp.Api.Models.SwimLanes.Input.SwimLaneMoveInput$(none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :107 :8) {
^entry (%_input : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :109 :60)
cbde.store %_input, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :109 :60)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :111 :42) // new MoveSwimlaneCommand              {                  BoardId = input.BoardId,                  SwimLaneId = input.SwimLaneId,                  Name = input.Name,                  Position = input.Position              } (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :113 :26) // Not a variable of known type: input
%3 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :113 :26) // input.BoardId (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :114 :29) // Not a variable of known type: input
%5 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :114 :29) // input.SwimLaneId (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :115 :23) // Not a variable of known type: input
%7 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :115 :23) // input.Name (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :116 :27) // Not a variable of known type: input
%9 = cbde.unknown : i32 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :116 :27) // input.Position (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :118 :53) // Not a variable of known type: _swimLaneService
%12 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :118 :75) // Not a variable of known type: command
%13 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :118 :53) // _swimLaneService.Move(command) (InvocationExpression)
%15 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :119 :16) // Not a variable of known type: result
%16 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :119 :16) // result.Result (SimpleMemberAccessExpression)
%17 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :119 :16) // result.Result.ResultObject (SimpleMemberAccessExpression)
%18 = cbde.unknown : i1 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :119 :16) // result.Result.ResultObject.Success (SimpleMemberAccessExpression)
cond_br %18, ^1, ^2 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :119 :16)

^1: // JumpBlock
// Entity from another assembly: Ok
%19 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :121 :26) // Not a variable of known type: result
%20 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :121 :23) // Ok(result) (InvocationExpression)
return %20 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :121 :16)

^2: // JumpBlock
// Entity from another assembly: BadRequest
%21 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :125 :34) // Not a variable of known type: result
%22 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :125 :23) // BadRequest(result) (InvocationExpression)
return %22 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :125 :16)

^3: // ExitBlock
cbde.unreachable

}
