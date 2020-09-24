func @_KanbanApp.Web.UI.SwimlineController.Index$$() -> none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Controller\\SwimlineController.cs" :10 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Controller\\SwimlineController.cs" :12 :38) // new SwimlineViewModel() (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Controller\\SwimlineController.cs" :13 :12) // Not a variable of known type: model
%3 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Controller\\SwimlineController.cs" :13 :12) // model.SwimLaneList (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Controller\\SwimlineController.cs" :13 :33) // new List<SwimLane>() (ObjectCreationExpression)
%5 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Controller\\SwimlineController.cs" :15 :12) // Not a variable of known type: model
%6 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Controller\\SwimlineController.cs" :15 :12) // model.BoardItem (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Controller\\SwimlineController.cs" :15 :30) // new Board()             {                 BoardId = Guid.NewGuid().ToString(),                  Name = "Yapilacak Isler"             } (ObjectCreationExpression)
// Entity from another assembly: Guid
%8 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Controller\\SwimlineController.cs" :17 :26) // Guid.NewGuid() (InvocationExpression)
%9 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Controller\\SwimlineController.cs" :17 :26) // Guid.NewGuid().ToString() (InvocationExpression)
%10 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Controller\\SwimlineController.cs" :18 :23) // "Yapilacak Isler" (StringLiteralExpression)
%11 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Controller\\SwimlineController.cs" :22 :12) // Not a variable of known type: model
%12 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Controller\\SwimlineController.cs" :22 :12) // model.SwimLaneList (SimpleMemberAccessExpression)
%13 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Controller\\SwimlineController.cs" :22 :35) // new SwimLane()             {                 SwimLaneId = Guid.NewGuid().ToString(),                  Name = "Yapilacaklar",                 Cards = new List<Card>() { new Card() { CardId = Guid.NewGuid().ToString(), Name = "Card Name 1", Description = "Aciklama 1" }, new Card() { CardId = Guid.NewGuid().ToString(), Name = "Card Name 2", Description = "Aciklama 2" } }             } (ObjectCreationExpression)
// Entity from another assembly: Guid
%14 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Controller\\SwimlineController.cs" :24 :29) // Guid.NewGuid() (InvocationExpression)
%15 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Controller\\SwimlineController.cs" :24 :29) // Guid.NewGuid().ToString() (InvocationExpression)
%16 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Controller\\SwimlineController.cs" :25 :23) // "Yapilacaklar" (StringLiteralExpression)
%17 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Controller\\SwimlineController.cs" :26 :24) // new List<Card>() { new Card() { CardId = Guid.NewGuid().ToString(), Name = "Card Name 1", Description = "Aciklama 1" }, new Card() { CardId = Guid.NewGuid().ToString(), Name = "Card Name 2", Description = "Aciklama 2" } } (ObjectCreationExpression)
%18 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Controller\\SwimlineController.cs" :26 :43) // new Card() { CardId = Guid.NewGuid().ToString(), Name = "Card Name 1", Description = "Aciklama 1" } (ObjectCreationExpression)
// Entity from another assembly: Guid
%19 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Controller\\SwimlineController.cs" :26 :65) // Guid.NewGuid() (InvocationExpression)
%20 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Controller\\SwimlineController.cs" :26 :65) // Guid.NewGuid().ToString() (InvocationExpression)
%21 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Controller\\SwimlineController.cs" :26 :99) // "Card Name 1" (StringLiteralExpression)
%22 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Controller\\SwimlineController.cs" :26 :128) // "Aciklama 1" (StringLiteralExpression)
%23 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Controller\\SwimlineController.cs" :26 :144) // new Card() { CardId = Guid.NewGuid().ToString(), Name = "Card Name 2", Description = "Aciklama 2" } (ObjectCreationExpression)
// Entity from another assembly: Guid
%24 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Controller\\SwimlineController.cs" :26 :166) // Guid.NewGuid() (InvocationExpression)
%25 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Controller\\SwimlineController.cs" :26 :166) // Guid.NewGuid().ToString() (InvocationExpression)
%26 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Controller\\SwimlineController.cs" :26 :200) // "Card Name 2" (StringLiteralExpression)
%27 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Controller\\SwimlineController.cs" :26 :229) // "Aciklama 2" (StringLiteralExpression)
%28 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Controller\\SwimlineController.cs" :22 :12) // model.SwimLaneList.Add(new SwimLane()             {                 SwimLaneId = Guid.NewGuid().ToString(),                  Name = "Yapilacaklar",                 Cards = new List<Card>() { new Card() { CardId = Guid.NewGuid().ToString(), Name = "Card Name 1", Description = "Aciklama 1" }, new Card() { CardId = Guid.NewGuid().ToString(), Name = "Card Name 2", Description = "Aciklama 2" } }             }) (InvocationExpression)
%29 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Controller\\SwimlineController.cs" :29 :12) // Not a variable of known type: model
%30 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Controller\\SwimlineController.cs" :29 :12) // model.SwimLaneList (SimpleMemberAccessExpression)
%31 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Controller\\SwimlineController.cs" :29 :35) // new SwimLane()             {                 SwimLaneId = Guid.NewGuid().ToString(),                  Name = "Yapiliyor",                 Cards = new List<Card>() { new Card() { CardId = Guid.NewGuid().ToString(), Name = "Card Name 3", Description = "Aciklama 3" }, new Card() { CardId = Guid.NewGuid().ToString(), Name = "Card Name 4", Description = "Aciklama 4" } }             } (ObjectCreationExpression)
// Entity from another assembly: Guid
%32 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Controller\\SwimlineController.cs" :31 :29) // Guid.NewGuid() (InvocationExpression)
%33 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Controller\\SwimlineController.cs" :31 :29) // Guid.NewGuid().ToString() (InvocationExpression)
%34 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Controller\\SwimlineController.cs" :32 :23) // "Yapiliyor" (StringLiteralExpression)
%35 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Controller\\SwimlineController.cs" :33 :24) // new List<Card>() { new Card() { CardId = Guid.NewGuid().ToString(), Name = "Card Name 3", Description = "Aciklama 3" }, new Card() { CardId = Guid.NewGuid().ToString(), Name = "Card Name 4", Description = "Aciklama 4" } } (ObjectCreationExpression)
%36 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Controller\\SwimlineController.cs" :33 :43) // new Card() { CardId = Guid.NewGuid().ToString(), Name = "Card Name 3", Description = "Aciklama 3" } (ObjectCreationExpression)
// Entity from another assembly: Guid
%37 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Controller\\SwimlineController.cs" :33 :65) // Guid.NewGuid() (InvocationExpression)
%38 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Controller\\SwimlineController.cs" :33 :65) // Guid.NewGuid().ToString() (InvocationExpression)
%39 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Controller\\SwimlineController.cs" :33 :99) // "Card Name 3" (StringLiteralExpression)
%40 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Controller\\SwimlineController.cs" :33 :128) // "Aciklama 3" (StringLiteralExpression)
%41 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Controller\\SwimlineController.cs" :33 :144) // new Card() { CardId = Guid.NewGuid().ToString(), Name = "Card Name 4", Description = "Aciklama 4" } (ObjectCreationExpression)
// Entity from another assembly: Guid
%42 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Controller\\SwimlineController.cs" :33 :166) // Guid.NewGuid() (InvocationExpression)
%43 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Controller\\SwimlineController.cs" :33 :166) // Guid.NewGuid().ToString() (InvocationExpression)
%44 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Controller\\SwimlineController.cs" :33 :200) // "Card Name 4" (StringLiteralExpression)
%45 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Controller\\SwimlineController.cs" :33 :229) // "Aciklama 4" (StringLiteralExpression)
%46 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Controller\\SwimlineController.cs" :29 :12) // model.SwimLaneList.Add(new SwimLane()             {                 SwimLaneId = Guid.NewGuid().ToString(),                  Name = "Yapiliyor",                 Cards = new List<Card>() { new Card() { CardId = Guid.NewGuid().ToString(), Name = "Card Name 3", Description = "Aciklama 3" }, new Card() { CardId = Guid.NewGuid().ToString(), Name = "Card Name 4", Description = "Aciklama 4" } }             }) (InvocationExpression)
%47 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Controller\\SwimlineController.cs" :36 :12) // Not a variable of known type: model
%48 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Controller\\SwimlineController.cs" :36 :12) // model.SwimLaneList (SimpleMemberAccessExpression)
%49 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Controller\\SwimlineController.cs" :36 :35) // new SwimLane()             {                 SwimLaneId = Guid.NewGuid().ToString(),                  Name = "Yapildi",                 Cards = new List<Card>() { new Card() { CardId = Guid.NewGuid().ToString(), Name = "Card Name 5", Description = "Aciklama 5" }, new Card() { CardId = Guid.NewGuid().ToString(), Name = "Card Name 6", Description = "Aciklama 6" } }             } (ObjectCreationExpression)
// Entity from another assembly: Guid
%50 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Controller\\SwimlineController.cs" :38 :29) // Guid.NewGuid() (InvocationExpression)
%51 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Controller\\SwimlineController.cs" :38 :29) // Guid.NewGuid().ToString() (InvocationExpression)
%52 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Controller\\SwimlineController.cs" :39 :23) // "Yapildi" (StringLiteralExpression)
%53 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Controller\\SwimlineController.cs" :40 :24) // new List<Card>() { new Card() { CardId = Guid.NewGuid().ToString(), Name = "Card Name 5", Description = "Aciklama 5" }, new Card() { CardId = Guid.NewGuid().ToString(), Name = "Card Name 6", Description = "Aciklama 6" } } (ObjectCreationExpression)
%54 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Controller\\SwimlineController.cs" :40 :43) // new Card() { CardId = Guid.NewGuid().ToString(), Name = "Card Name 5", Description = "Aciklama 5" } (ObjectCreationExpression)
// Entity from another assembly: Guid
%55 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Controller\\SwimlineController.cs" :40 :65) // Guid.NewGuid() (InvocationExpression)
%56 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Controller\\SwimlineController.cs" :40 :65) // Guid.NewGuid().ToString() (InvocationExpression)
%57 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Controller\\SwimlineController.cs" :40 :99) // "Card Name 5" (StringLiteralExpression)
%58 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Controller\\SwimlineController.cs" :40 :128) // "Aciklama 5" (StringLiteralExpression)
%59 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Controller\\SwimlineController.cs" :40 :144) // new Card() { CardId = Guid.NewGuid().ToString(), Name = "Card Name 6", Description = "Aciklama 6" } (ObjectCreationExpression)
// Entity from another assembly: Guid
%60 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Controller\\SwimlineController.cs" :40 :166) // Guid.NewGuid() (InvocationExpression)
%61 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Controller\\SwimlineController.cs" :40 :166) // Guid.NewGuid().ToString() (InvocationExpression)
%62 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Controller\\SwimlineController.cs" :40 :200) // "Card Name 6" (StringLiteralExpression)
%63 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Controller\\SwimlineController.cs" :40 :229) // "Aciklama 6" (StringLiteralExpression)
%64 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Controller\\SwimlineController.cs" :36 :12) // model.SwimLaneList.Add(new SwimLane()             {                 SwimLaneId = Guid.NewGuid().ToString(),                  Name = "Yapildi",                 Cards = new List<Card>() { new Card() { CardId = Guid.NewGuid().ToString(), Name = "Card Name 5", Description = "Aciklama 5" }, new Card() { CardId = Guid.NewGuid().ToString(), Name = "Card Name 6", Description = "Aciklama 6" } }             }) (InvocationExpression)
// Entity from another assembly: View
%65 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Controller\\SwimlineController.cs" :43 :24) // Not a variable of known type: model
%66 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Controller\\SwimlineController.cs" :43 :19) // View(model) (InvocationExpression)
return %66 : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.Web.UI\\Controller\\SwimlineController.cs" :43 :12)

^1: // ExitBlock
cbde.unreachable

}
