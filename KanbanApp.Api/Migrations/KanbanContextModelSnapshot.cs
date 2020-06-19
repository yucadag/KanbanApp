﻿// <auto-generated />
using System;
using KanbanApp.Data.Concrete.EntityFramework;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;

namespace KanbanApp.Api.Migrations
{
    [DbContext(typeof(KanbanContext))]
    partial class KanbanContextModelSnapshot : ModelSnapshot
    {
        protected override void BuildModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "2.1.14-servicing-32113")
                .HasAnnotation("Relational:MaxIdentifierLength", 128)
                .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

            modelBuilder.Entity("KanbanApp.Domain.Entities.Board", b =>
                {
                    b.Property<string>("BoardId")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("Description");

                    b.Property<string>("Name");

                    b.Property<string>("OwnerId");

                    b.HasKey("BoardId");

                    b.ToTable("Boards");
                });

            modelBuilder.Entity("KanbanApp.Domain.Entities.Card", b =>
                {
                    b.Property<string>("CardId")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("BoardId");

                    b.Property<int>("CardPosition");

                    b.Property<int?>("CardPriorityPriorityId");

                    b.Property<int?>("CardWeightSizeId");

                    b.Property<string>("Description");

                    b.Property<int>("EstimateHours");

                    b.Property<string>("Name");

                    b.Property<string>("SwimLaneId");

                    b.Property<string>("TypeCardTypeId");

                    b.HasKey("CardId");

                    b.HasIndex("CardPriorityPriorityId");

                    b.HasIndex("CardWeightSizeId");

                    b.HasIndex("SwimLaneId");

                    b.HasIndex("TypeCardTypeId");

                    b.ToTable("Cards");
                });

            modelBuilder.Entity("KanbanApp.Domain.Entities.CardAttachment", b =>
                {
                    b.Property<string>("CardAttachmentId")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("AttachmentDownloadLink");

                    b.Property<string>("AttachmentName");

                    b.Property<string>("CardId");

                    b.HasKey("CardAttachmentId");

                    b.HasIndex("CardId");

                    b.ToTable("CardAttachments");
                });

            modelBuilder.Entity("KanbanApp.Domain.Entities.CardTask", b =>
                {
                    b.Property<string>("CardTaskId")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("CardId");

                    b.Property<int>("CardTaskState");

                    b.Property<DateTime>("DueDate");

                    b.Property<float>("Estimate");

                    b.Property<string>("Text");

                    b.HasKey("CardTaskId");

                    b.HasIndex("CardId");

                    b.ToTable("CardTask");
                });

            modelBuilder.Entity("KanbanApp.Domain.Entities.CardType", b =>
                {
                    b.Property<string>("CardTypeId")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("Name");

                    b.HasKey("CardTypeId");

                    b.ToTable("CardTypes");
                });

            modelBuilder.Entity("KanbanApp.Domain.Entities.CardWeightSize", b =>
                {
                    b.Property<int>("CardWeightSizeId")
                        .ValueGeneratedOnAdd()
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("CardWeightSizeName");

                    b.HasKey("CardWeightSizeId");

                    b.ToTable("CardWeightSize");
                });

            modelBuilder.Entity("KanbanApp.Domain.Entities.Priority", b =>
                {
                    b.Property<int>("PriorityId")
                        .ValueGeneratedOnAdd()
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("Color");

                    b.Property<string>("Name");

                    b.HasKey("PriorityId");

                    b.ToTable("Priority");
                });

            modelBuilder.Entity("KanbanApp.Domain.Entities.Setting", b =>
                {
                    b.Property<string>("SettingId")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("BoardId");

                    b.Property<string>("SettingsName");

                    b.Property<string>("Value");

                    b.HasKey("SettingId");

                    b.HasIndex("BoardId");

                    b.ToTable("Settings");
                });

            modelBuilder.Entity("KanbanApp.Domain.Entities.SwimLane", b =>
                {
                    b.Property<string>("SwimLaneId")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("BoardId");

                    b.Property<string>("Name");

                    b.Property<int>("Position");

                    b.Property<string>("SettingsSwimLaneSettingId");

                    b.HasKey("SwimLaneId");

                    b.HasIndex("BoardId");

                    b.HasIndex("SettingsSwimLaneSettingId");

                    b.ToTable("SwimLanes");
                });

            modelBuilder.Entity("KanbanApp.Domain.Entities.SwimLaneSetting", b =>
                {
                    b.Property<string>("SwimLaneSettingId")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("BackgroundColor");

                    b.Property<string>("HeaderColor");

                    b.Property<int>("MaxCardCount");

                    b.HasKey("SwimLaneSettingId");

                    b.ToTable("SwimLaneSetting");
                });

            modelBuilder.Entity("KanbanApp.Domain.Entities.Tag", b =>
                {
                    b.Property<string>("TagId")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("CardId");

                    b.Property<string>("Name");

                    b.HasKey("TagId");

                    b.HasIndex("CardId");

                    b.ToTable("Tag");
                });

            modelBuilder.Entity("KanbanApp.Domain.Entities.User", b =>
                {
                    b.Property<string>("UserId")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("CardId");

                    b.Property<string>("CardTaskId");

                    b.Property<string>("EMail");

                    b.Property<string>("Name");

                    b.Property<string>("ProfilePicture");

                    b.Property<string>("Surname");

                    b.Property<string>("UserName");

                    b.HasKey("UserId");

                    b.HasIndex("CardId");

                    b.HasIndex("CardTaskId");

                    b.ToTable("Users");
                });

            modelBuilder.Entity("KanbanApp.Domain.Entities.Card", b =>
                {
                    b.HasOne("KanbanApp.Domain.Entities.Priority", "CardPriority")
                        .WithMany()
                        .HasForeignKey("CardPriorityPriorityId");

                    b.HasOne("KanbanApp.Domain.Entities.CardWeightSize", "CardWeightSize")
                        .WithMany()
                        .HasForeignKey("CardWeightSizeId");

                    b.HasOne("KanbanApp.Domain.Entities.SwimLane")
                        .WithMany("Cards")
                        .HasForeignKey("SwimLaneId");

                    b.HasOne("KanbanApp.Domain.Entities.CardType", "Type")
                        .WithMany()
                        .HasForeignKey("TypeCardTypeId");
                });

            modelBuilder.Entity("KanbanApp.Domain.Entities.CardAttachment", b =>
                {
                    b.HasOne("KanbanApp.Domain.Entities.Card")
                        .WithMany("AttachmentList")
                        .HasForeignKey("CardId");
                });

            modelBuilder.Entity("KanbanApp.Domain.Entities.CardTask", b =>
                {
                    b.HasOne("KanbanApp.Domain.Entities.Card")
                        .WithMany("CardTasks")
                        .HasForeignKey("CardId");
                });

            modelBuilder.Entity("KanbanApp.Domain.Entities.Setting", b =>
                {
                    b.HasOne("KanbanApp.Domain.Entities.Board")
                        .WithMany("BoardSettings")
                        .HasForeignKey("BoardId");
                });

            modelBuilder.Entity("KanbanApp.Domain.Entities.SwimLane", b =>
                {
                    b.HasOne("KanbanApp.Domain.Entities.Board")
                        .WithMany("SwimLanes")
                        .HasForeignKey("BoardId");

                    b.HasOne("KanbanApp.Domain.Entities.SwimLaneSetting", "Settings")
                        .WithMany()
                        .HasForeignKey("SettingsSwimLaneSettingId");
                });

            modelBuilder.Entity("KanbanApp.Domain.Entities.Tag", b =>
                {
                    b.HasOne("KanbanApp.Domain.Entities.Card")
                        .WithMany("TagList")
                        .HasForeignKey("CardId");
                });

            modelBuilder.Entity("KanbanApp.Domain.Entities.User", b =>
                {
                    b.HasOne("KanbanApp.Domain.Entities.Card")
                        .WithMany("AssignUserList")
                        .HasForeignKey("CardId");

                    b.HasOne("KanbanApp.Domain.Entities.CardTask")
                        .WithMany("AssignUserList")
                        .HasForeignKey("CardTaskId");
                });
#pragma warning restore 612, 618
        }
    }
}
