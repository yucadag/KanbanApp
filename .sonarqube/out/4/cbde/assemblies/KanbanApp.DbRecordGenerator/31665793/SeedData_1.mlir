func @_KanbanApp.DbRecordGenerator.SeedData.Up$Microsoft.EntityFrameworkCore.Migrations.MigrationBuilder$(none) -> () loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.DbRecordGenerator\\SeedData.cs" :9 :8) {
^entry (%_migrationBuilder : none):
%0 = cbde.alloca none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.DbRecordGenerator\\SeedData.cs" :9 :35)
cbde.store %_migrationBuilder, %0 : memref<none> loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.DbRecordGenerator\\SeedData.cs" :9 :35)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.DbRecordGenerator\\SeedData.cs" :11 :12) // Not a variable of known type: migrationBuilder
%2 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.DbRecordGenerator\\SeedData.cs" :12 :23) // "Boards" (StringLiteralExpression)
%3 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.DbRecordGenerator\\SeedData.cs" :13 :25) // new[] { "BoardId", "Name" } (ImplicitArrayCreationExpression)
%4 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.DbRecordGenerator\\SeedData.cs" :13 :33) // "BoardId" (StringLiteralExpression)
%5 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.DbRecordGenerator\\SeedData.cs" :13 :44) // "Name" (StringLiteralExpression)
%6 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.DbRecordGenerator\\SeedData.cs" :14 :35) //  (OmittedArraySizeExpression)
%7 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.DbRecordGenerator\\SeedData.cs" :14 :28) // object[] (ArrayType)
%8 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.DbRecordGenerator\\SeedData.cs" :14 :24) // new object[] { new Guid("2a6ff594-9b69-42bf-a95e-ef5a4ff37f41"), "OPERATIONAL JOBS" } (ArrayCreationExpression)
%9 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.DbRecordGenerator\\SeedData.cs" :14 :48) // "2a6ff594-9b69-42bf-a95e-ef5a4ff37f41" (StringLiteralExpression)
%10 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.DbRecordGenerator\\SeedData.cs" :14 :39) // new Guid("2a6ff594-9b69-42bf-a95e-ef5a4ff37f41") (ObjectCreationExpression)
%11 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.DbRecordGenerator\\SeedData.cs" :14 :89) // "OPERATIONAL JOBS" (StringLiteralExpression)
%12 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.DbRecordGenerator\\SeedData.cs" :11 :12) // migrationBuilder.InsertData(                  table: "Boards",                  columns: new[] { "BoardId", "Name" },                  values: new object[] { new Guid("2a6ff594-9b69-42bf-a95e-ef5a4ff37f41"), "OPERATIONAL JOBS" }) (InvocationExpression)
%13 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.DbRecordGenerator\\SeedData.cs" :16 :12) // Not a variable of known type: migrationBuilder
%14 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.DbRecordGenerator\\SeedData.cs" :17 :23) // "SwimLanes" (StringLiteralExpression)
%15 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.DbRecordGenerator\\SeedData.cs" :18 :25) // new[] { "BoardId", "SwimLaneId", "Name", "Position", "SettingsSwimLaneSettingId" } (ImplicitArrayCreationExpression)
%16 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.DbRecordGenerator\\SeedData.cs" :18 :33) // "BoardId" (StringLiteralExpression)
%17 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.DbRecordGenerator\\SeedData.cs" :18 :44) // "SwimLaneId" (StringLiteralExpression)
%18 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.DbRecordGenerator\\SeedData.cs" :18 :58) // "Name" (StringLiteralExpression)
%19 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.DbRecordGenerator\\SeedData.cs" :18 :66) // "Position" (StringLiteralExpression)
%20 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.DbRecordGenerator\\SeedData.cs" :18 :78) // "SettingsSwimLaneSettingId" (StringLiteralExpression)
%21 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.DbRecordGenerator\\SeedData.cs" :19 :35) //  (OmittedArraySizeExpression)
%22 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.DbRecordGenerator\\SeedData.cs" :19 :28) // object[] (ArrayType)
%23 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.DbRecordGenerator\\SeedData.cs" :19 :24) // new object[] { new Guid("2a6ff594-9b69-42bf-a95e-ef5a4ff37f41"), new Guid("1f7bcb29-e807-4b77-a1c1-f4b172d42372"), "Backlog", 1, new Guid("75fdbb01-02e3-452a-bced-5288b32d588d") } (ArrayCreationExpression)
%24 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.DbRecordGenerator\\SeedData.cs" :19 :48) // "2a6ff594-9b69-42bf-a95e-ef5a4ff37f41" (StringLiteralExpression)
%25 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.DbRecordGenerator\\SeedData.cs" :19 :39) // new Guid("2a6ff594-9b69-42bf-a95e-ef5a4ff37f41") (ObjectCreationExpression)
%26 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.DbRecordGenerator\\SeedData.cs" :19 :98) // "1f7bcb29-e807-4b77-a1c1-f4b172d42372" (StringLiteralExpression)
%27 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.DbRecordGenerator\\SeedData.cs" :19 :89) // new Guid("1f7bcb29-e807-4b77-a1c1-f4b172d42372") (ObjectCreationExpression)
%28 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.DbRecordGenerator\\SeedData.cs" :19 :139) // "Backlog" (StringLiteralExpression)
%29 = constant 1 : i32 loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.DbRecordGenerator\\SeedData.cs" :19 :150)
%30 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.DbRecordGenerator\\SeedData.cs" :19 :162) // "75fdbb01-02e3-452a-bced-5288b32d588d" (StringLiteralExpression)
%31 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.DbRecordGenerator\\SeedData.cs" :19 :153) // new Guid("75fdbb01-02e3-452a-bced-5288b32d588d") (ObjectCreationExpression)
%32 = cbde.unknown : none loc("C:\\TFSProjects\\KanbanApp\\KanbanApp.DbRecordGenerator\\SeedData.cs" :16 :12) // migrationBuilder.InsertData(                  table: "SwimLanes",                  columns: new[] { "BoardId", "SwimLaneId", "Name", "Position", "SettingsSwimLaneSettingId" },                  values: new object[] { new Guid("2a6ff594-9b69-42bf-a95e-ef5a4ff37f41"), new Guid("1f7bcb29-e807-4b77-a1c1-f4b172d42372"), "Backlog", 1, new Guid("75fdbb01-02e3-452a-bced-5288b32d588d") }) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
