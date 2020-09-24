func @_KanbanApp.Services.Concrete.BoardService.GetList$KanbanApp.Services.UseCases.Boards.GetBoardList.GetBoardListCommand$(none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :23 :8) {
^entry (%_command : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :23 :55)
cbde.store %_command, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :23 :55)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :27 :21) // Not a variable of known type: _mediator
%3 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :27 :36) // Not a variable of known type: command
%4 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :27 :21) // _mediator.Send(command) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :29 :19) // Not a variable of known type: result
return %5 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :29 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_KanbanApp.Services.Concrete.BoardService.Add$KanbanApp.Services.UseCases.Boards.CreateBoard.CreateBoardCommand$(none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :32 :8) {
^entry (%_command : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :32 :50)
cbde.store %_command, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :32 :50)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :36 :21) // Not a variable of known type: _mediator
%3 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :36 :36) // Not a variable of known type: command
%4 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :36 :21) // _mediator.Send(command) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :38 :19) // Not a variable of known type: result
return %5 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :38 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_KanbanApp.Services.Concrete.BoardService.Update$KanbanApp.Services.UseCases.Boards.UpdateBoard.UpdateBoardCommand$(none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :41 :8) {
^entry (%_command : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :41 :53)
cbde.store %_command, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :41 :53)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :46 :21) // Not a variable of known type: _mediator
%3 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :46 :36) // Not a variable of known type: command
%4 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :46 :21) // _mediator.Send(command) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :48 :19) // Not a variable of known type: result
return %5 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :48 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_KanbanApp.Services.Concrete.BoardService.Delete$KanbanApp.Services.UseCases.Boards.DeleteBoard.DeleteBoardCommand$(none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :50 :8) {
^entry (%_command : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :50 :53)
cbde.store %_command, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :50 :53)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :54 :21) // Not a variable of known type: _mediator
%3 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :54 :36) // Not a variable of known type: command
%4 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :54 :21) // _mediator.Send(command) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :56 :19) // Not a variable of known type: result
return %5 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :56 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_KanbanApp.Services.Concrete.BoardService.Get$KanbanApp.Services.UseCases.Boards.GetBoardDetail.GetBoardDetailCommand$(none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :59 :8) {
^entry (%_command : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :59 :53)
cbde.store %_command, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :59 :53)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :63 :21) // Not a variable of known type: _mediator
%3 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :63 :36) // Not a variable of known type: command
%4 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :63 :21) // _mediator.Send(command) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :65 :19) // Not a variable of known type: result
return %5 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :65 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_KanbanApp.Services.Concrete.BoardService.GetBoardSwimLanes$KanbanApp.Services.UseCases.Boards.GetBoardSwimLanes.GetBoardSwimLanesCommand$(none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :68 :8) {
^entry (%_command : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :68 :70)
cbde.store %_command, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :68 :70)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :72 :21) // Not a variable of known type: _mediator
%3 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :72 :36) // Not a variable of known type: command
%4 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :72 :21) // _mediator.Send(command) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :74 :19) // Not a variable of known type: result
return %5 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :74 :12)

^1: // ExitBlock
cbde.unreachable

}
