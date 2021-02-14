// Skipping function GetSwimLaneCards(none), it contains poisonous unsupported syntaxes

// Skipping function GetSwimLaneCardsWithPaging(none, none), it contains poisonous unsupported syntaxes

func @_KanbanApp.Data.Concrete.EntityFramework.EfSwimLaneRepository.CountAsync$$() -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Data\\Concrete\\EntityFramework\\EfSwimLaneRepository.cs" :73 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Data\\Concrete\\EntityFramework\\EfSwimLaneRepository.cs" :75 :19) // Not a variable of known type: dbSet
%1 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Data\\Concrete\\EntityFramework\\EfSwimLaneRepository.cs" :75 :19) // dbSet.CountAsync() (InvocationExpression)
return %1 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Data\\Concrete\\EntityFramework\\EfSwimLaneRepository.cs" :75 :12)

^1: // ExitBlock
cbde.unreachable

}
