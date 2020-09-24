func @_KanbanApp.Api.Controllers.BoardController.Get$KanbanApp.Api.Models.Boards.Input.BoardGetInput$(none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :31 :8) {
^entry (%_input : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :32 :61)
cbde.store %_input, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :32 :61)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :34 :70) // Not a variable of known type: input
%2 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :34 :70) // input.BoardId (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :34 :44) // new GetBoardDetailCommand(input.BoardId) (ObjectCreationExpression)
%5 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :36 :55) // Not a variable of known type: _boardService
%6 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :36 :73) // Not a variable of known type: command
%7 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :36 :55) // _boardService.Get(command) (InvocationExpression)
%9 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :37 :16) // Not a variable of known type: result
%10 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :37 :16) // result.Result (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :37 :16) // result.Result.ResultObject (SimpleMemberAccessExpression)
%12 = cbde.unknown : i1 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :37 :16) // result.Result.ResultObject.Success (SimpleMemberAccessExpression)
cond_br %12, ^1, ^2 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :37 :16)

^1: // JumpBlock
// Entity from another assembly: Ok
%13 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :39 :26) // Not a variable of known type: result
%14 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :39 :23) // Ok(result) (InvocationExpression)
return %14 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :39 :16)

^2: // JumpBlock
// Entity from another assembly: BadRequest
%15 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :43 :34) // Not a variable of known type: result
%16 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :43 :23) // BadRequest(result) (InvocationExpression)
return %16 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :43 :16)

^3: // ExitBlock
cbde.unreachable

}
func @_KanbanApp.Api.Controllers.BoardController.Add$KanbanApp.Api.Models.Boards.Input.BoardAddInput$(none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :75 :8) {
^entry (%_input : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :77 :73)
cbde.store %_input, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :77 :73)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :79 :64) // Not a variable of known type: input
%2 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :79 :64) // input.BoardId (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :79 :79) // string (PredefinedType)
%4 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :79 :79) // string.Empty (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :79 :93) // Not a variable of known type: input
%6 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :79 :93) // input.Name (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :79 :105) // Not a variable of known type: input
%8 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :79 :105) // input.Description (SimpleMemberAccessExpression)
%9 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :79 :41) // new CreateBoardCommand(input.BoardId, string.Empty, input.Name, input.Description) (ObjectCreationExpression)
%11 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :81 :52) // Not a variable of known type: _boardService
%12 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :81 :70) // Not a variable of known type: command
%13 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :81 :52) // _boardService.Add(command) (InvocationExpression)
%15 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :82 :16) // Not a variable of known type: result
%16 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :82 :16) // result.Result (SimpleMemberAccessExpression)
%17 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :82 :16) // result.Result.ResultObject (SimpleMemberAccessExpression)
%18 = cbde.unknown : i1 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :82 :16) // result.Result.ResultObject.Success (SimpleMemberAccessExpression)
cond_br %18, ^1, ^2 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :82 :16)

^1: // JumpBlock
// Entity from another assembly: Ok
%19 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :84 :26) // Not a variable of known type: result
%20 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :84 :23) // Ok(result) (InvocationExpression)
return %20 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :84 :16)

^2: // JumpBlock
// Entity from another assembly: BadRequest
%21 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :88 :34) // Not a variable of known type: result
%22 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :88 :23) // BadRequest(result) (InvocationExpression)
return %22 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :88 :16)

^3: // ExitBlock
cbde.unreachable

}
func @_KanbanApp.Api.Controllers.BoardController.GetBoardSwimLanes$string$(none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :118 :8) {
^entry (%_boardId : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :119 :78)
cbde.store %_boardId, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :119 :78)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :121 :76) // Not a variable of known type: boardId
%2 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :121 :47) // new GetBoardSwimLanesCommand(boardId) (ObjectCreationExpression)
%4 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :122 :58) // Not a variable of known type: _boardService
%5 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :122 :90) // Not a variable of known type: command
%6 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :122 :58) // _boardService.GetBoardSwimLanes(command) (InvocationExpression)
%8 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :124 :16) // Not a variable of known type: result
%9 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :124 :16) // result.Result (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :124 :16) // result.Result.ResultObject (SimpleMemberAccessExpression)
%11 = cbde.unknown : i1 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :124 :16) // result.Result.ResultObject.Success (SimpleMemberAccessExpression)
cond_br %11, ^1, ^2 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :124 :16)

^1: // JumpBlock
// Entity from another assembly: Ok
%12 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :126 :26) // Not a variable of known type: result
%13 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :126 :23) // Ok(result) (InvocationExpression)
return %13 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :126 :16)

^2: // JumpBlock
// Entity from another assembly: BadRequest
%14 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :130 :34) // Not a variable of known type: result
%15 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :130 :23) // BadRequest(result) (InvocationExpression)
return %15 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :130 :16)

^3: // ExitBlock
cbde.unreachable

}
