using Microsoft.EntityFrameworkCore.Migrations;
using System;
using System.Collections.Generic;

namespace StockGame.Data.Migrations
{
    public partial class SetNullDeleteBehavior_ApplicationUser_Game : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_ActiveGameTeam_Game_GameId",
                table: "ActiveGameTeam");

            migrationBuilder.DropForeignKey(
                name: "FK_ActiveGameTeam_TeamMember_TeamMemberId",
                table: "ActiveGameTeam");

            migrationBuilder.DropForeignKey(
                name: "FK_Group_ApplicationUser_TeacherUserId",
                table: "Group");

            migrationBuilder.DropForeignKey(
                name: "FK_Team_ApplicationUser_OwnerUserId",
                table: "Team");

            migrationBuilder.AddForeignKey(
                name: "FK_ActiveGameTeam_Game_GameId",
                table: "ActiveGameTeam",
                column: "GameId",
                principalTable: "Game",
                principalColumn: "Id",
                onDelete: ReferentialAction.SetNull);

            migrationBuilder.AddForeignKey(
                name: "FK_ActiveGameTeam_TeamMember_TeamMemberId",
                table: "ActiveGameTeam",
                column: "TeamMemberId",
                principalTable: "TeamMember",
                principalColumn: "Id",
                onDelete: ReferentialAction.SetNull);

            migrationBuilder.AddForeignKey(
                name: "FK_Group_ApplicationUser_TeacherUserId",
                table: "Group",
                column: "TeacherUserId",
                principalTable: "ApplicationUser",
                principalColumn: "Id",
                onDelete: ReferentialAction.SetNull);

            migrationBuilder.AddForeignKey(
                name: "FK_Team_ApplicationUser_OwnerUserId",
                table: "Team",
                column: "OwnerUserId",
                principalTable: "ApplicationUser",
                principalColumn: "Id",
                onDelete: ReferentialAction.SetNull);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_ActiveGameTeam_Game_GameId",
                table: "ActiveGameTeam");

            migrationBuilder.DropForeignKey(
                name: "FK_ActiveGameTeam_TeamMember_TeamMemberId",
                table: "ActiveGameTeam");

            migrationBuilder.DropForeignKey(
                name: "FK_Group_ApplicationUser_TeacherUserId",
                table: "Group");

            migrationBuilder.DropForeignKey(
                name: "FK_Team_ApplicationUser_OwnerUserId",
                table: "Team");

            migrationBuilder.AddForeignKey(
                name: "FK_ActiveGameTeam_Game_GameId",
                table: "ActiveGameTeam",
                column: "GameId",
                principalTable: "Game",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_ActiveGameTeam_TeamMember_TeamMemberId",
                table: "ActiveGameTeam",
                column: "TeamMemberId",
                principalTable: "TeamMember",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_Group_ApplicationUser_TeacherUserId",
                table: "Group",
                column: "TeacherUserId",
                principalTable: "ApplicationUser",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_Team_ApplicationUser_OwnerUserId",
                table: "Team",
                column: "OwnerUserId",
                principalTable: "ApplicationUser",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);
        }
    }
}
