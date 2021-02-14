// Skipping function True(), it contains poisonous unsupported syntaxes

// Skipping function False(), it contains poisonous unsupported syntaxes

func @_KanbanApp.Core.Predicate.PredicateBuilder.Create$T$$System.Linq.Expressions.Expression$System.Func$T.bool$$$(none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\Predicate\\PredicateBuilder.cs" :25 :8) {
^entry (%_predicate : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\Predicate\\PredicateBuilder.cs" :25 :58)
cbde.store %_predicate, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\Predicate\\PredicateBuilder.cs" :25 :58)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\Predicate\\PredicateBuilder.cs" :25 :104) // Not a variable of known type: predicate
return %1 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\Predicate\\PredicateBuilder.cs" :25 :97)

^1: // ExitBlock
cbde.unreachable

}
func @_KanbanApp.Core.Predicate.PredicateBuilder.And$T$$System.Linq.Expressions.Expression$System.Func$T.bool$$.System.Linq.Expressions.Expression$System.Func$T.bool$$$(none, none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\Predicate\\PredicateBuilder.cs" :30 :8) {
^entry (%_first : none, %_second : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\Predicate\\PredicateBuilder.cs" :30 :55)
cbde.store %_first, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\Predicate\\PredicateBuilder.cs" :30 :55)
%1 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\Predicate\\PredicateBuilder.cs" :30 :93)
cbde.store %_second, %1 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\Predicate\\PredicateBuilder.cs" :30 :93)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\Predicate\\PredicateBuilder.cs" :32 :19) // Not a variable of known type: first
%3 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\Predicate\\PredicateBuilder.cs" :32 :33) // Not a variable of known type: second
// Entity from another assembly: Expression
%4 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\Predicate\\PredicateBuilder.cs" :32 :19) // first.Compose(second, Expression.AndAlso) (InvocationExpression)
return %4 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\Predicate\\PredicateBuilder.cs" :32 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_KanbanApp.Core.Predicate.PredicateBuilder.Or$T$$System.Linq.Expressions.Expression$System.Func$T.bool$$.System.Linq.Expressions.Expression$System.Func$T.bool$$$(none, none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\Predicate\\PredicateBuilder.cs" :38 :8) {
^entry (%_first : none, %_second : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\Predicate\\PredicateBuilder.cs" :38 :54)
cbde.store %_first, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\Predicate\\PredicateBuilder.cs" :38 :54)
%1 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\Predicate\\PredicateBuilder.cs" :38 :92)
cbde.store %_second, %1 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\Predicate\\PredicateBuilder.cs" :38 :92)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\Predicate\\PredicateBuilder.cs" :40 :19) // Not a variable of known type: first
%3 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\Predicate\\PredicateBuilder.cs" :40 :33) // Not a variable of known type: second
// Entity from another assembly: Expression
%4 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\Predicate\\PredicateBuilder.cs" :40 :19) // first.Compose(second, Expression.OrElse) (InvocationExpression)
return %4 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\Predicate\\PredicateBuilder.cs" :40 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_KanbanApp.Core.Predicate.PredicateBuilder.Not$T$$System.Linq.Expressions.Expression$System.Func$T.bool$$$(none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\Predicate\\PredicateBuilder.cs" :46 :8) {
^entry (%_expression : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\Predicate\\PredicateBuilder.cs" :46 :55)
cbde.store %_expression, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\Predicate\\PredicateBuilder.cs" :46 :55)
br ^0

^0: // JumpBlock
// Entity from another assembly: Expression
%1 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\Predicate\\PredicateBuilder.cs" :48 :41) // Not a variable of known type: expression
%2 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\Predicate\\PredicateBuilder.cs" :48 :41) // expression.Body (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\Predicate\\PredicateBuilder.cs" :48 :26) // Expression.Not(expression.Body) (InvocationExpression)
// Entity from another assembly: Expression
%5 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\Predicate\\PredicateBuilder.cs" :49 :52) // Not a variable of known type: negated
%6 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\Predicate\\PredicateBuilder.cs" :49 :61) // Not a variable of known type: expression
%7 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\Predicate\\PredicateBuilder.cs" :49 :61) // expression.Parameters (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\Predicate\\PredicateBuilder.cs" :49 :19) // Expression.Lambda<Func<T, bool>>(negated, expression.Parameters) (InvocationExpression)
return %8 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\Predicate\\PredicateBuilder.cs" :49 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function Compose(none, none, none), it contains poisonous unsupported syntaxes

func @_KanbanApp.Core.Predicate.PredicateBuilder.ParameterRebinder.ReplaceParameters$System.Collections.Generic.Dictionary$System.Linq.Expressions.ParameterExpression.System.Linq.Expressions.ParameterExpression$.System.Linq.Expressions.Expression$(none, none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\Predicate\\PredicateBuilder.cs" :78 :12) {
^entry (%_map : none, %_exp : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\Predicate\\PredicateBuilder.cs" :78 :55)
cbde.store %_map, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\Predicate\\PredicateBuilder.cs" :78 :55)
%1 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\Predicate\\PredicateBuilder.cs" :78 :113)
cbde.store %_exp, %1 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\Predicate\\PredicateBuilder.cs" :78 :113)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\Predicate\\PredicateBuilder.cs" :80 :45) // Not a variable of known type: map
%3 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\Predicate\\PredicateBuilder.cs" :80 :23) // new ParameterRebinder(map) (ObjectCreationExpression)
%4 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\Predicate\\PredicateBuilder.cs" :80 :56) // Not a variable of known type: exp
%5 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\Predicate\\PredicateBuilder.cs" :80 :23) // new ParameterRebinder(map).Visit(exp) (InvocationExpression)
return %5 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\Predicate\\PredicateBuilder.cs" :80 :16)

^1: // ExitBlock
cbde.unreachable

}
func @_KanbanApp.Core.Predicate.PredicateBuilder.ParameterRebinder.VisitParameter$System.Linq.Expressions.ParameterExpression$(none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\Predicate\\PredicateBuilder.cs" :83 :12) {
^entry (%_node : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\Predicate\\PredicateBuilder.cs" :83 :57)
cbde.store %_node, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\Predicate\\PredicateBuilder.cs" :83 :57)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\Predicate\\PredicateBuilder.cs" :87 :20) // Not a variable of known type: map
%3 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\Predicate\\PredicateBuilder.cs" :87 :36) // Not a variable of known type: node
%4 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\Predicate\\PredicateBuilder.cs" :87 :46) // Not a variable of known type: replacement
%5 = cbde.unknown : i1 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\Predicate\\PredicateBuilder.cs" :87 :20) // map.TryGetValue(node, out replacement) (InvocationExpression)
cond_br %5, ^1, ^2 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\Predicate\\PredicateBuilder.cs" :87 :20)

^1: // SimpleBlock
%6 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\Predicate\\PredicateBuilder.cs" :89 :27) // Not a variable of known type: replacement
br ^2

^2: // JumpBlock
%7 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\Predicate\\PredicateBuilder.cs" :92 :23) // base (BaseExpression)
%8 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\Predicate\\PredicateBuilder.cs" :92 :43) // Not a variable of known type: node
%9 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\Predicate\\PredicateBuilder.cs" :92 :23) // base.VisitParameter(node) (InvocationExpression)
return %9 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\Predicate\\PredicateBuilder.cs" :92 :16)

^3: // ExitBlock
cbde.unreachable

}
