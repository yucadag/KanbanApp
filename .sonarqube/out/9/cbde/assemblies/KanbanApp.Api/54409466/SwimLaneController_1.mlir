func @_KanbanApp.Api.Controllers.SwimLaneController.Get$string$(none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :37 :8) {
^entry (%_swimLaneId : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :38 :39)
cbde.store %_swimLaneId, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :38 :39)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :40 :54) // Not a variable of known type: _swimLaneService
%2 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :40 :75) // Not a variable of known type: swimLaneId
%3 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :40 :54) // _swimLaneService.Get(swimLaneId) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :41 :16) // Not a variable of known type: result
%6 = cbde.unknown : i1 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :41 :16) // result.Success (SimpleMemberAccessExpression)
cond_br %6, ^1, ^2 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :41 :16)

^1: // JumpBlock
// Entity from another assembly: Ok
%7 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :43 :26) // Not a variable of known type: result
%8 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :43 :23) // Ok(result) (InvocationExpression)
return %8 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :43 :16)

^2: // JumpBlock
// Entity from another assembly: BadRequest
%9 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :47 :34) // Not a variable of known type: result
%10 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :47 :34) // result.ServiceMessageList (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :47 :23) // BadRequest(result.ServiceMessageList) (InvocationExpression)
return %11 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :47 :16)

^3: // ExitBlock
cbde.unreachable

}
func @_KanbanApp.Api.Controllers.SwimLaneController.GetList$$() -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :55 :8) {
^entry :
br ^0

^0: // BinaryBranchBlock
%0 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :62 :64) // new ServiceResult<List<SwimLaneGetListOutPut>>() (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :63 :21) // Not a variable of known type: _swimLaneService
%3 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :63 :21) // _swimLaneService.GetList() (InvocationExpression)
%4 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :64 :16) // Not a variable of known type: result
%5 = cbde.unknown : i1 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :64 :16) // result.Success (SimpleMemberAccessExpression)
cond_br %5, ^1, ^2 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :64 :16)

^1: // JumpBlock
// Entity from another assembly: Ok
%6 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :66 :26) // Not a variable of known type: result
%7 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :66 :23) // Ok(result) (InvocationExpression)
return %7 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :66 :16)

^2: // JumpBlock
// Entity from another assembly: BadRequest
%8 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :70 :34) // Not a variable of known type: result
%9 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :70 :34) // result.ServiceMessageList (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :70 :23) // BadRequest(result.ServiceMessageList) (InvocationExpression)
return %10 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :70 :16)

^3: // ExitBlock
cbde.unreachable

}
func @_KanbanApp.Api.Controllers.SwimLaneController.Add$KanbanApp.Services.DTO.Input.SwimLaneServiceInput.SwimLaneAddInput$(none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :79 :8) {
^entry (%_input : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :81 :66)
cbde.store %_input, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :81 :66)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :84 :54) // Not a variable of known type: _swimLaneService
%2 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :84 :75) // Not a variable of known type: input
%3 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :84 :54) // _swimLaneService.Add(input) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :85 :16) // Not a variable of known type: result
%6 = cbde.unknown : i1 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :85 :16) // result.Success (SimpleMemberAccessExpression)
cond_br %6, ^1, ^2 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :85 :16)

^1: // JumpBlock
// Entity from another assembly: Ok
%7 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :87 :26) // Not a variable of known type: result
%8 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :87 :23) // Ok(result) (InvocationExpression)
return %8 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :87 :16)

^2: // JumpBlock
// Entity from another assembly: BadRequest
%9 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :91 :34) // Not a variable of known type: result
%10 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :91 :34) // result.ServiceMessageList (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :91 :23) // BadRequest(result.ServiceMessageList) (InvocationExpression)
return %11 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :91 :16)

^3: // ExitBlock
cbde.unreachable

}
func @_KanbanApp.Api.Controllers.SwimLaneController.Update$KanbanApp.Services.DTO.Input.SwimLaneServiceInput.SwimLaneUpdateInput$(none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :100 :8) {
^entry (%_input : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :102 :72)
cbde.store %_input, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :102 :72)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :104 :57) // Not a variable of known type: _swimLaneService
%2 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :104 :81) // Not a variable of known type: input
%3 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :104 :57) // _swimLaneService.Update(input) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :105 :16) // Not a variable of known type: result
%6 = cbde.unknown : i1 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :105 :16) // result.Success (SimpleMemberAccessExpression)
cond_br %6, ^1, ^2 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :105 :16)

^1: // JumpBlock
// Entity from another assembly: Ok
%7 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :107 :26) // Not a variable of known type: result
%8 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :107 :23) // Ok(result) (InvocationExpression)
return %8 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :107 :16)

^2: // JumpBlock
// Entity from another assembly: BadRequest
%9 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :111 :34) // Not a variable of known type: result
%10 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :111 :34) // result.ServiceMessageList (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :111 :23) // BadRequest(result.ServiceMessageList) (InvocationExpression)
return %11 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :111 :16)

^3: // ExitBlock
cbde.unreachable

}
func @_KanbanApp.Api.Controllers.SwimLaneController.GetSwimLaneCards$string$(none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :120 :8) {
^entry (%_swimLaneId : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :121 :69)
cbde.store %_swimLaneId, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :121 :69)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :123 :59) // Not a variable of known type: _swimLaneService
%2 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :123 :93) // Not a variable of known type: swimLaneId
%3 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :123 :59) // _swimLaneService.GetSwimLaneCards(swimLaneId) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :125 :16) // Not a variable of known type: result
%6 = cbde.unknown : i1 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :125 :16) // result.Success (SimpleMemberAccessExpression)
cond_br %6, ^1, ^2 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :125 :16)

^1: // JumpBlock
// Entity from another assembly: Ok
%7 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :127 :26) // Not a variable of known type: result
%8 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :127 :23) // Ok(result) (InvocationExpression)
return %8 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :127 :16)

^2: // JumpBlock
// Entity from another assembly: BadRequest
%9 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :131 :34) // Not a variable of known type: result
%10 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :131 :34) // result.ServiceMessageList (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :131 :23) // BadRequest(result.ServiceMessageList) (InvocationExpression)
return %11 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\SwimLaneController.cs" :131 :16)

^3: // ExitBlock
cbde.unreachable

}
