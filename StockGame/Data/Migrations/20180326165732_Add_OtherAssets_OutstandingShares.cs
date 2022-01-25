using Microsoft.EntityFrameworkCore.Migrations;
using System;
using System.Collections.Generic;

namespace StockGame.Data.Migrations
{
    public partial class Add_OtherAssets_OutstandingShares : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<float>(
                name: "OtherAssets",
                table: "EpisodeEquityInfo",
                nullable: true);

            migrationBuilder.AddColumn<int>(
                name: "OutstandingShares",
                table: "EpisodeEquityInfo",
                nullable: false,
                defaultValue: 0);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "OtherAssets",
                table: "EpisodeEquityInfo");

            migrationBuilder.DropColumn(
                name: "OutstandingShares",
                table: "EpisodeEquityInfo");
        }
    }
}
