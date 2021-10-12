using Microsoft.EntityFrameworkCore.Migrations;
using System;
using System.Collections.Generic;

namespace StockGame.Data.Migrations
{
    public partial class Add_ShowPE_ShowLeverage_Game_Add_Loans_EpisodeEquityInfo : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.RenameColumn(
                name: "AllowJoinMinEpisodeIndex",
                table: "Game",
                newName: "AllowJoinEpisodeRange_MinIndex");

            migrationBuilder.RenameColumn(
                name: "AllowJoinMaxEpisodeIndex",
                table: "Game",
                newName: "AllowJoinEpisodeRange_MaxIndex");

            migrationBuilder.AddColumn<int>(
                name: "ShowPriceEarningsEpisodeRange_MaxIndex",
                table: "Game",
                nullable: false,
                defaultValue: -1);

            migrationBuilder.AddColumn<int>(
                name: "ShowPriceEarningsEpisodeRange_MinIndex",
                table: "Game",
                nullable: false,
                defaultValue: -1);

            migrationBuilder.AddColumn<int>(
                name: "ShowLeverageEpisodeRange_MaxIndex",
                table: "Game",
                nullable: false,
                defaultValue: -1);

            migrationBuilder.AddColumn<int>(
                name: "ShowLeverageEpisodeRange_MinIndex",
                table: "Game",
                nullable: false,
                defaultValue: -1);

            migrationBuilder.AddColumn<float>(
                name: "Loans",
                table: "EpisodeEquityInfo",
                nullable: true);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "ShowPriceEarningsEpisodeRange_MaxIndex",
                table: "Game");

            migrationBuilder.DropColumn(
                name: "ShowPriceEarningsEpisodeRange_MinIndex",
                table: "Game");

            migrationBuilder.DropColumn(
                name: "ShowLeverageEpisodeRange_MaxIndex",
                table: "Game");

            migrationBuilder.DropColumn(
                name: "ShowLeverageEpisodeRange_MinIndex",
                table: "Game");

            migrationBuilder.DropColumn(
                name: "Loans",
                table: "EpisodeEquityInfo");

            migrationBuilder.RenameColumn(
                name: "AllowJoinEpisodeRange_MinIndex",
                table: "Game",
                newName: "AllowJoinMinEpisodeIndex");

            migrationBuilder.RenameColumn(
                name: "AllowJoinEpisodeRange_MaxIndex",
                table: "Game",
                newName: "AllowJoinMaxEpisodeIndex");
        }
    }
}
