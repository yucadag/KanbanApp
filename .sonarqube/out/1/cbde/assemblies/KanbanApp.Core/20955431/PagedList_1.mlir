func @_KanbanApp.Core.Paging.PagedList$T$.ToPagedList$System.Linq.IQueryable$T$.int.int.int$(none, i32, i32, i32) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\Paging\\PagedList.cs" :26 :8) {
^entry (%_source : none, %_pageNumber : i32, %_pageSize : i32, %_count : i32):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\Paging\\PagedList.cs" :26 :47)
cbde.store %_source, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\Paging\\PagedList.cs" :26 :47)
%1 = cbde.alloca i32 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\Paging\\PagedList.cs" :26 :69)
cbde.store %_pageNumber, %1 : memref<i32> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\Paging\\PagedList.cs" :26 :69)
%2 = cbde.alloca i32 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\Paging\\PagedList.cs" :26 :85)
cbde.store %_pageSize, %2 : memref<i32> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\Paging\\PagedList.cs" :26 :85)
%3 = cbde.alloca i32 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\Paging\\PagedList.cs" :26 :98)
cbde.store %_count, %3 : memref<i32> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\Paging\\PagedList.cs" :26 :98)
br ^0

^0: // JumpBlock
%4 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\Paging\\PagedList.cs" :28 :24) // Not a variable of known type: source
%5 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\Paging\\PagedList.cs" :28 :24) // source.ToList() (InvocationExpression)
%7 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\Paging\\PagedList.cs" :30 :36) // Not a variable of known type: items
%8 = cbde.load %3 : memref<i32> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\Paging\\PagedList.cs" :30 :43)
%9 = cbde.load %1 : memref<i32> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\Paging\\PagedList.cs" :30 :50)
%10 = cbde.load %2 : memref<i32> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\Paging\\PagedList.cs" :30 :62)
%11 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\Paging\\PagedList.cs" :30 :19) // new PagedList<T>(items, count, pageNumber, pageSize) (ObjectCreationExpression)
return %11 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Core\\Paging\\PagedList.cs" :30 :12)

^1: // ExitBlock
cbde.unreachable

}
