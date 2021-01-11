func @_KanbanApp.Core.DataAccess.EntityFramework.EfEntityRepositoryBase$TEntity$.Get$System.Linq.Expressions.Expression$System.Func$TEntity.bool$$$(none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :21 :8) {
^entry (%_filter : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :21 :27)
cbde.store %_filter, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :21 :27)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :24 :19) // Not a variable of known type: _context
%2 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :24 :19) // _context.Set<TEntity>() (InvocationExpression)
%3 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :24 :59) // Not a variable of known type: filter
%4 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :24 :19) // _context.Set<TEntity>().SingleOrDefault(filter) (InvocationExpression)
return %4 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :24 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function GetList(none), it contains poisonous unsupported syntaxes

func @_KanbanApp.Core.DataAccess.EntityFramework.EfEntityRepositoryBase$TEntity$.Add$TEntity$(none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :37 :8) {
^entry (%_entity : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :37 :27)
cbde.store %_entity, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :37 :27)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :40 :30) // Not a variable of known type: _context
%2 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :40 :45) // Not a variable of known type: entity
%3 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :40 :30) // _context.Entry(entity) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :41 :12) // Not a variable of known type: addedEntity
%6 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :41 :12) // addedEntity.State (SimpleMemberAccessExpression)
// Entity from another assembly: EntityState
%7 = constant unit loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :41 :32) // EntityState.Added (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :42 :12) // Not a variable of known type: _context
%9 = cbde.unknown : i32 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :42 :12) // _context.SaveChanges() (InvocationExpression)
%10 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :43 :19) // Not a variable of known type: entity
return %10 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :43 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_KanbanApp.Core.DataAccess.EntityFramework.EfEntityRepositoryBase$TEntity$.Update$TEntity$(none) -> () loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :47 :8) {
^entry (%_entity : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :47 :27)
cbde.store %_entity, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :47 :27)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :50 :32) // Not a variable of known type: _context
%2 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :50 :47) // Not a variable of known type: entity
%3 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :50 :32) // _context.Entry(entity) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :51 :12) // Not a variable of known type: updatedEntity
%6 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :51 :12) // updatedEntity.State (SimpleMemberAccessExpression)
// Entity from another assembly: EntityState
%7 = constant unit loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :51 :34) // EntityState.Modified (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :52 :12) // Not a variable of known type: _context
%9 = cbde.unknown : i32 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :52 :12) // _context.SaveChanges() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_KanbanApp.Core.DataAccess.EntityFramework.EfEntityRepositoryBase$TEntity$.Delete$TEntity$(none) -> () loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :56 :8) {
^entry (%_entity : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :56 :27)
cbde.store %_entity, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :56 :27)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :59 :31) // Not a variable of known type: _context
%2 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :59 :46) // Not a variable of known type: entity
%3 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :59 :31) // _context.Entry(entity) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :60 :12) // Not a variable of known type: deleteEntity
%6 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :60 :12) // deleteEntity.State (SimpleMemberAccessExpression)
// Entity from another assembly: EntityState
%7 = constant unit loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :60 :33) // EntityState.Deleted (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :61 :12) // Not a variable of known type: _context
%9 = cbde.unknown : i32 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :61 :12) // _context.SaveChanges() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
// Skipping function GetAsync(none), it contains poisonous unsupported syntaxes

func @_KanbanApp.Core.DataAccess.EntityFramework.EfEntityRepositoryBase$TEntity$.GetListAsync$System.Linq.Expressions.Expression$System.Func$TEntity.bool$$$(none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :72 :8) {
^entry (%_filter : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :72 :48)
cbde.store %_filter, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :72 :48)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :74 :18) // new NotImplementedException() (ObjectCreationExpression)
cbde.throw %1 :  none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :74 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_KanbanApp.Core.DataAccess.EntityFramework.EfEntityRepositoryBase$TEntity$.AddAsync$TEntity$(none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :77 :8) {
^entry (%_entity : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :77 :38)
cbde.store %_entity, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :77 :38)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :79 :18) // new NotImplementedException() (ObjectCreationExpression)
cbde.throw %1 :  none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :79 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_KanbanApp.Core.DataAccess.EntityFramework.EfEntityRepositoryBase$TEntity$.UpdateAsync$TEntity$(none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :82 :8) {
^entry (%_entity : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :82 :32)
cbde.store %_entity, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :82 :32)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :84 :18) // new NotImplementedException() (ObjectCreationExpression)
cbde.throw %1 :  none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :84 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_KanbanApp.Core.DataAccess.EntityFramework.EfEntityRepositoryBase$TEntity$.DeleteAsync$TEntity$(none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :87 :8) {
^entry (%_entity : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :87 :32)
cbde.store %_entity, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :87 :32)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :89 :18) // new NotImplementedException() (ObjectCreationExpression)
cbde.throw %1 :  none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :89 :12)

^1: // ExitBlock
cbde.unreachable

}
