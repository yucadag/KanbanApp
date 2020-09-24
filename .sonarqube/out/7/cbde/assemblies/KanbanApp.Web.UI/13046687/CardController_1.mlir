func @_KanbanApp.Web.UI.CardController.Index$$() -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Controller\\CardController.cs" :6 :8) {
^entry :
br ^0

^0: // JumpBlock
// Entity from another assembly: View
%0 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Controller\\CardController.cs" :8 :19) // View() (InvocationExpression)
return %0 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Controller\\CardController.cs" :8 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_KanbanApp.Web.UI.CardController.New$$() -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Controller\\CardController.cs" :11 :8) {
^entry :
br ^0

^0: // JumpBlock
// Entity from another assembly: View
%0 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Controller\\CardController.cs" :13 :19) // View() (InvocationExpression)
return %0 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Controller\\CardController.cs" :13 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_KanbanApp.Web.UI.CardController.Update$decimal$(none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Controller\\CardController.cs" :16 :8) {
^entry (%_CardId : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Controller\\CardController.cs" :16 :36)
cbde.store %_CardId, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Controller\\CardController.cs" :16 :36)
br ^0

^0: // JumpBlock
// Entity from another assembly: View
%1 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Controller\\CardController.cs" :18 :19) // View() (InvocationExpression)
return %1 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Controller\\CardController.cs" :18 :12)

^1: // ExitBlock
cbde.unreachable

}
