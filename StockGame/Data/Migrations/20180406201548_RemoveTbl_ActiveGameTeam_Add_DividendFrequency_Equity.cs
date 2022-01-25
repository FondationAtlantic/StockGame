using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;
using System;
using System.Collections.Generic;

namespace StockGame.Data.Migrations
{
    public partial class RemoveTbl_ActiveGameTeam_Add_DividendFrequency_Equity : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "ActiveGameTeam");

            migrationBuilder.AddColumn<int>(
                name: "DividendFrequency",
                table: "Equity",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<int>(
                name: "StatementPresentation",
                table: "Equity",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<int>(
                name: "ActiveGameId",
                table: "ApplicationUser",
                nullable: true);

            migrationBuilder.AddColumn<int>(
                name: "ActiveTeamMemberId",
                table: "ApplicationUser",
                nullable: true);

            migrationBuilder.CreateIndex(
                name: "IX_ApplicationUser_ActiveGameId",
                table: "ApplicationUser",
                column: "ActiveGameId");

            migrationBuilder.CreateIndex(
                name: "IX_ApplicationUser_ActiveTeamMemberId",
                table: "ApplicationUser",
                column: "ActiveTeamMemberId");

            migrationBuilder.AddForeignKey(
                name: "FK_ApplicationUser_Game_ActiveGameId",
                table: "ApplicationUser",
                column: "ActiveGameId",
                principalTable: "Game",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_ApplicationUser_TeamMember_ActiveTeamMemberId",
                table: "ApplicationUser",
                column: "ActiveTeamMemberId",
                principalTable: "TeamMember",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_ApplicationUser_Game_ActiveGameId",
                table: "ApplicationUser");

            migrationBuilder.DropForeignKey(
                name: "FK_ApplicationUser_TeamMember_ActiveTeamMemberId",
                table: "ApplicationUser");

            migrationBuilder.DropIndex(
                name: "IX_ApplicationUser_ActiveGameId",
                table: "ApplicationUser");

            migrationBuilder.DropIndex(
                name: "IX_ApplicationUser_ActiveTeamMemberId",
                table: "ApplicationUser");

            migrationBuilder.DropColumn(
                name: "DividendFrequency",
                table: "Equity");

            migrationBuilder.DropColumn(
                name: "StatementPresentation",
                table: "Equity");

            migrationBuilder.DropColumn(
                name: "ActiveGameId",
                table: "ApplicationUser");

            migrationBuilder.DropColumn(
                name: "ActiveTeamMemberId",
                table: "ApplicationUser");

            migrationBuilder.CreateTable(
                name: "ActiveGameTeam",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn),
                    GameId = table.Column<int>(nullable: true),
                    TeamMemberId = table.Column<int>(nullable: true),
                    UserId = table.Column<string>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_ActiveGameTeam", x => x.Id);
                    table.ForeignKey(
                        name: "FK_ActiveGameTeam_Game_GameId",
                        column: x => x.GameId,
                        principalTable: "Game",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.SetNull);
                    table.ForeignKey(
                        name: "FK_ActiveGameTeam_TeamMember_TeamMemberId",
                        column: x => x.TeamMemberId,
                        principalTable: "TeamMember",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.SetNull);
                    table.ForeignKey(
                        name: "FK_ActiveGameTeam_ApplicationUser_UserId",
                        column: x => x.UserId,
                        principalTable: "ApplicationUser",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateIndex(
                name: "IX_ActiveGameTeam_GameId",
                table: "ActiveGameTeam",
                column: "GameId");

            migrationBuilder.CreateIndex(
                name: "IX_ActiveGameTeam_TeamMemberId",
                table: "ActiveGameTeam",
                column: "TeamMemberId");

            migrationBuilder.CreateIndex(
                name: "IX_ActiveGameTeam_UserId",
                table: "ActiveGameTeam",
                column: "UserId",
                unique: true,
                filter: "[UserId] IS NOT NULL");
        }
    }
}
