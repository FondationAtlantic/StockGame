using StockGame.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using System;
using System.Threading.Tasks;

namespace StockGame.Data
{
    public class StockGameContext : IdentityDbContext<ApplicationUser>
    {
        public StockGameContext(DbContextOptions<StockGameContext> options) : base(options)
        {
        }

        public DbSet<ApplicationUser> ApplicationUsers { get; set; }
        public DbSet<Category> Categories { get; set; }
        public DbSet<Episode> Episodes { get; set; }
        public DbSet<EpisodeEquityInfo> EpisodeEquityInfos { get; set; }
        public DbSet<Equity> Equities { get; set; }
        public DbSet<Game> Games { get; set; }
        public DbSet<GameGroup> GameGroups { get; set; }
        public DbSet<Group> Groups { get; set; }
        public DbSet<Industry> Industries { get; set; }
        public DbSet<Scenario> Scenarios { get; set; }
        public DbSet<ScenarioEquity> ScenarioEquities { get; set; }
        public DbSet<School> Schools { get; set; }
        public DbSet<Team> Teams { get; set; }
        public DbSet<TeamMember> TeamMembers { get; set; }
        public DbSet<TradingSession> TradingSessions { get; set; }
        public DbSet<Transaction> Transactions { get; set; }
        public DbSet<TransactionReason> TransactionReasons { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);

            modelBuilder.Entity<ApplicationUser>().HasOne(au => au.ActiveGame).WithMany("ActiveGameUsers").OnDelete(DeleteBehavior.ClientSetNull);
            modelBuilder.Entity<ApplicationUser>().HasOne(au => au.ActiveTeamMember).WithMany().OnDelete(DeleteBehavior.ClientSetNull);
            modelBuilder.Entity<ApplicationUser>().ToTable("ApplicationUser");

            modelBuilder.Entity<Category>().ToTable("Category");

            modelBuilder.Entity<Episode>().HasIndex(e => new { e.ScenarioId, e.EpisodeIndex }).IsUnique();
            modelBuilder.Entity<Episode>().ToTable("Episode");

            modelBuilder.Entity<EpisodeEquityInfo>().HasIndex(eei => new { eei.EquityId, eei.EpisodeId }).IsUnique();
            modelBuilder.Entity<EpisodeEquityInfo>().ToTable("EpisodeEquityInfo");

            modelBuilder.Entity<Equity>().ToTable("Equity");

            modelBuilder.Entity<Game>().OwnsOne(g => g.AllowJoinEpisodeRange);
            modelBuilder.Entity<Game>().OwnsOne(g => g.ShowPriceEarningsEpisodeRange);
            modelBuilder.Entity<Game>().OwnsOne(g => g.ShowLeverageEpisodeRange);
            modelBuilder.Entity<Game>().ToTable("Game");

            modelBuilder.Entity<GameGroup>().HasIndex(gg => new { gg.GameId, gg.GroupId }).IsUnique();
            modelBuilder.Entity<GameGroup>().ToTable("GameGroup");

            modelBuilder.Entity<Group>().HasOne(g => g.TeacherUser).WithMany(u => u.TeachedGroups).OnDelete(DeleteBehavior.SetNull);
            modelBuilder.Entity<Group>().ToTable("Group");

            modelBuilder.Entity<Industry>().ToTable("Industry");

            modelBuilder.Entity<Scenario>().ToTable("Scenario");

            modelBuilder.Entity<ScenarioEquity>().HasIndex(se => new { se.ScenarioId, se.EquityId }).IsUnique();
            modelBuilder.Entity<ScenarioEquity>().ToTable("ScenarioEquity");

            modelBuilder.Entity<School>().ToTable("School");

            modelBuilder.Entity<Team>().HasOne(t => t.OwnerUser).WithMany(u => u.OwnedTeams).OnDelete(DeleteBehavior.SetNull);
            modelBuilder.Entity<Team>().ToTable("Team");

            modelBuilder.Entity<TeamMember>().HasIndex(tm => new { tm.UserId, tm.TeamId }).IsUnique();
            modelBuilder.Entity<TeamMember>().ToTable("TeamMember");

            modelBuilder.Entity<TradingSession>().HasIndex(ts => new { ts.GameId, ts.EpisodeId }).IsUnique();
            modelBuilder.Entity<TradingSession>().HasOne(ts => ts.Episode).WithMany(e => e.TradingSessions).OnDelete(DeleteBehavior.Restrict);
            modelBuilder.Entity<TradingSession>().ToTable("TradingSession");

            modelBuilder.Entity<Transaction>().ToTable("Transaction");

            modelBuilder.Entity<TransactionReason>().ToTable("TransactionReason");

        }
    }
}
