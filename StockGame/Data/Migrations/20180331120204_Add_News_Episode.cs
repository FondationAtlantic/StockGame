using Microsoft.EntityFrameworkCore.Migrations;
using System;
using System.Collections.Generic;

namespace StockGame.Data.Migrations
{
    public partial class Add_News_Episode : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "NewsDetail",
                table: "Episode",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "NewsImgPath",
                table: "Episode",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "NewsTitle",
                table: "Episode",
                nullable: true);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "NewsDetail",
                table: "Episode");

            migrationBuilder.DropColumn(
                name: "NewsImgPath",
                table: "Episode");

            migrationBuilder.DropColumn(
                name: "NewsTitle",
                table: "Episode");
        }
    }
}
