func @_KanbanApp.Services.Concrete.BoardService.GetList$KanbanApp.Services.UseCases.Boards.GetBoardList.GetBoardListCommand$(none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :21 :8) {
^entry (%_command : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :21 :55)
cbde.store %_command, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :21 :55)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :25 :21) // Not a variable of known type: _mediator
%3 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :25 :36) // Not a variable of known type: command
%4 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :25 :21) // _mediator.Send(command) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :27 :19) // Not a variable of known type: result
return %5 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :27 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_KanbanApp.Services.Concrete.BoardService.Add$KanbanApp.Services.UseCases.Boards.CreateBoard.CreateBoardCommand$(none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :30 :8) {
^entry (%_command : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :30 :50)
cbde.store %_command, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :30 :50)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :34 :21) // Not a variable of known type: _mediator
%3 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :34 :36) // Not a variable of known type: command
%4 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :34 :21) // _mediator.Send(command) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :36 :19) // Not a variable of known type: result
return %5 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :36 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_KanbanApp.Services.Concrete.BoardService.Update$KanbanApp.Services.UseCases.Boards.UpdateBoard.UpdateBoardCommand$(none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :39 :8) {
^entry (%_command : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :39 :53)
cbde.store %_command, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :39 :53)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :44 :21) // Not a variable of known type: _mediator
%3 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :44 :36) // Not a variable of known type: command
%4 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :44 :21) // _mediator.Send(command) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :46 :19) // Not a variable of known type: result
return %5 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :46 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_KanbanApp.Services.Concrete.BoardService.Delete$KanbanApp.Services.UseCases.Boards.DeleteBoard.DeleteBoardCommand$(none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :48 :8) {
^entry (%_command : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :48 :53)
cbde.store %_command, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :48 :53)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :52 :21) // Not a variable of known type: _mediator
%3 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :52 :36) // Not a variable of known type: command
%4 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :52 :21) // _mediator.Send(command) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :54 :19) // Not a variable of known type: result
return %5 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :54 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_KanbanApp.Services.Concrete.BoardService.Get$KanbanApp.Services.UseCases.Boards.GetBoardDetail.GetBoardDetailCommand$(none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :57 :8) {
^entry (%_command : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :57 :53)
cbde.store %_command, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :57 :53)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :61 :21) // Not a variable of known type: _mediator
%3 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :61 :36) // Not a variable of known type: command
%4 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :61 :21) // _mediator.Send(command) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :63 :19) // Not a variable of known type: result
return %5 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :63 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_KanbanApp.Services.Concrete.BoardService.GetBoardSwimLanes$KanbanApp.Services.UseCases.Boards.GetBoardSwimLanes.GetBoardSwimLanesCommand$(none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :66 :8) {
^entry (%_command : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :66 :70)
cbde.store %_command, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :66 :70)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :70 :21) // Not a variable of known type: _mediator
%3 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :70 :36) // Not a variable of known type: command
%4 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :70 :21) // _mediator.Send(command) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :72 :19) // Not a variable of known type: result
return %5 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :72 :12)

^1: // ExitBlock
cbde.unreachable

}
