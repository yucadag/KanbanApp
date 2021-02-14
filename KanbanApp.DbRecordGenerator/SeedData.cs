using Microsoft.EntityFrameworkCore.Migrations;
using System;

namespace KanbanApp.DbRecordGenerator
{
    public partial class SeedData : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.InsertData(
                table: "Boards",
                columns: new[] { "BoardId", "Name" },
                values: new object[] { new Guid("2a6ff594-9b69-42bf-a95e-ef5a4ff37f41"), "OPERATIONAL JOBS" });

            migrationBuilder.InsertData(
                table: "SwimLanes",
                columns: new[] { "BoardId", "SwimLaneId", "Name", "Position", "SettingsSwimLaneSettingId" },
                values: new object[] { new Guid("2a6ff594-9b69-42bf-a95e-ef5a4ff37f41"), new Guid("1f7bcb29-e807-4b77-a1c1-f4b172d42372"), "Backlog", 1, new Guid("75fdbb01-02e3-452a-bced-5288b32d588d") });
        }

        //protected override void Down(MigrationBuilder migrationBuilder)
        //{
        //    migrationBuilder.DeleteData(
        //        table: "Student",
        //        keyColumn: "StudentId",
        //        keyValue: new Guid("0065241c-e0b7-4e72-92a5-63750dc77b9e"));

        //    migrationBuilder.DeleteData(
        //        table: "Student",
        //        keyColumn: "StudentId",
        //        keyValue: new Guid("4df91002-8398-4fde-a874-04d58b7b8c9d"));
        //}
    }

}
