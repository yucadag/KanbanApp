func @_KanbanApp.Core.DataAccess.EntityFramework.EfEntityRepositoryBase$TEntity$.Get$System.Linq.Expressions.Expression$System.Func$TEntity.bool$$$(none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :23 :8) {
^entry (%_filter : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :23 :27)
cbde.store %_filter, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :23 :27)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :26 :19) // Not a variable of known type: _context
%2 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :26 :19) // _context.Set<TEntity>() (InvocationExpression)
%3 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :26 :59) // Not a variable of known type: filter
%4 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :26 :19) // _context.Set<TEntity>().SingleOrDefault(filter) (InvocationExpression)
return %4 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :26 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function GetList(none), it contains poisonous unsupported syntaxes

func @_KanbanApp.Core.DataAccess.EntityFramework.EfEntityRepositoryBase$TEntity$.GetPagedList$System.Linq.Expressions.Expression$System.Func$TEntity.bool$$.int.int$(none, i32, i32) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :39 :8) {
^entry (%_predicate : none, %_PageNumber : i32, %_PageSize : i32):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :39 :48)
cbde.store %_predicate, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :39 :48)
%1 = cbde.alloca i32 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :39 :91)
cbde.store %_PageNumber, %1 : memref<i32> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :39 :91)
%2 = cbde.alloca i32 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :39 :107)
cbde.store %_PageSize, %2 : memref<i32> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :39 :107)
br ^0

^0: // BinaryBranchBlock
%3 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :41 :24) // Not a variable of known type: _context
%4 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :41 :24) // _context.Set<TEntity>() (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :41 :24) // _context.Set<TEntity>().AsQueryable() (InvocationExpression)
%7 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :43 :16) // Not a variable of known type: predicate
%8 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :43 :29) // null (NullLiteralExpression)
%9 = cbde.unknown : i1  loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :43 :16) // comparison of unknown type: predicate != null
cond_br %9, ^1, ^2 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :43 :16)

^1: // SimpleBlock
%10 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :45 :24) // Not a variable of known type: query
%11 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :45 :36) // Not a variable of known type: predicate
%12 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :45 :24) // query.Where(predicate) (InvocationExpression)
br ^2

^2: // JumpBlock
%13 = cbde.load %1 : memref<i32> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :49 :24)
%14 = constant 1 : i32 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :49 :37)
%15 = subi %13, %14 : i32 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :49 :24)
%16 = cbde.load %2 : memref<i32> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :49 :42)
%17 = muli %15, %16 : i32 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :49 :23)
%18 = cbde.alloca i32 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :49 :16) // skip
cbde.store %17, %18 : memref<i32> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :49 :16)
%19 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :50 :20) // Not a variable of known type: query
%20 = cbde.load %18 : memref<i32> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :50 :31)
%21 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :50 :20) // query.Skip(skip) (InvocationExpression)
%22 = cbde.load %2 : memref<i32> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :50 :42)
%23 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :50 :20) // query.Skip(skip).Take(PageSize) (InvocationExpression)
%24 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :53 :19) // Not a variable of known type: query
%25 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :53 :19) // query.AsNoTracking() (InvocationExpression)
return %25 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :53 :12)

^3: // ExitBlock
cbde.unreachable

}
func @_KanbanApp.Core.DataAccess.EntityFramework.EfEntityRepositoryBase$TEntity$.Add$TEntity$(none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :56 :8) {
^entry (%_entity : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :56 :27)
cbde.store %_entity, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :56 :27)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :59 :30) // Not a variable of known type: _context
%2 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :59 :45) // Not a variable of known type: entity
%3 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :59 :30) // _context.Entry(entity) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :60 :12) // Not a variable of known type: addedEntity
%6 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :60 :12) // addedEntity.State (SimpleMemberAccessExpression)
// Entity from another assembly: EntityState
%7 = constant unit loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :60 :32) // EntityState.Added (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :61 :12) // Not a variable of known type: _context
%9 = cbde.unknown : i32 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :61 :12) // _context.SaveChanges() (InvocationExpression)
%10 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :62 :19) // Not a variable of known type: entity
return %10 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :62 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_KanbanApp.Core.DataAccess.EntityFramework.EfEntityRepositoryBase$TEntity$.Update$TEntity$(none) -> () loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :66 :8) {
^entry (%_entity : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :66 :27)
cbde.store %_entity, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :66 :27)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :69 :32) // Not a variable of known type: _context
%2 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :69 :47) // Not a variable of known type: entity
%3 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :69 :32) // _context.Entry(entity) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :70 :12) // Not a variable of known type: updatedEntity
%6 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :70 :12) // updatedEntity.State (SimpleMemberAccessExpression)
// Entity from another assembly: EntityState
%7 = constant unit loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :70 :34) // EntityState.Modified (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :71 :12) // Not a variable of known type: _context
%9 = cbde.unknown : i32 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :71 :12) // _context.SaveChanges() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_KanbanApp.Core.DataAccess.EntityFramework.EfEntityRepositoryBase$TEntity$.Delete$TEntity$(none) -> () loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :75 :8) {
^entry (%_entity : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :75 :27)
cbde.store %_entity, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :75 :27)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :78 :31) // Not a variable of known type: _context
%2 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :78 :46) // Not a variable of known type: entity
%3 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :78 :31) // _context.Entry(entity) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :79 :12) // Not a variable of known type: deleteEntity
%6 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :79 :12) // deleteEntity.State (SimpleMemberAccessExpression)
// Entity from another assembly: EntityState
%7 = constant unit loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :79 :33) // EntityState.Deleted (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :80 :12) // Not a variable of known type: _context
%9 = cbde.unknown : i32 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :80 :12) // _context.SaveChanges() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
// Skipping function GetAsync(none), it contains poisonous unsupported syntaxes

func @_KanbanApp.Core.DataAccess.EntityFramework.EfEntityRepositoryBase$TEntity$.GetListAsync$System.Linq.Expressions.Expression$System.Func$TEntity.bool$$$(none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :91 :8) {
^entry (%_filter : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :91 :48)
cbde.store %_filter, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :91 :48)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :93 :18) // new NotImplementedException() (ObjectCreationExpression)
cbde.throw %1 :  none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :93 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_KanbanApp.Core.DataAccess.EntityFramework.EfEntityRepositoryBase$TEntity$.AddAsync$TEntity$(none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :96 :8) {
^entry (%_entity : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :96 :38)
cbde.store %_entity, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :96 :38)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :98 :18) // new NotImplementedException() (ObjectCreationExpression)
cbde.throw %1 :  none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :98 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_KanbanApp.Core.DataAccess.EntityFramework.EfEntityRepositoryBase$TEntity$.UpdateAsync$TEntity$(none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :101 :8) {
^entry (%_entity : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :101 :32)
cbde.store %_entity, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :101 :32)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :103 :18) // new NotImplementedException() (ObjectCreationExpression)
cbde.throw %1 :  none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :103 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_KanbanApp.Core.DataAccess.EntityFramework.EfEntityRepositoryBase$TEntity$.DeleteAsync$TEntity$(none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :106 :8) {
^entry (%_entity : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :106 :32)
cbde.store %_entity, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :106 :32)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :108 :18) // new NotImplementedException() (ObjectCreationExpression)
cbde.throw %1 :  none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :108 :12)

^1: // ExitBlock
cbde.unreachable

}
