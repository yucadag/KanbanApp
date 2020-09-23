func @_KanbanApp.Api.Controllers.BoardController.Get$string$(none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :36 :8) {
^entry (%_boardId : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :37 :48)
cbde.store %_boardId, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :37 :48)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :39 :51) // Not a variable of known type: _boardService
%2 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :39 :69) // Not a variable of known type: boardId
%3 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :39 :51) // _boardService.Get(boardId) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :40 :16) // Not a variable of known type: result
%6 = cbde.unknown : i1 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :40 :16) // result.Success (SimpleMemberAccessExpression)
cond_br %6, ^1, ^2 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :40 :16)

^1: // JumpBlock
// Entity from another assembly: Ok
%7 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :42 :26) // Not a variable of known type: result
%8 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :42 :23) // Ok(result) (InvocationExpression)
return %8 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :42 :16)

^2: // JumpBlock
// Entity from another assembly: BadRequest
%9 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :46 :34) // Not a variable of known type: result
%10 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :46 :34) // result.ServiceMessageList (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :46 :23) // BadRequest(result.ServiceMessageList) (InvocationExpression)
return %11 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :46 :16)

^3: // ExitBlock
cbde.unreachable

}
func @_KanbanApp.Api.Controllers.BoardController.GetList$$() -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :54 :8) {
^entry :
br ^0

^0: // BinaryBranchBlock
%0 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :61 :61) // new ServiceResult<List<BoardGetListOutPut>>() (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :62 :21) // Not a variable of known type: _boardService
%3 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :62 :43) // null (NullLiteralExpression)
%4 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :62 :21) // _boardService.GetList(null) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :63 :16) // Not a variable of known type: result
%6 = cbde.unknown : i1 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :63 :16) // result.Success (SimpleMemberAccessExpression)
cond_br %6, ^1, ^2 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :63 :16)

^1: // JumpBlock
// Entity from another assembly: Ok
%7 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :65 :26) // Not a variable of known type: result
%8 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :65 :23) // Ok(result) (InvocationExpression)
return %8 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :65 :16)

^2: // JumpBlock
// Entity from another assembly: BadRequest
%9 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :69 :34) // Not a variable of known type: result
%10 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :69 :34) // result.ServiceMessageList (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :69 :23) // BadRequest(result.ServiceMessageList) (InvocationExpression)
return %11 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :69 :16)

^3: // ExitBlock
cbde.unreachable

}
func @_KanbanApp.Api.Controllers.BoardController.Add$KanbanApp.Services.DTO.Input.BoardServiceInput.BoardAddInput$(none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :78 :8) {
^entry (%_input : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :80 :73)
cbde.store %_input, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :80 :73)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :83 :61) // Not a variable of known type: _boardService
%2 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :83 :79) // Not a variable of known type: input
%3 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :83 :61) // _boardService.Add(input) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :84 :16) // Not a variable of known type: result
%6 = cbde.unknown : i1 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :84 :16) // result.Success (SimpleMemberAccessExpression)
cond_br %6, ^1, ^2 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :84 :16)

^1: // JumpBlock
// Entity from another assembly: Ok
%7 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :86 :26) // Not a variable of known type: result
%8 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :86 :23) // Ok(result) (InvocationExpression)
return %8 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :86 :16)

^2: // JumpBlock
// Entity from another assembly: BadRequest
%9 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :90 :34) // Not a variable of known type: result
%10 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :90 :34) // result.ServiceMessageList (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :90 :23) // BadRequest(result.ServiceMessageList) (InvocationExpression)
return %11 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :90 :16)

^3: // ExitBlock
cbde.unreachable

}
func @_KanbanApp.Api.Controllers.BoardController.Update$KanbanApp.Services.DTO.Input.BoardServiceInput.BoardUpdateInput$(none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :99 :8) {
^entry (%_input : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :101 :69)
cbde.store %_input, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :101 :69)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :103 :54) // Not a variable of known type: _boardService
%2 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :103 :75) // Not a variable of known type: input
%3 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :103 :54) // _boardService.Update(input) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :104 :16) // Not a variable of known type: result
%6 = cbde.unknown : i1 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :104 :16) // result.Success (SimpleMemberAccessExpression)
cond_br %6, ^1, ^2 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :104 :16)

^1: // JumpBlock
// Entity from another assembly: Ok
%7 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :106 :26) // Not a variable of known type: result
%8 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :106 :23) // Ok(result) (InvocationExpression)
return %8 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :106 :16)

^2: // JumpBlock
// Entity from another assembly: BadRequest
%9 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :110 :34) // Not a variable of known type: result
%10 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :110 :34) // result.ServiceMessageList (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :110 :23) // BadRequest(result.ServiceMessageList) (InvocationExpression)
return %11 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :110 :16)

^3: // ExitBlock
cbde.unreachable

}
func @_KanbanApp.Api.Controllers.BoardController.GetBoardSwimLanes$string$(none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :120 :8) {
^entry (%_boardId : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :121 :92)
cbde.store %_boardId, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :121 :92)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :123 :66) // Not a variable of known type: _boardService
%2 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :123 :98) // Not a variable of known type: boardId
%3 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :123 :66) // _boardService.GetBoardSwimLanes(boardId) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :125 :16) // Not a variable of known type: result
%6 = cbde.unknown : i1 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :125 :16) // result.Success (SimpleMemberAccessExpression)
cond_br %6, ^1, ^2 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :125 :16)

^1: // JumpBlock
// Entity from another assembly: Ok
%7 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :127 :26) // Not a variable of known type: result
%8 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :127 :23) // Ok(result) (InvocationExpression)
return %8 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :127 :16)

^2: // JumpBlock
// Entity from another assembly: BadRequest
%9 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :131 :34) // Not a variable of known type: result
%10 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :131 :23) // BadRequest(result) (InvocationExpression)
return %10 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :131 :16)

^3: // ExitBlock
cbde.unreachable

}
