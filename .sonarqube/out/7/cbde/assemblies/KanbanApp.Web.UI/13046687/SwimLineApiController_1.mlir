func @_KanbanApp.Web.UI.Api.SwimLineApi.SwimLineApiController.Get$$() -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Api\\SwimLineApi\\SwimLineApiController.cs" :11 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Api\\SwimLineApi\\SwimLineApiController.cs" :14 :30) //  (OmittedArraySizeExpression)
%1 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Api\\SwimLineApi\\SwimLineApiController.cs" :14 :23) // string[] (ArrayType)
%2 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Api\\SwimLineApi\\SwimLineApiController.cs" :14 :19) // new string[] { "value1", "value2" } (ArrayCreationExpression)
%3 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Api\\SwimLineApi\\SwimLineApiController.cs" :14 :34) // "value1" (StringLiteralExpression)
%4 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Api\\SwimLineApi\\SwimLineApiController.cs" :14 :44) // "value2" (StringLiteralExpression)
return %2 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Api\\SwimLineApi\\SwimLineApiController.cs" :14 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_KanbanApp.Web.UI.Api.SwimLineApi.SwimLineApiController.Get$int$(i32) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Api\\SwimLineApi\\SwimLineApiController.cs" :18 :8) {
^entry (%_id : i32):
%0 = cbde.alloca i32 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Api\\SwimLineApi\\SwimLineApiController.cs" :19 :26)
cbde.store %_id, %0 : memref<i32> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Api\\SwimLineApi\\SwimLineApiController.cs" :19 :26)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Api\\SwimLineApi\\SwimLineApiController.cs" :21 :19) // "value" (StringLiteralExpression)
return %1 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Api\\SwimLineApi\\SwimLineApiController.cs" :21 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_KanbanApp.Web.UI.Api.SwimLineApi.SwimLineApiController.Post$string$(none) -> () loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Api\\SwimLineApi\\SwimLineApiController.cs" :25 :8) {
^entry (%_value : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Api\\SwimLineApi\\SwimLineApiController.cs" :26 :25)
cbde.store %_value, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Api\\SwimLineApi\\SwimLineApiController.cs" :26 :25)
br ^0

^0: // ExitBlock
return

}
func @_KanbanApp.Web.UI.Api.SwimLineApi.SwimLineApiController.Put$int.string$(i32, none) -> () loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Api\\SwimLineApi\\SwimLineApiController.cs" :31 :8) {
^entry (%_id : i32, %_value : none):
%0 = cbde.alloca i32 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Api\\SwimLineApi\\SwimLineApiController.cs" :32 :24)
cbde.store %_id, %0 : memref<i32> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Api\\SwimLineApi\\SwimLineApiController.cs" :32 :24)
%1 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Api\\SwimLineApi\\SwimLineApiController.cs" :32 :32)
cbde.store %_value, %1 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Api\\SwimLineApi\\SwimLineApiController.cs" :32 :32)
br ^0

^0: // ExitBlock
return

}
func @_KanbanApp.Web.UI.Api.SwimLineApi.SwimLineApiController.Delete$int$(i32) -> () loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Api\\SwimLineApi\\SwimLineApiController.cs" :37 :8) {
^entry (%_id : i32):
%0 = cbde.alloca i32 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Api\\SwimLineApi\\SwimLineApiController.cs" :38 :27)
cbde.store %_id, %0 : memref<i32> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Api\\SwimLineApi\\SwimLineApiController.cs" :38 :27)
br ^0

^0: // ExitBlock
return

}
