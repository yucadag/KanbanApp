// Skipping function Match(none, none), it contains poisonous unsupported syntaxes

func @_KanbanApp.Core.Result.Either$TL.TR$.DoRight$System.Action$TR$$(none) -> () loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\Result\\Either.cs" :43 :8) {
^entry (%_rightAction : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\Result\\Either.cs" :43 :28)
cbde.store %_rightAction, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\Result\\Either.cs" :43 :28)
br ^0

^0: // BinaryBranchBlock
// Entity from another assembly: ReferenceEquals
%1 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\Result\\Either.cs" :45 :32) // Not a variable of known type: rightAction
%2 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\Result\\Either.cs" :45 :45) // null (NullLiteralExpression)
%3 = cbde.unknown : i1 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\Result\\Either.cs" :45 :16) // ReferenceEquals(rightAction, null) (InvocationExpression)
cond_br %3, ^1, ^2 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\Result\\Either.cs" :45 :16)

^1: // JumpBlock
%4 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\Result\\Either.cs" :46 :48) // nameof(rightAction) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\Result\\Either.cs" :46 :22) // new ArgumentNullException(nameof(rightAction)) (ObjectCreationExpression)
cbde.throw %5 :  none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\Result\\Either.cs" :46 :16)

^2: // BinaryBranchBlock
%6 = cbde.unknown : i1 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\Result\\Either.cs" :48 :17) // Not a variable of known type: _isLeft
%7 = cbde.unknown : i1 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\Result\\Either.cs" :48 :16) // !_isLeft (LogicalNotExpression)
cond_br %7, ^3, ^4 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\Result\\Either.cs" :48 :16)

^3: // SimpleBlock
%8 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\Result\\Either.cs" :49 :16) // Not a variable of known type: rightAction
%9 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\Result\\Either.cs" :49 :28) // Not a variable of known type: _right
%10 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\Result\\Either.cs" :49 :16) // rightAction(_right) (InvocationExpression)
br ^4

^4: // ExitBlock
return

}
