func @_KanbanApp.Api.Controllers.SwimLaneController.Get$string$(none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :35 :8) {
^entry (%_swimLaneId : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :36 :64)
cbde.store %_swimLaneId, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :36 :64)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :38 :47) // new GetSwimlaneDetailCommand() (ObjectCreationExpression)
%3 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :40 :58) // Not a variable of known type: _swimLaneService
%4 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :40 :79) // Not a variable of known type: command
%5 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :40 :58) // _swimLaneService.Get(command) (InvocationExpression)
%7 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :41 :16) // Not a variable of known type: result
%8 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :41 :16) // result.Result (SimpleMemberAccessExpression)
%9 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :41 :16) // result.Result.ResultObject (SimpleMemberAccessExpression)
%10 = cbde.unknown : i1 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :41 :16) // result.Result.ResultObject.Success (SimpleMemberAccessExpression)
cond_br %10, ^1, ^2 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :41 :16)

^1: // JumpBlock
// Entity from another assembly: Ok
%11 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :43 :26) // Not a variable of known type: result
%12 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :43 :23) // Ok(result) (InvocationExpression)
return %12 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :43 :16)

^2: // JumpBlock
// Entity from another assembly: BadRequest
%13 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :47 :34) // Not a variable of known type: result
%14 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :47 :23) // BadRequest(result) (InvocationExpression)
return %14 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :47 :16)

^3: // ExitBlock
cbde.unreachable

}
func @_KanbanApp.Api.Controllers.SwimLaneController.GetSwimLaneCards$string.string$(none, none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :83 :8) {
^entry (%_boardId : none, %_swimLaneId : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :84 :69)
cbde.store %_boardId, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :84 :69)
%1 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :84 :85)
cbde.store %_swimLaneId, %1 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :84 :85)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :86 :74) // Not a variable of known type: boardId
%3 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :86 :83) // Not a variable of known type: swimLaneId
%4 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :86 :46) // new GetSwimLaneCardsCommand(boardId, swimLaneId) (ObjectCreationExpression)
%6 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :87 :57) // Not a variable of known type: _swimLaneService
%7 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :87 :92) // Not a variable of known type: command
%8 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :87 :57) // _swimLaneService.GetBoardSwimLanes(command) (InvocationExpression)
%10 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :89 :16) // Not a variable of known type: result
%11 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :89 :16) // result.Result (SimpleMemberAccessExpression)
%12 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :89 :16) // result.Result.ResultObject (SimpleMemberAccessExpression)
%13 = cbde.unknown : i1 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :89 :16) // result.Result.ResultObject.Success (SimpleMemberAccessExpression)
cond_br %13, ^1, ^2 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :89 :16)

^1: // JumpBlock
// Entity from another assembly: Ok
%14 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :91 :26) // Not a variable of known type: result
%15 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :91 :23) // Ok(result) (InvocationExpression)
return %15 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :91 :16)

^2: // JumpBlock
// Entity from another assembly: BadRequest
%16 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :95 :34) // Not a variable of known type: result
%17 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :95 :23) // BadRequest(result) (InvocationExpression)
return %17 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :95 :16)

^3: // ExitBlock
cbde.unreachable

}
func @_KanbanApp.Api.Controllers.SwimLaneController.Move$KanbanApp.Api.Models.SwimLanes.Input.SwimLaneMoveInput$(none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :104 :8) {
^entry (%_input : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :106 :60)
cbde.store %_input, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :106 :60)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :108 :42) // new MoveSwimlaneCommand() (ObjectCreationExpression)
%3 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :109 :12) // Not a variable of known type: command
%4 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :109 :12) // command.BoardId (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :109 :30) // Not a variable of known type: input
%6 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :109 :30) // input.BoardId (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :110 :12) // Not a variable of known type: command
%8 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :110 :12) // command.SwimLaneId (SimpleMemberAccessExpression)
%9 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :110 :33) // Not a variable of known type: input
%10 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :110 :33) // input.SwimLaneId (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :111 :12) // Not a variable of known type: command
%12 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :111 :12) // command.Name (SimpleMemberAccessExpression)
%13 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :111 :27) // Not a variable of known type: input
%14 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :111 :27) // input.Name (SimpleMemberAccessExpression)
%15 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :112 :12) // Not a variable of known type: command
%16 = cbde.unknown : i32 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :112 :12) // command.Position (SimpleMemberAccessExpression)
%17 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :112 :31) // Not a variable of known type: input
%18 = cbde.unknown : i32 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :112 :31) // input.Position (SimpleMemberAccessExpression)
%19 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :113 :53) // Not a variable of known type: _swimLaneService
%20 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :113 :75) // Not a variable of known type: command
%21 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :113 :53) // _swimLaneService.Move(command) (InvocationExpression)
%23 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :114 :16) // Not a variable of known type: result
%24 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :114 :16) // result.Result (SimpleMemberAccessExpression)
%25 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :114 :16) // result.Result.ResultObject (SimpleMemberAccessExpression)
%26 = cbde.unknown : i1 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :114 :16) // result.Result.ResultObject.Success (SimpleMemberAccessExpression)
cond_br %26, ^1, ^2 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :114 :16)

^1: // JumpBlock
// Entity from another assembly: Ok
%27 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :116 :26) // Not a variable of known type: result
%28 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :116 :23) // Ok(result) (InvocationExpression)
return %28 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :116 :16)

^2: // JumpBlock
// Entity from another assembly: BadRequest
%29 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :120 :34) // Not a variable of known type: result
%30 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :120 :23) // BadRequest(result) (InvocationExpression)
return %30 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :120 :16)

^3: // ExitBlock
cbde.unreachable

}
