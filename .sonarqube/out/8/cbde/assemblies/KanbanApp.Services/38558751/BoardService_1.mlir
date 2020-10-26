func @_KanbanApp.Services.Concrete.BoardService.GetList$KanbanApp.Services.UseCases.Boards.GetBoardList.GetBoardListCommand$(none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :20 :8) {
^entry (%_command : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :20 :55)
cbde.store %_command, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :20 :55)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :24 :21) // Not a variable of known type: _mediator
%3 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :24 :36) // Not a variable of known type: command
%4 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :24 :21) // _mediator.Send(command) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :26 :19) // Not a variable of known type: result
return %5 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :26 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_KanbanApp.Services.Concrete.BoardService.Add$KanbanApp.Services.UseCases.Boards.CreateBoard.CreateBoardCommand$(none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :29 :8) {
^entry (%_command : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :29 :50)
cbde.store %_command, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :29 :50)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :33 :21) // Not a variable of known type: _mediator
%3 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :33 :36) // Not a variable of known type: command
%4 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :33 :21) // _mediator.Send(command) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :35 :19) // Not a variable of known type: result
return %5 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :35 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_KanbanApp.Services.Concrete.BoardService.Update$KanbanApp.Services.UseCases.Boards.UpdateBoard.UpdateBoardCommand$(none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :38 :8) {
^entry (%_command : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :38 :53)
cbde.store %_command, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :38 :53)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :43 :21) // Not a variable of known type: _mediator
%3 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :43 :36) // Not a variable of known type: command
%4 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :43 :21) // _mediator.Send(command) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :45 :19) // Not a variable of known type: result
return %5 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :45 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_KanbanApp.Services.Concrete.BoardService.Delete$KanbanApp.Services.UseCases.Boards.DeleteBoard.DeleteBoardCommand$(none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :47 :8) {
^entry (%_command : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :47 :53)
cbde.store %_command, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :47 :53)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :51 :21) // Not a variable of known type: _mediator
%3 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :51 :36) // Not a variable of known type: command
%4 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :51 :21) // _mediator.Send(command) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :53 :19) // Not a variable of known type: result
return %5 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :53 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_KanbanApp.Services.Concrete.BoardService.Get$KanbanApp.Services.UseCases.Boards.GetBoardDetail.GetBoardDetailCommand$(none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :56 :8) {
^entry (%_command : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :56 :53)
cbde.store %_command, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :56 :53)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :60 :21) // Not a variable of known type: _mediator
%3 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :60 :36) // Not a variable of known type: command
%4 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :60 :21) // _mediator.Send(command) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :62 :19) // Not a variable of known type: result
return %5 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :62 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_KanbanApp.Services.Concrete.BoardService.GetBoardSwimLanes$KanbanApp.Services.UseCases.Boards.GetBoardSwimLanes.GetBoardSwimLanesCommand$(none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :65 :8) {
^entry (%_command : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :65 :70)
cbde.store %_command, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :65 :70)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :69 :21) // Not a variable of known type: _mediator
%3 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :69 :36) // Not a variable of known type: command
%4 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :69 :21) // _mediator.Send(command) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :71 :19) // Not a variable of known type: result
return %5 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\BoardService.cs" :71 :12)

^1: // ExitBlock
cbde.unreachable

}
