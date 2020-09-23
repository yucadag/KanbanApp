func @_KanbanApp.Web.UI.CardController.Index$$() -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Controller\\CardController.cs" :10 :8) {
^entry :
br ^0

^0: // JumpBlock
// Entity from another assembly: View
%0 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Controller\\CardController.cs" :12 :19) // View() (InvocationExpression)
return %0 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Controller\\CardController.cs" :12 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_KanbanApp.Web.UI.CardController.New$$() -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Controller\\CardController.cs" :15 :8) {
^entry :
br ^0

^0: // JumpBlock
// Entity from another assembly: View
%0 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Controller\\CardController.cs" :17 :19) // View() (InvocationExpression)
return %0 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Controller\\CardController.cs" :17 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_KanbanApp.Web.UI.CardController.Update$decimal$(none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Controller\\CardController.cs" :20 :8) {
^entry (%_CardId : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Controller\\CardController.cs" :20 :36)
cbde.store %_CardId, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Controller\\CardController.cs" :20 :36)
br ^0

^0: // JumpBlock
// Entity from another assembly: View
%1 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Controller\\CardController.cs" :22 :19) // View() (InvocationExpression)
return %1 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Controller\\CardController.cs" :22 :12)

^1: // ExitBlock
cbde.unreachable

}
