using System;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;

namespace KanbanApp.Api.Migrations
{
    public partial class MyFirstMigration : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Boards",
                columns: table => new
                {
                    BoardId = table.Column<string>(nullable: false),
                    OwnerId = table.Column<string>(nullable: true),
                    Name = table.Column<string>(nullable: true),
                    Description = table.Column<string>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Boards", x => x.BoardId);
                });

            migrationBuilder.CreateTable(
                name: "CardTypes",
                columns: table => new
                {
                    CardTypeId = table.Column<string>(nullable: false),
                    Name = table.Column<string>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CardTypes", x => x.CardTypeId);
                });

            migrationBuilder.CreateTable(
                name: "CardWeightSize",
                columns: table => new
                {
                    CardWeightSizeId = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn),
                    CardWeightSizeName = table.Column<string>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CardWeightSize", x => x.CardWeightSizeId);
                });

            migrationBuilder.CreateTable(
                name: "Priority",
                columns: table => new
                {
                    PriorityId = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn),
                    Name = table.Column<string>(nullable: true),
                    Color = table.Column<string>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Priority", x => x.PriorityId);
                });

            migrationBuilder.CreateTable(
                name: "SwimLaneSetting",
                columns: table => new
                {
                    SwimLaneSettingId = table.Column<string>(nullable: false),
                    HeaderColor = table.Column<string>(nullable: true),
                    BackgroundColor = table.Column<string>(nullable: true),
                    MaxCardCount = table.Column<int>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_SwimLaneSetting", x => x.SwimLaneSettingId);
                });

            migrationBuilder.CreateTable(
                name: "Settings",
                columns: table => new
                {
                    SettingId = table.Column<string>(nullable: false),
                    SettingsName = table.Column<string>(nullable: true),
                    Value = table.Column<string>(nullable: true),
                    BoardId = table.Column<string>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Settings", x => x.SettingId);
                    table.ForeignKey(
                        name: "FK_Settings_Boards_BoardId",
                        column: x => x.BoardId,
                        principalTable: "Boards",
                        principalColumn: "BoardId",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "SwimLanes",
                columns: table => new
                {
                    BoardId = table.Column<string>(nullable: true),
                    SwimLaneId = table.Column<string>(nullable: false),
                    Name = table.Column<string>(nullable: true),
                    Position = table.Column<int>(nullable: false),
                    SettingsSwimLaneSettingId = table.Column<string>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_SwimLanes", x => x.SwimLaneId);
                    table.ForeignKey(
                        name: "FK_SwimLanes_Boards_BoardId",
                        column: x => x.BoardId,
                        principalTable: "Boards",
                        principalColumn: "BoardId",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_SwimLanes_SwimLaneSetting_SettingsSwimLaneSettingId",
                        column: x => x.SettingsSwimLaneSettingId,
                        principalTable: "SwimLaneSetting",
                        principalColumn: "SwimLaneSettingId",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "Cards",
                columns: table => new
                {
                    BoardId = table.Column<string>(nullable: true),
                    SwimLaneId = table.Column<string>(nullable: true),
                    CardId = table.Column<string>(nullable: false),
                    Name = table.Column<string>(nullable: true),
                    Description = table.Column<string>(nullable: true),
                    CardPriorityPriorityId = table.Column<int>(nullable: true),
                    TypeCardTypeId = table.Column<string>(nullable: true),
                    CardPosition = table.Column<int>(nullable: false),
                    CardWeightSizeId = table.Column<int>(nullable: true),
                    EstimateHours = table.Column<int>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Cards", x => x.CardId);
                    table.ForeignKey(
                        name: "FK_Cards_Priority_CardPriorityPriorityId",
                        column: x => x.CardPriorityPriorityId,
                        principalTable: "Priority",
                        principalColumn: "PriorityId",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_Cards_CardWeightSize_CardWeightSizeId",
                        column: x => x.CardWeightSizeId,
                        principalTable: "CardWeightSize",
                        principalColumn: "CardWeightSizeId",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_Cards_SwimLanes_SwimLaneId",
                        column: x => x.SwimLaneId,
                        principalTable: "SwimLanes",
                        principalColumn: "SwimLaneId",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_Cards_CardTypes_TypeCardTypeId",
                        column: x => x.TypeCardTypeId,
                        principalTable: "CardTypes",
                        principalColumn: "CardTypeId",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "CardAttachments",
                columns: table => new
                {
                    CardId = table.Column<string>(nullable: true),
                    CardAttachmentId = table.Column<string>(nullable: false),
                    AttachmentName = table.Column<string>(nullable: true),
                    AttachmentDownloadLink = table.Column<string>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CardAttachments", x => x.CardAttachmentId);
                    table.ForeignKey(
                        name: "FK_CardAttachments_Cards_CardId",
                        column: x => x.CardId,
                        principalTable: "Cards",
                        principalColumn: "CardId",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "CardTask",
                columns: table => new
                {
                    CardTaskId = table.Column<string>(nullable: false),
                    Text = table.Column<string>(nullable: true),
                    CardTaskState = table.Column<int>(nullable: false),
                    DueDate = table.Column<DateTime>(nullable: false),
                    Estimate = table.Column<float>(nullable: false),
                    CardId = table.Column<string>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CardTask", x => x.CardTaskId);
                    table.ForeignKey(
                        name: "FK_CardTask_Cards_CardId",
                        column: x => x.CardId,
                        principalTable: "Cards",
                        principalColumn: "CardId",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "Tag",
                columns: table => new
                {
                    TagId = table.Column<string>(nullable: false),
                    Name = table.Column<string>(nullable: true),
                    CardId = table.Column<string>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Tag", x => x.TagId);
                    table.ForeignKey(
                        name: "FK_Tag_Cards_CardId",
                        column: x => x.CardId,
                        principalTable: "Cards",
                        principalColumn: "CardId",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "Users",
                columns: table => new
                {
                    UserId = table.Column<string>(nullable: false),
                    UserName = table.Column<string>(nullable: true),
                    EMail = table.Column<string>(nullable: true),
                    Name = table.Column<string>(nullable: true),
                    Surname = table.Column<string>(nullable: true),
                    ProfilePicture = table.Column<string>(nullable: true),
                    CardId = table.Column<string>(nullable: true),
                    CardTaskId = table.Column<string>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Users", x => x.UserId);
                    table.ForeignKey(
                        name: "FK_Users_Cards_CardId",
                        column: x => x.CardId,
                        principalTable: "Cards",
                        principalColumn: "CardId",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_Users_CardTask_CardTaskId",
                        column: x => x.CardTaskId,
                        principalTable: "CardTask",
                        principalColumn: "CardTaskId",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateIndex(
                name: "IX_CardAttachments_CardId",
                table: "CardAttachments",
                column: "CardId");

            migrationBuilder.CreateIndex(
                name: "IX_Cards_CardPriorityPriorityId",
                table: "Cards",
                column: "CardPriorityPriorityId");

            migrationBuilder.CreateIndex(
                name: "IX_Cards_CardWeightSizeId",
                table: "Cards",
                column: "CardWeightSizeId");

            migrationBuilder.CreateIndex(
                name: "IX_Cards_SwimLaneId",
                table: "Cards",
                column: "SwimLaneId");

            migrationBuilder.CreateIndex(
                name: "IX_Cards_TypeCardTypeId",
                table: "Cards",
                column: "TypeCardTypeId");

            migrationBuilder.CreateIndex(
                name: "IX_CardTask_CardId",
                table: "CardTask",
                column: "CardId");

            migrationBuilder.CreateIndex(
                name: "IX_Settings_BoardId",
                table: "Settings",
                column: "BoardId");

            migrationBuilder.CreateIndex(
                name: "IX_SwimLanes_BoardId",
                table: "SwimLanes",
                column: "BoardId");

            migrationBuilder.CreateIndex(
                name: "IX_SwimLanes_SettingsSwimLaneSettingId",
                table: "SwimLanes",
                column: "SettingsSwimLaneSettingId");

            migrationBuilder.CreateIndex(
                name: "IX_Tag_CardId",
                table: "Tag",
                column: "CardId");

            migrationBuilder.CreateIndex(
                name: "IX_Users_CardId",
                table: "Users",
                column: "CardId");

            migrationBuilder.CreateIndex(
                name: "IX_Users_CardTaskId",
                table: "Users",
                column: "CardTaskId");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "CardAttachments");

            migrationBuilder.DropTable(
                name: "Settings");

            migrationBuilder.DropTable(
                name: "Tag");

            migrationBuilder.DropTable(
                name: "Users");

            migrationBuilder.DropTable(
                name: "CardTask");

            migrationBuilder.DropTable(
                name: "Cards");

            migrationBuilder.DropTable(
                name: "Priority");

            migrationBuilder.DropTable(
                name: "CardWeightSize");

            migrationBuilder.DropTable(
                name: "SwimLanes");

            migrationBuilder.DropTable(
                name: "CardTypes");

            migrationBuilder.DropTable(
                name: "Boards");

            migrationBuilder.DropTable(
                name: "SwimLaneSetting");
        }
    }
}
