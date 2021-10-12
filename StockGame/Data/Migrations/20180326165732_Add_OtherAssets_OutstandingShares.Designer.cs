﻿// <auto-generated />
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Storage;
using Microsoft.EntityFrameworkCore.Storage.Internal;
using StockGame.Data;
using System;

namespace StockGame.Data.Migrations
{
    [DbContext(typeof(StockGameContext))]
    [Migration("20180326165732_Add_OtherAssets_OutstandingShares")]
    partial class Add_OtherAssets_OutstandingShares
    {
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "2.0.1-rtm-125")
                .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityRole", b =>
                {
                    b.Property<string>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("ConcurrencyStamp")
                        .IsConcurrencyToken();

                    b.Property<string>("Name")
                        .HasMaxLength(256);

                    b.Property<string>("NormalizedName")
                        .HasMaxLength(256);

                    b.HasKey("Id");

                    b.HasIndex("NormalizedName")
                        .IsUnique()
                        .HasName("RoleNameIndex")
                        .HasFilter("[NormalizedName] IS NOT NULL");

                    b.ToTable("AspNetRoles");
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityRoleClaim<string>", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("ClaimType");

                    b.Property<string>("ClaimValue");

                    b.Property<string>("RoleId")
                        .IsRequired();

                    b.HasKey("Id");

                    b.HasIndex("RoleId");

                    b.ToTable("AspNetRoleClaims");
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserClaim<string>", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("ClaimType");

                    b.Property<string>("ClaimValue");

                    b.Property<string>("UserId")
                        .IsRequired();

                    b.HasKey("Id");

                    b.HasIndex("UserId");

                    b.ToTable("AspNetUserClaims");
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserLogin<string>", b =>
                {
                    b.Property<string>("LoginProvider");

                    b.Property<string>("ProviderKey");

                    b.Property<string>("ProviderDisplayName");

                    b.Property<string>("UserId")
                        .IsRequired();

                    b.HasKey("LoginProvider", "ProviderKey");

                    b.HasIndex("UserId");

                    b.ToTable("AspNetUserLogins");
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserRole<string>", b =>
                {
                    b.Property<string>("UserId");

                    b.Property<string>("RoleId");

                    b.HasKey("UserId", "RoleId");

                    b.HasIndex("RoleId");

                    b.ToTable("AspNetUserRoles");
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserToken<string>", b =>
                {
                    b.Property<string>("UserId");

                    b.Property<string>("LoginProvider");

                    b.Property<string>("Name");

                    b.Property<string>("Value");

                    b.HasKey("UserId", "LoginProvider", "Name");

                    b.ToTable("AspNetUserTokens");
                });

            modelBuilder.Entity("StockGame.Models.ActiveGameTeam", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<int?>("GameId");

                    b.Property<int?>("TeamMemberId");

                    b.Property<string>("UserId");

                    b.HasKey("Id");

                    b.HasIndex("GameId");

                    b.HasIndex("TeamMemberId");

                    b.HasIndex("UserId")
                        .IsUnique()
                        .HasFilter("[UserId] IS NOT NULL");

                    b.ToTable("ActiveGameTeam");
                });

            modelBuilder.Entity("StockGame.Models.ApplicationUser", b =>
                {
                    b.Property<string>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<int>("AccessFailedCount");

                    b.Property<string>("ConcurrencyStamp")
                        .IsConcurrencyToken();

                    b.Property<string>("Email")
                        .HasMaxLength(256);

                    b.Property<bool>("EmailConfirmed");

                    b.Property<string>("FirstMidName");

                    b.Property<string>("LastName");

                    b.Property<bool>("LockoutEnabled");

                    b.Property<DateTimeOffset?>("LockoutEnd");

                    b.Property<string>("NormalizedEmail")
                        .HasMaxLength(256);

                    b.Property<string>("NormalizedUserName")
                        .HasMaxLength(256);

                    b.Property<string>("PasswordHash");

                    b.Property<string>("PhoneNumber");

                    b.Property<bool>("PhoneNumberConfirmed");

                    b.Property<string>("SecurityStamp");

                    b.Property<bool>("TwoFactorEnabled");

                    b.Property<string>("UserName")
                        .HasMaxLength(256);

                    b.HasKey("Id");

                    b.HasIndex("NormalizedEmail")
                        .HasName("EmailIndex");

                    b.HasIndex("NormalizedUserName")
                        .IsUnique()
                        .HasName("UserNameIndex")
                        .HasFilter("[NormalizedUserName] IS NOT NULL");

                    b.ToTable("ApplicationUser");
                });

            modelBuilder.Entity("StockGame.Models.Category", b =>
                {
                    b.Property<int>("Id");

                    b.Property<string>("Name");

                    b.HasKey("Id");

                    b.ToTable("Category");
                });

            modelBuilder.Entity("StockGame.Models.Episode", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<bool>("AllowTransactions");

                    b.Property<int>("EpisodeIndex");

                    b.Property<string>("Name")
                        .IsRequired();

                    b.Property<int>("ScenarioId");

                    b.HasKey("Id");

                    b.HasIndex("ScenarioId", "EpisodeIndex")
                        .IsUnique();

                    b.ToTable("Episode");
                });

            modelBuilder.Entity("StockGame.Models.EpisodeEquityInfo", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<bool>("AllowTransactions");

                    b.Property<bool>("AnnounceFinancialResults");

                    b.Property<float?>("Cash");

                    b.Property<int>("CategoryId");

                    b.Property<float?>("CostOfGoodsSold");

                    b.Property<float?>("Dividend");

                    b.Property<float?>("EarningPerShare");

                    b.Property<int>("EpisodeId");

                    b.Property<int>("EquityId");

                    b.Property<float?>("InterestExpense");

                    b.Property<float?>("InterestIncome");

                    b.Property<float?>("LongTermAssets");

                    b.Property<float?>("LongTermDebt");

                    b.Property<string>("NewsDetail");

                    b.Property<string>("NewsImgPath");

                    b.Property<string>("NewsTitle");

                    b.Property<float?>("OtherAssets");

                    b.Property<float?>("OtherIncome");

                    b.Property<int>("OutstandingShares");

                    b.Property<float>("Price");

                    b.Property<float?>("ResearchDevelopmentExpense");

                    b.Property<float?>("Salaries");

                    b.Property<float?>("Sales");

                    b.Property<float?>("SellingGeneralAdministrativeExpense");

                    b.Property<float?>("ShortTermAssets");

                    b.Property<float?>("ShortTermLiabilities");

                    b.Property<bool>("Visible");

                    b.HasKey("Id");

                    b.HasIndex("CategoryId");

                    b.HasIndex("EpisodeId");

                    b.HasIndex("EquityId", "EpisodeId")
                        .IsUnique();

                    b.ToTable("EpisodeEquityInfo");
                });

            modelBuilder.Entity("StockGame.Models.Equity", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("ImgPath");

                    b.Property<int>("IndustryId");

                    b.Property<string>("Name");

                    b.Property<string>("ThumbPath");

                    b.HasKey("Id");

                    b.HasIndex("IndustryId");

                    b.ToTable("Equity");
                });

            modelBuilder.Entity("StockGame.Models.Game", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<bool>("AllowJoin");

                    b.Property<int>("AllowJoinMaxEpisodeIndex");

                    b.Property<int>("AllowJoinMinEpisodeIndex");

                    b.Property<int>("CurrentEpisodeIndex");

                    b.Property<float>("InitialCash");

                    b.Property<string>("Name");

                    b.Property<int>("ScenarioId");

                    b.HasKey("Id");

                    b.HasIndex("ScenarioId");

                    b.ToTable("Game");
                });

            modelBuilder.Entity("StockGame.Models.GameGroup", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<int>("GameId");

                    b.Property<int>("GroupId");

                    b.HasKey("Id");

                    b.HasIndex("GroupId");

                    b.HasIndex("GameId", "GroupId")
                        .IsUnique();

                    b.ToTable("GameGroup");
                });

            modelBuilder.Entity("StockGame.Models.Group", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<bool>("AllowAutoCreateTeam");

                    b.Property<bool>("AllowJoin");

                    b.Property<string>("AutoCreateTeamPassword");

                    b.Property<string>("Name");

                    b.Property<int>("SchoolId");

                    b.Property<string>("TeacherUserId");

                    b.HasKey("Id");

                    b.HasIndex("SchoolId");

                    b.HasIndex("TeacherUserId");

                    b.ToTable("Group");
                });

            modelBuilder.Entity("StockGame.Models.Industry", b =>
                {
                    b.Property<int>("Id");

                    b.Property<string>("Name");

                    b.HasKey("Id");

                    b.ToTable("Industry");
                });

            modelBuilder.Entity("StockGame.Models.Scenario", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<int>("HistoricalEpisodeCount");

                    b.Property<string>("Name")
                        .IsRequired();

                    b.Property<int>("PlayableEpisodeCount");

                    b.HasKey("Id");

                    b.ToTable("Scenario");
                });

            modelBuilder.Entity("StockGame.Models.ScenarioEquity", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<int>("EquityId");

                    b.Property<int>("ScenarioId");

                    b.HasKey("Id");

                    b.HasIndex("EquityId");

                    b.HasIndex("ScenarioId", "EquityId")
                        .IsUnique();

                    b.ToTable("ScenarioEquity");
                });

            modelBuilder.Entity("StockGame.Models.School", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("Name");

                    b.HasKey("Id");

                    b.ToTable("School");
                });

            modelBuilder.Entity("StockGame.Models.Team", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<bool>("AllowJoin");

                    b.Property<int>("GroupId");

                    b.Property<string>("JoinPassword");

                    b.Property<string>("Name");

                    b.Property<string>("OwnerUserId");

                    b.HasKey("Id");

                    b.HasIndex("GroupId");

                    b.HasIndex("OwnerUserId");

                    b.ToTable("Team");
                });

            modelBuilder.Entity("StockGame.Models.TeamMember", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<int>("TeamId");

                    b.Property<string>("UserId")
                        .IsRequired();

                    b.HasKey("Id");

                    b.HasIndex("TeamId");

                    b.HasIndex("UserId", "TeamId")
                        .IsUnique();

                    b.ToTable("TeamMember");
                });

            modelBuilder.Entity("StockGame.Models.TradingSession", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<int>("EpisodeId");

                    b.Property<int>("GameId");

                    b.Property<string>("Name");

                    b.Property<DateTime?>("StartTime");

                    b.HasKey("Id");

                    b.HasIndex("EpisodeId");

                    b.HasIndex("GameId", "EpisodeId")
                        .IsUnique();

                    b.ToTable("TradingSession");
                });

            modelBuilder.Entity("StockGame.Models.Transaction", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<int>("Amount");

                    b.Property<int>("EquityId");

                    b.Property<int>("TeamMemberId");

                    b.Property<int>("TradingSessionId");

                    b.Property<int>("TransactionReasonId");

                    b.HasKey("Id");

                    b.HasIndex("EquityId");

                    b.HasIndex("TeamMemberId");

                    b.HasIndex("TradingSessionId");

                    b.HasIndex("TransactionReasonId");

                    b.ToTable("Transaction");
                });

            modelBuilder.Entity("StockGame.Models.TransactionReason", b =>
                {
                    b.Property<int>("Id");

                    b.Property<string>("Name");

                    b.HasKey("Id");

                    b.ToTable("TransactionReason");
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityRoleClaim<string>", b =>
                {
                    b.HasOne("Microsoft.AspNetCore.Identity.IdentityRole")
                        .WithMany()
                        .HasForeignKey("RoleId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserClaim<string>", b =>
                {
                    b.HasOne("StockGame.Models.ApplicationUser")
                        .WithMany()
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserLogin<string>", b =>
                {
                    b.HasOne("StockGame.Models.ApplicationUser")
                        .WithMany()
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserRole<string>", b =>
                {
                    b.HasOne("Microsoft.AspNetCore.Identity.IdentityRole")
                        .WithMany()
                        .HasForeignKey("RoleId")
                        .OnDelete(DeleteBehavior.Cascade);

                    b.HasOne("StockGame.Models.ApplicationUser")
                        .WithMany()
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserToken<string>", b =>
                {
                    b.HasOne("StockGame.Models.ApplicationUser")
                        .WithMany()
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("StockGame.Models.ActiveGameTeam", b =>
                {
                    b.HasOne("StockGame.Models.Game", "Game")
                        .WithMany()
                        .HasForeignKey("GameId");

                    b.HasOne("StockGame.Models.TeamMember", "TeamMember")
                        .WithMany()
                        .HasForeignKey("TeamMemberId");

                    b.HasOne("StockGame.Models.ApplicationUser", "User")
                        .WithMany()
                        .HasForeignKey("UserId");
                });

            modelBuilder.Entity("StockGame.Models.Episode", b =>
                {
                    b.HasOne("StockGame.Models.Scenario", "Scenario")
                        .WithMany("Episodes")
                        .HasForeignKey("ScenarioId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("StockGame.Models.EpisodeEquityInfo", b =>
                {
                    b.HasOne("StockGame.Models.Category", "Category")
                        .WithMany()
                        .HasForeignKey("CategoryId")
                        .OnDelete(DeleteBehavior.Cascade);

                    b.HasOne("StockGame.Models.Episode", "Episode")
                        .WithMany()
                        .HasForeignKey("EpisodeId")
                        .OnDelete(DeleteBehavior.Cascade);

                    b.HasOne("StockGame.Models.Equity", "Equity")
                        .WithMany()
                        .HasForeignKey("EquityId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("StockGame.Models.Equity", b =>
                {
                    b.HasOne("StockGame.Models.Industry", "Industry")
                        .WithMany()
                        .HasForeignKey("IndustryId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("StockGame.Models.Game", b =>
                {
                    b.HasOne("StockGame.Models.Scenario", "Scenario")
                        .WithMany()
                        .HasForeignKey("ScenarioId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("StockGame.Models.GameGroup", b =>
                {
                    b.HasOne("StockGame.Models.Game", "Game")
                        .WithMany("GameGroups")
                        .HasForeignKey("GameId")
                        .OnDelete(DeleteBehavior.Cascade);

                    b.HasOne("StockGame.Models.Group", "Group")
                        .WithMany("GameGroups")
                        .HasForeignKey("GroupId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("StockGame.Models.Group", b =>
                {
                    b.HasOne("StockGame.Models.School", "School")
                        .WithMany("Groups")
                        .HasForeignKey("SchoolId")
                        .OnDelete(DeleteBehavior.Cascade);

                    b.HasOne("StockGame.Models.ApplicationUser", "TeacherUser")
                        .WithMany()
                        .HasForeignKey("TeacherUserId");
                });

            modelBuilder.Entity("StockGame.Models.ScenarioEquity", b =>
                {
                    b.HasOne("StockGame.Models.Equity", "Equity")
                        .WithMany()
                        .HasForeignKey("EquityId")
                        .OnDelete(DeleteBehavior.Cascade);

                    b.HasOne("StockGame.Models.Scenario", "Scenario")
                        .WithMany("ScenarioEquities")
                        .HasForeignKey("ScenarioId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("StockGame.Models.Team", b =>
                {
                    b.HasOne("StockGame.Models.Group", "Group")
                        .WithMany("Teams")
                        .HasForeignKey("GroupId")
                        .OnDelete(DeleteBehavior.Cascade);

                    b.HasOne("StockGame.Models.ApplicationUser", "OwnerUser")
                        .WithMany()
                        .HasForeignKey("OwnerUserId");
                });

            modelBuilder.Entity("StockGame.Models.TeamMember", b =>
                {
                    b.HasOne("StockGame.Models.Team", "Team")
                        .WithMany("TeamMembers")
                        .HasForeignKey("TeamId")
                        .OnDelete(DeleteBehavior.Cascade);

                    b.HasOne("StockGame.Models.ApplicationUser", "User")
                        .WithMany()
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("StockGame.Models.TradingSession", b =>
                {
                    b.HasOne("StockGame.Models.Episode", "Episode")
                        .WithMany("TradingSessions")
                        .HasForeignKey("EpisodeId")
                        .OnDelete(DeleteBehavior.Restrict);

                    b.HasOne("StockGame.Models.Game", "Game")
                        .WithMany("TradingSessions")
                        .HasForeignKey("GameId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("StockGame.Models.Transaction", b =>
                {
                    b.HasOne("StockGame.Models.Equity", "Equity")
                        .WithMany()
                        .HasForeignKey("EquityId")
                        .OnDelete(DeleteBehavior.Cascade);

                    b.HasOne("StockGame.Models.TeamMember", "TeamMember")
                        .WithMany()
                        .HasForeignKey("TeamMemberId")
                        .OnDelete(DeleteBehavior.Cascade);

                    b.HasOne("StockGame.Models.TradingSession", "TradingSession")
                        .WithMany("Transactions")
                        .HasForeignKey("TradingSessionId")
                        .OnDelete(DeleteBehavior.Cascade);

                    b.HasOne("StockGame.Models.TransactionReason", "Reason")
                        .WithMany()
                        .HasForeignKey("TransactionReasonId")
                        .OnDelete(DeleteBehavior.Cascade);
                });
#pragma warning restore 612, 618
        }
    }
}
