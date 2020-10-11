func @_KanbanApp.Api.Controllers.BoardController.Get$KanbanApp.Api.Models.Boards.Input.BoardGetInput$(none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :39 :8) {
^entry (%_input : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :40 :48)
cbde.store %_input, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :40 :48)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :42 :70) // Not a variable of known type: input
%2 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :42 :70) // input.BoardId (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :42 :44) // new GetBoardDetailCommand(input.BoardId) (ObjectCreationExpression)
%5 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :43 :41) // new BoardGetOutput() (ObjectCreationExpression)
%7 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :45 :55) // Not a variable of known type: _boardService
%8 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :45 :73) // Not a variable of known type: command
%9 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :45 :55) // _boardService.Get(command) (InvocationExpression)
%11 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :46 :16) // Not a variable of known type: result
%12 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :46 :16) // result.Result (SimpleMemberAccessExpression)
%13 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :46 :16) // result.Result.ResultObject (SimpleMemberAccessExpression)
%14 = cbde.unknown : i1 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :46 :16) // result.Result.ResultObject.Success (SimpleMemberAccessExpression)
cond_br %14, ^1, ^2 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :46 :16)

^1: // JumpBlock
%15 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :48 :16) // Not a variable of known type: returnValue
%16 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :48 :16) // returnValue.BoardId (SimpleMemberAccessExpression)
%17 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :48 :38) // Not a variable of known type: result
%18 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :48 :38) // result.Result (SimpleMemberAccessExpression)
%19 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :48 :38) // result.Result.ResultObject (SimpleMemberAccessExpression)
%20 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :48 :38) // result.Result.ResultObject.Data (SimpleMemberAccessExpression)
%21 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :48 :38) // result.Result.ResultObject.Data.BoardId (SimpleMemberAccessExpression)
%22 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :49 :16) // Not a variable of known type: returnValue
%23 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :49 :16) // returnValue.Name (SimpleMemberAccessExpression)
%24 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :49 :35) // Not a variable of known type: result
%25 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :49 :35) // result.Result (SimpleMemberAccessExpression)
%26 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :49 :35) // result.Result.ResultObject (SimpleMemberAccessExpression)
%27 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :49 :35) // result.Result.ResultObject.Data (SimpleMemberAccessExpression)
%28 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :49 :35) // result.Result.ResultObject.Data.Name (SimpleMemberAccessExpression)
%29 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :50 :16) // Not a variable of known type: returnValue
%30 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :50 :16) // returnValue.Description (SimpleMemberAccessExpression)
%31 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :50 :42) // Not a variable of known type: result
%32 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :50 :42) // result.Result (SimpleMemberAccessExpression)
%33 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :50 :42) // result.Result.ResultObject (SimpleMemberAccessExpression)
%34 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :50 :42) // result.Result.ResultObject.Data (SimpleMemberAccessExpression)
%35 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :50 :42) // result.Result.ResultObject.Data.Description (SimpleMemberAccessExpression)
%36 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :51 :16) // Not a variable of known type: returnValue
%37 = cbde.unknown : i1 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :51 :16) // returnValue.IsSuccess (SimpleMemberAccessExpression)
%38 = constant 1 : i1 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :51 :40) // true
// Entity from another assembly: Ok
%39 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :52 :26) // Not a variable of known type: returnValue
%40 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :52 :23) // Ok(returnValue) (InvocationExpression)
return %40 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :52 :16)

^2: // JumpBlock
%41 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :57 :16) // Not a variable of known type: returnValue
%42 = cbde.unknown : i1 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :57 :16) // returnValue.IsSuccess (SimpleMemberAccessExpression)
%43 = constant 0 : i1 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :57 :40) // false
%44 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :58 :16) // Not a variable of known type: returnValue
%45 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :58 :16) // returnValue.MessageList (SimpleMemberAccessExpression)
%46 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :58 :42) // new List<string>() (ObjectCreationExpression)
%47 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :59 :16) // Not a variable of known type: returnValue
%48 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :59 :16) // returnValue.MessageList (SimpleMemberAccessExpression)
%49 = constant 0 : i32 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :59 :40)
%50 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :59 :16) // returnValue.MessageList[0] (ElementAccessExpression)
%51 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :59 :45) // Not a variable of known type: result
%52 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :59 :45) // result.Result (SimpleMemberAccessExpression)
%53 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :59 :45) // result.Result.ResultObject (SimpleMemberAccessExpression)
%54 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :59 :45) // result.Result.ResultObject.GetErrorMessageList() (InvocationExpression)
%55 = constant 0 : i32 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :59 :94)
%56 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :59 :45) // result.Result.ResultObject.GetErrorMessageList()[0] (ElementAccessExpression)
%57 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :59 :45) // result.Result.ResultObject.GetErrorMessageList()[0].UserFriendlyText (SimpleMemberAccessExpression)
// Entity from another assembly: BadRequest
%58 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :60 :34) // Not a variable of known type: returnValue
%59 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :60 :23) // BadRequest(returnValue) (InvocationExpression)
return %59 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :60 :16)

^3: // ExitBlock
cbde.unreachable

}
func @_KanbanApp.Api.Controllers.BoardController.GetBoardListCommandResultItemToBoardGetOutput$KanbanApp.Services.UseCases.Boards.GetBoardList.GetBoardListCommandResultItem$(none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :64 :8) {
^entry (%_input : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :64 :83)
cbde.store %_input, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :64 :83)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :66 :19) // new BoardGetOutput()              {                  BoardId = input.BoardId,                  Name = input.Name,                  Description = input.Description                } (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :68 :26) // Not a variable of known type: input
%3 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :68 :26) // input.BoardId (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :69 :23) // Not a variable of known type: input
%5 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :69 :23) // input.Name (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :70 :30) // Not a variable of known type: input
%7 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :70 :30) // input.Description (SimpleMemberAccessExpression)
return %1 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :66 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_KanbanApp.Api.Controllers.BoardController.GetList$$() -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :79 :8) {
^entry :
br ^0

^0: // BinaryBranchBlock
%0 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :83 :42) // new GetBoardListCommand() (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :84 :47) // new List<BoardGetOutput>() (ObjectCreationExpression)
%4 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :85 :53) // Not a variable of known type: _boardService
%5 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :85 :75) // Not a variable of known type: command
%6 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :85 :53) // _boardService.GetList(command) (InvocationExpression)
%8 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :86 :16) // Not a variable of known type: result
%9 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :86 :16) // result.Result (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :86 :16) // result.Result.ResultObject (SimpleMemberAccessExpression)
%11 = cbde.unknown : i1 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :86 :16) // result.Result.ResultObject.Success (SimpleMemberAccessExpression)
cond_br %11, ^1, ^2 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :86 :16)

^1: // JumpBlock
%12 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :88 :30) // Not a variable of known type: result
%13 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :88 :30) // result.Result (SimpleMemberAccessExpression)
%14 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :88 :30) // result.Result.ResultObject (SimpleMemberAccessExpression)
%15 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :88 :30) // result.Result.ResultObject.Data (SimpleMemberAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: GetBoardListCommandResultItemToBoardGetOutput
%16 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :88 :89) // new Converter<GetBoardListCommandResultItem, BoardGetOutput>(GetBoardListCommandResultItemToBoardGetOutput) (ObjectCreationExpression)
%17 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :88 :30) // result.Result.ResultObject.Data.ConvertAll<BoardGetOutput>(new Converter<GetBoardListCommandResultItem, BoardGetOutput>(GetBoardListCommandResultItemToBoardGetOutput)) (InvocationExpression)
// Entity from another assembly: Ok
%18 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :89 :26) // Not a variable of known type: returnValue
%19 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :89 :23) // Ok(returnValue) (InvocationExpression)
return %19 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :89 :16)

^2: // JumpBlock
// Entity from another assembly: BadRequest
%20 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :93 :34) // Not a variable of known type: returnValue
%21 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :93 :23) // BadRequest(returnValue) (InvocationExpression)
return %21 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :93 :16)

^3: // ExitBlock
cbde.unreachable

}
func @_KanbanApp.Api.Controllers.BoardController.Add$KanbanApp.Api.Models.Boards.Input.BoardAddInput$(none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :102 :8) {
^entry (%_input : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :104 :48)
cbde.store %_input, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :104 :48)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :106 :64) // Not a variable of known type: input
%2 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :106 :64) // input.BoardId (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :106 :79) // string (PredefinedType)
%4 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :106 :79) // string.Empty (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :106 :93) // Not a variable of known type: input
%6 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :106 :93) // input.Name (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :106 :105) // Not a variable of known type: input
%8 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :106 :105) // input.Description (SimpleMemberAccessExpression)
%9 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :106 :41) // new CreateBoardCommand(input.BoardId, string.Empty, input.Name, input.Description) (ObjectCreationExpression)
%11 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :107 :41) // new BoardAddOutput() (ObjectCreationExpression)
%13 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :108 :52) // Not a variable of known type: _boardService
%14 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :108 :70) // Not a variable of known type: command
%15 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :108 :52) // _boardService.Add(command) (InvocationExpression)
%17 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :110 :12) // Not a variable of known type: returnValue
%18 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :110 :12) // returnValue.BoardId (SimpleMemberAccessExpression)
%19 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :110 :34) // Not a variable of known type: result
%20 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :110 :34) // result.Result (SimpleMemberAccessExpression)
%21 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :110 :34) // result.Result.ResultObject (SimpleMemberAccessExpression)
%22 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :110 :34) // result.Result.ResultObject.Data (SimpleMemberAccessExpression)
%23 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :110 :34) // result.Result.ResultObject.Data.BoardId (SimpleMemberAccessExpression)
%24 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :111 :12) // Not a variable of known type: returnValue
%25 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :111 :12) // returnValue.Name (SimpleMemberAccessExpression)
%26 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :111 :31) // Not a variable of known type: result
%27 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :111 :31) // result.Result (SimpleMemberAccessExpression)
%28 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :111 :31) // result.Result.ResultObject (SimpleMemberAccessExpression)
%29 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :111 :31) // result.Result.ResultObject.Data (SimpleMemberAccessExpression)
%30 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :111 :31) // result.Result.ResultObject.Data.Name (SimpleMemberAccessExpression)
%31 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :112 :12) // Not a variable of known type: returnValue
%32 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :112 :12) // returnValue.Description (SimpleMemberAccessExpression)
%33 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :112 :38) // Not a variable of known type: result
%34 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :112 :38) // result.Result (SimpleMemberAccessExpression)
%35 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :112 :38) // result.Result.ResultObject (SimpleMemberAccessExpression)
%36 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :112 :38) // result.Result.ResultObject.Data (SimpleMemberAccessExpression)
%37 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :112 :38) // result.Result.ResultObject.Data.Description (SimpleMemberAccessExpression)
%38 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :113 :12) // Not a variable of known type: returnValue
%39 = cbde.unknown : i1 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :113 :12) // returnValue.IsSuccess (SimpleMemberAccessExpression)
%40 = constant 1 : i1 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :113 :36) // true
%41 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :115 :16) // Not a variable of known type: result
%42 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :115 :16) // result.Result (SimpleMemberAccessExpression)
%43 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :115 :16) // result.Result.ResultObject (SimpleMemberAccessExpression)
%44 = cbde.unknown : i1 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :115 :16) // result.Result.ResultObject.Success (SimpleMemberAccessExpression)
cond_br %44, ^1, ^2 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :115 :16)

^1: // JumpBlock
// Entity from another assembly: Ok
%45 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :117 :26) // Not a variable of known type: result
%46 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :117 :23) // Ok(result) (InvocationExpression)
return %46 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :117 :16)

^2: // JumpBlock
%47 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :121 :16) // Not a variable of known type: returnValue
%48 = cbde.unknown : i1 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :121 :16) // returnValue.IsSuccess (SimpleMemberAccessExpression)
%49 = constant 0 : i1 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :121 :40) // false
// Entity from another assembly: BadRequest
%50 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :122 :34) // Not a variable of known type: result
%51 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :122 :23) // BadRequest(result) (InvocationExpression)
return %51 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :122 :16)

^3: // ExitBlock
cbde.unreachable

}
func @_KanbanApp.Api.Controllers.BoardController.Update$KanbanApp.Api.Models.Boards.Input.BoardUpdateInput$(none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :131 :8) {
^entry (%_input : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :133 :61)
cbde.store %_input, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :133 :61)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :135 :41) // new UpdateBoardCommand              {                  BoardId = input.BoardId,                  Name = input.Name,                  Description = input.Description              } (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :137 :26) // Not a variable of known type: input
%3 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :137 :26) // input.BoardId (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :138 :23) // Not a variable of known type: input
%5 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :138 :23) // input.Name (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :139 :30) // Not a variable of known type: input
%7 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :139 :30) // input.Description (SimpleMemberAccessExpression)
%9 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :142 :52) // Not a variable of known type: _boardService
%10 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :142 :73) // Not a variable of known type: command
%11 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :142 :52) // _boardService.Update(command) (InvocationExpression)
%13 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :143 :16) // Not a variable of known type: result
%14 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :143 :16) // result.Result (SimpleMemberAccessExpression)
%15 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :143 :16) // result.Result.ResultObject (SimpleMemberAccessExpression)
%16 = cbde.unknown : i1 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :143 :16) // result.Result.ResultObject.Success (SimpleMemberAccessExpression)
cond_br %16, ^1, ^2 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :143 :16)

^1: // JumpBlock
// Entity from another assembly: Ok
%17 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :145 :26) // Not a variable of known type: result
%18 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :145 :23) // Ok(result) (InvocationExpression)
return %18 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :145 :16)

^2: // JumpBlock
// Entity from another assembly: BadRequest
%19 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :149 :34) // Not a variable of known type: result
%20 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :149 :23) // BadRequest(result) (InvocationExpression)
return %20 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :149 :16)

^3: // ExitBlock
cbde.unreachable

}
func @_KanbanApp.Api.Controllers.BoardController.Delete$KanbanApp.Api.Models.Boards.Input.BoardDeleteInput$(none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :159 :8) {
^entry (%_input : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :161 :61)
cbde.store %_input, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :161 :61)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :163 :64) // Not a variable of known type: input
%2 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :163 :64) // input.BoardId (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :163 :41) // new DeleteBoardCommand(input.BoardId) (ObjectCreationExpression)
%5 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :165 :52) // Not a variable of known type: _boardService
%6 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :165 :73) // Not a variable of known type: command
%7 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :165 :52) // _boardService.Delete(command) (InvocationExpression)
%9 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :166 :16) // Not a variable of known type: result
%10 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :166 :16) // result.Result (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :166 :16) // result.Result.ResultObject (SimpleMemberAccessExpression)
%12 = cbde.unknown : i1 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :166 :16) // result.Result.ResultObject.Success (SimpleMemberAccessExpression)
cond_br %12, ^1, ^2 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :166 :16)

^1: // JumpBlock
// Entity from another assembly: Ok
%13 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :168 :26) // Not a variable of known type: result
%14 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :168 :23) // Ok(result) (InvocationExpression)
return %14 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :168 :16)

^2: // JumpBlock
// Entity from another assembly: BadRequest
%15 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :172 :34) // Not a variable of known type: result
%16 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :172 :23) // BadRequest(result) (InvocationExpression)
return %16 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :172 :16)

^3: // ExitBlock
cbde.unreachable

}
func @_KanbanApp.Api.Controllers.BoardController.GetBoardSwimLanes$string$(none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :182 :8) {
^entry (%_boardId : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :183 :74)
cbde.store %_boardId, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :183 :74)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :185 :53) // new List<BoardSwimlanesOutput>() (ObjectCreationExpression)
%3 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :187 :76) // Not a variable of known type: boardId
%4 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :187 :47) // new GetBoardSwimLanesCommand(boardId) (ObjectCreationExpression)
%6 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :188 :58) // Not a variable of known type: _boardService
%7 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :188 :90) // Not a variable of known type: command
%8 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :188 :58) // _boardService.GetBoardSwimLanes(command) (InvocationExpression)
%10 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :190 :26) // Not a variable of known type: result
%11 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :190 :26) // result.Result (SimpleMemberAccessExpression)
%12 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :190 :26) // result.Result.ResultObject (SimpleMemberAccessExpression)
%13 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :190 :26) // result.Result.ResultObject.Data (SimpleMemberAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: GetBoardSwimLanesCommandResultItemToBoardSwimlanesOutput
%14 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :190 :91) // new Converter<GetBoardSwimLanesCommandResultItem, BoardSwimlanesOutput>(GetBoardSwimLanesCommandResultItemToBoardSwimlanesOutput) (ObjectCreationExpression)
%15 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :190 :26) // result.Result.ResultObject.Data.ConvertAll<BoardSwimlanesOutput>(new Converter<GetBoardSwimLanesCommandResultItem, BoardSwimlanesOutput>(GetBoardSwimLanesCommandResultItemToBoardSwimlanesOutput)) (InvocationExpression)
%16 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :192 :16) // Not a variable of known type: result
%17 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :192 :16) // result.Result (SimpleMemberAccessExpression)
%18 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :192 :16) // result.Result.ResultObject (SimpleMemberAccessExpression)
%19 = cbde.unknown : i1 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :192 :16) // result.Result.ResultObject.Success (SimpleMemberAccessExpression)
cond_br %19, ^1, ^2 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :192 :16)

^1: // JumpBlock
%20 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :194 :16) // Not a variable of known type: returnValue
%21 = constant 0 : i32 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :194 :28)
%22 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :194 :16) // returnValue[0] (ElementAccessExpression)
%23 = cbde.unknown : i1 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :194 :16) // returnValue[0].IsSuccess (SimpleMemberAccessExpression)
%24 = constant 1 : i1 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :194 :43) // true
// Entity from another assembly: Ok
%25 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :195 :26) // Not a variable of known type: returnValue
%26 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :195 :23) // Ok(returnValue) (InvocationExpression)
return %26 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :195 :16)

^2: // JumpBlock
// Entity from another assembly: BadRequest
%27 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :199 :34) // Not a variable of known type: result
%28 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :199 :23) // BadRequest(result) (InvocationExpression)
return %28 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :199 :16)

^3: // ExitBlock
cbde.unreachable

}
func @_KanbanApp.Api.Controllers.BoardController.GetBoardSwimLanesCommandResultItemToBoardSwimlanesOutput$KanbanApp.Services.UseCases.Boards.GetBoardSwimLanes.GetBoardSwimLanesCommandResultItem$(none) -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :204 :8) {
^entry (%_input : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :204 :100)
cbde.store %_input, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :204 :100)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :206 :19) // new BoardSwimlanesOutput()              {                  BoardId = input.BoardId,                  Name = input.Name,                  SwimLaneId = input.SwimLaneId                  } (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :208 :26) // Not a variable of known type: input
%3 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :208 :26) // input.BoardId (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :209 :23) // Not a variable of known type: input
%5 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :209 :23) // input.Name (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :210 :29) // Not a variable of known type: input
%7 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :210 :29) // input.SwimLaneId (SimpleMemberAccessExpression)
return %1 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Api\\Controllers\\BoardController.cs" :206 :12)

^1: // ExitBlock
cbde.unreachable

}
