// Skipping function Add(none), it contains poisonous unsupported syntaxes

// Skipping function Delete(none), it contains poisonous unsupported syntaxes

// Skipping function Get(none), it contains poisonous unsupported syntaxes

// Skipping function GetCardAttachments(none), it contains poisonous unsupported syntaxes

// Skipping function GetList(none), it contains poisonous unsupported syntaxes

func @_KanbanApp.Services.Concrete.CardService.Update$KanbanApp.Services.DTO.Input.CardServiceInput.CardUpdateInput$(none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\CardService.cs" :185 :8) {
^entry (%_input : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\CardService.cs" :185 :54)
cbde.store %_input, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\CardService.cs" :185 :54)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\CardService.cs" :187 :18) // new NotImplementedException() (ObjectCreationExpression)
cbde.throw %1 :  none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Services\\Concrete\\CardService.cs" :187 :12)

^1: // ExitBlock
cbde.unreachable

}
