using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Hosting;
using StockGame.Models;
using System;
using System.Linq;
using System.Threading.Tasks;

namespace StockGame.Data
{
    public static class DbInitializer
    {
        public static async Task CreateDefaultData(StockGameContext context, RoleManager<IdentityRole> roleManager, UserManager<ApplicationUser> userManager, IHostEnvironment env)
        {
            //TODO rmove?
            //context.Database.EnsureCreated();
            //context.Database.EnsureDeleted();

            //initializing custom roles 
            string[] roleNames = { "Admin", "Teacher", "Student" };
            IdentityResult roleResult;

            foreach (var roleName in roleNames)
            {
                var roleExist = await roleManager.RoleExistsAsync(roleName);
                if (!roleExist)
                {
                    //create the roles and seed them to the database: Question 1
                    roleResult = await roleManager.CreateAsync(new IdentityRole(roleName));
                }
            }

            //Ensure you have these values in your appsettings.json file
            await FindOrCreateUserWithRole("remymorel1@gmail.com", "Test-22", "Rémy", "Morel", "Admin", context, userManager);
            var adminUser = await FindOrCreateUserWithRole("yannick.letourneau@gmail.com", "Test-22", "Yannick", "Létourneau-Aelbrecht", "Admin", context, userManager);

            // Look for any students.
            if (context.Industries.Any())
            {
                return;   // DB has been seeded
            }

            context.Industries.Add(new Industry { Id = 1, Name = "Alimentation" });
            context.Industries.Add(new Industry { Id = 2, Name = "Vente au détail" });
            context.Industries.Add(new Industry { Id = 3, Name = "Banques" });
            context.Industries.Add(new Industry { Id = 4, Name = "Conglomérats" });
            await context.SaveChangesAsync();

            context.Categories.Add(new Category { Id = 1, Name = "Blue Chips" });
            context.Categories.Add(new Category { Id = 2, Name = "Croissance" });
            context.Categories.Add(new Category { Id = 3, Name = "Cyclique" });
            context.Categories.Add(new Category { Id = 4, Name = "Turnaround" });
            await context.SaveChangesAsync();

            context.TransactionReasons.Add(new TransactionReason { Id = 1, Name = "Ne sais pas" });
            context.TransactionReasons.Add(new TransactionReason { Id = 2, Name = "Bon dividende" });
            context.TransactionReasons.Add(new TransactionReason { Id = 3, Name = "Bas ratio cours/bénéfice" });
            context.TransactionReasons.Add(new TransactionReason { Id = 4, Name = "Haut ratio cours/bénéfice" });
            context.TransactionReasons.Add(new TransactionReason { Id = 5, Name = "J'aime la compagnie" });
            context.TransactionReasons.Add(new TransactionReason { Id = 6, Name = "Bonne nouvelle" });
            context.TransactionReasons.Add(new TransactionReason { Id = 7, Name = "Mauvaise nouvelle" });
            await context.SaveChangesAsync();

            var equities = new Equity[]
            {
                new Equity{Name="McDo", IndustryId=1, ImgPath="~/images/db/equity_img/mcdonalds.jpg", ThumbPath="~/images/db/equity_thumb/mcdonalds.jpg"},
                new Equity{Name="Loblaws", IndustryId=1, ImgPath="~/images/db/equity_img/loblaws.jpg", ThumbPath="~/images/db/equity_thumb/loblaws.jpg"},
                new Equity{Name="Wal-Mart", IndustryId=2, ImgPath="~/images/db/equity_img/walmart.jpg", ThumbPath="~/images/db/equity_thumb/walmart.jpg"},
                new Equity{Name="Sears", IndustryId=2, ImgPath="~/images/db/equity_img/sears-logo.jpg", ThumbPath="~/images/db/equity_thumb/sears-logo.jpg"},
                new Equity{Name="Burger King", IndustryId=1, ImgPath="~/images/db/equity_img/burger-king.jpg", ThumbPath="~/images/db/equity_thumb/burger-king.jpg"},
                new Equity{Name="Banque Nationale", IndustryId=3, ImgPath="~/images/db/equity_img/banque nationale.jpg", ThumbPath="~/images/db/equity_thumb/banque nationale.jpg"},
                new Equity{Name="Berkshire Hathaway", IndustryId=4, ImgPath="~/images/db/equity_img/berkshire.jpg", ThumbPath="~/images/db/equity_thumb/berkshire.jpg"},
                new Equity{Name="General Electric", IndustryId=4, ImgPath="~/images/db/equity_img/generalelectric.jpg", ThumbPath="~/images/db/equity_thumb/generalelectric.jpg"},
                new Equity{Name="Banque Royale", IndustryId=3, ImgPath="~/images/db/equity_img/rbc.jpg", ThumbPath="~/images/db/equity_thumb/rbc.jpg"},
                new Equity{Name="TD Canada Trust", IndustryId=3, ImgPath="~/images/db/equity_img/TD-Bank.jpg", ThumbPath="~/images/db/equity_thumb/TD-Bank.jpg"},
                new Equity{Name="Banque de Montréal", IndustryId=3, ImgPath="~/images/db/equity_img/bmo.jpg", ThumbPath="~/images/db/equity_thumb/bmo.jpg"},
                new Equity{Name="Canadian Tire", IndustryId=2, ImgPath="~/images/db/equity_img/canadiantire.jpg", ThumbPath="~/images/db/equity_thumb/canadiantire.jpg"},
                new Equity{Name="Couche Tard", IndustryId=2, ImgPath="~/images/db/equity_img/couche-tard.jpg", ThumbPath="~/images/db/equity_thumb/couche-tard.jpg"},
                new Equity{Name="Tim Hortons", IndustryId=1, ImgPath="~/images/db/equity_img/tim-hortons.jpg", ThumbPath="~/images/db/equity_thumb/tim-hortons.jpg"},
                new Equity{Name="Proctor & Gamble", IndustryId=4, ImgPath="~/images/db/equity_img/proctor-gamble.jpg", ThumbPath="~/images/db/equity_thumb/proctor-gamble.jpg"},
                new Equity{Name="Colgate-Palmolive", IndustryId=4, ImgPath="~/images/db/equity_img/colgate-palmolive.jpg", ThumbPath="~/images/db/equity_thumb/colgate-palmolive.jpg"},
            };
            foreach (Equity e in equities)
            {
                context.Equities.Add(e);
            }
            await context.SaveChangesAsync();

            await CreateMockupData(context, userManager, env);
        }

        private static async Task<ApplicationUser> FindOrCreateUserWithRole(string userEmail, string userPwd, string firstMidName, string lastName, string userRole, StockGameContext context, UserManager<ApplicationUser> userManager)
        {
            ApplicationUser user = await userManager.FindByEmailAsync(userEmail);
            if (user == null)
            {
                var newUser = new ApplicationUser { UserName = userEmail, Email = userEmail, FirstMidName = firstMidName, LastName = lastName };
                var createResult = await userManager.CreateAsync(newUser, userPwd);
                if (createResult.Succeeded)
                {
                    //here we tie the new user to the role
                    await userManager.AddToRoleAsync(newUser, userRole);
                    user = newUser;
                }
            }

            return user;
        }

        public static async Task CreateMockupData(StockGameContext context, UserManager<ApplicationUser> userManager, IHostEnvironment env)
        {
            if (env.IsProduction())
                return;

            //Ensure you have these values in your appsettings.json file
            var teacherUser = await FindOrCreateUserWithRole("teacher@gmail.com", "Test-22", "François", "Barbin", "Teacher", context, userManager);
            var user1A = await FindOrCreateUserWithRole("user1A@gmail.com", "Test-22", "Jean-François", "Lisée", "Student", context, userManager);
            var user2A = await FindOrCreateUserWithRole("user2A@gmail.com", "Test-22", "Justin", "Trudeau", "Student", context, userManager);
            var user1B = await FindOrCreateUserWithRole("user1B@gmail.com", "Test-22", "Philippe", "Couillard", "Student", context, userManager);
            var user2B = await FindOrCreateUserWithRole("user2B@gmail.com", "Test-22", "Martine", "Ouellette", "Student", context, userManager);
            var user1C = await FindOrCreateUserWithRole("user1C@gmail.com", "Test-22", "Manon", "Massé", "Student", context, userManager);
            var user1D = await FindOrCreateUserWithRole("user1D@gmail.com", "Test-22", "Kim", "Campbell", "Student", context, userManager);

            var scenario = new Scenario { Name = "DemoScenario", HistoricalEpisodeCount = 4, PlayableEpisodeCount = 5 };
            context.Scenarios.Add(scenario);
            await context.SaveChangesAsync();

            var episodes = new Episode[]
            {
                new Episode{Scenario=scenario, EpisodeIndex = -4, AllowTransactions=false, Name="2017 Q1"},
                new Episode{Scenario=scenario, EpisodeIndex = -3, AllowTransactions=false, Name="2017 Q2"},
                new Episode{Scenario=scenario, EpisodeIndex = -2, AllowTransactions=false, Name="2017 Q3"},
                new Episode{Scenario=scenario, EpisodeIndex = -1, AllowTransactions=false, Name="2017 Q4"},
                new Episode{Scenario=scenario, EpisodeIndex = 0, AllowTransactions=true,  Name="2018 Q1"},
                new Episode{Scenario=scenario, EpisodeIndex = 1, AllowTransactions=true,  Name="2018 Q2"},
                new Episode{Scenario=scenario, EpisodeIndex = 2, AllowTransactions=true,  Name="2018 Q3"},
                new Episode{Scenario=scenario, EpisodeIndex = 3, AllowTransactions=true,  Name="2018 Q4"},
                new Episode{Scenario=scenario, EpisodeIndex = 4, AllowTransactions=false, Name="2019 Q1"},
            };
            foreach (Episode e in episodes)
            {
                context.Episodes.Add(e);
            }
            await context.SaveChangesAsync();

            int i = 0;
            foreach (Equity eq in context.Equities)
            {
                ScenarioEquity se = new ScenarioEquity { Scenario = scenario, Equity = eq };
                context.ScenarioEquities.Add(new ScenarioEquity { Scenario = scenario, Equity = eq });

                foreach (Episode ep in episodes)
                {
                    bool AnnounceResults = i % 4 == 0;
                    float? Dividend = i % 2 == 0 ? (float?)1.33f : null;
                    EpisodeEquityInfo eei = new EpisodeEquityInfo
                                                {
                                                    Equity = eq,
                                                    Episode = ep,
                                                    Price = 1.50f * (i % 4 + 1),
                                                    Dividend = Dividend,
                                                    CategoryId = eq.Id % 4 + 1
                                                };
                    if(AnnounceResults)
                    {
                        eei.AnnounceFinancialResults = true;
                        eei.EarningPerShare = (i % 4 + 1) * 1.25f;
                        eei.Cash = 100000.0f;
                        eei.ShortTermAssets = 350000.0f;
                        eei.ShortTermLiabilities = 34000.0f;
                        eei.LongTermDebt = 200000.0f;
                        eei.Sales = 600000.0f;
                        eei.InterestExpense = 15000.0f;
                        eei.CostOfGoodsSold = 450000.0f;
                        eei.Salaries = 120000.0f;
                    }

                    if (ep.EpisodeIndex==0 && eq.Name=="McDo")
                    {
                        eei.NewsTitle = "Poursuite contre la malbouffe";
                        eei.NewsDetail = "Un recours collectif a été déposé contre la compagnie par des obèses qui affirment que McDonald's est la cause de leur santé déplorable.";
                        eei.NewsImgPath = "~/images/db/news_img/malbouffe.jpg";
                    }
                    context.EpisodeEquityInfos.Add(eei);
                    i++;
                }
            }
            await context.SaveChangesAsync();

            School collegePasteur = new School { Name = "Collège Pasteur" };
            context.Schools.Add(collegePasteur);
            context.Schools.Add(new School { Name = "École Bidon" });
            await context.SaveChangesAsync();

            Group group1 = new Group { Name = "ÉduFin 501", School = collegePasteur, TeacherUser = teacherUser };
            Group group2 = new Group { Name = "ÉduFin 502", School = collegePasteur, TeacherUser = teacherUser };
            context.Groups.Add(group1);
            context.Groups.Add(group2);
            await context.SaveChangesAsync();

            Team teamA = new Team { Group = group1, Name = "TeamA", OwnerUser = teacherUser };
            Team teamB = new Team { Group = group1, Name = "TeamB", OwnerUser = teacherUser };
            Team teamC = new Team { Group = group2, Name = "TeamC", OwnerUser = teacherUser };
            Team teamD = new Team { Group = group2, Name = "TeamD", OwnerUser = teacherUser };
            context.Teams.Add(teamA);
            context.Teams.Add(teamB);
            context.Teams.Add(teamC);
            context.Teams.Add(teamD);
            await context.SaveChangesAsync();

            context.TeamMembers.Add(new TeamMember { Team = teamA, User = user1A });
            context.TeamMembers.Add(new TeamMember { Team = teamA, User = user2A });
            context.TeamMembers.Add(new TeamMember { Team = teamB, User = user1B });
            context.TeamMembers.Add(new TeamMember { Team = teamB, User = user2B });
            context.TeamMembers.Add(new TeamMember { Team = teamC, User = user1C });
            context.TeamMembers.Add(new TeamMember { Team = teamD, User = user1D });
            await context.SaveChangesAsync();

            Game game1 = new Game { Name = "Game1", Scenario=scenario, InitialCash=350.0f };
            context.Games.Add(game1);
            await context.SaveChangesAsync();

            foreach (Episode ep in episodes)
            {
                context.TradingSessions.Add(new TradingSession
                {
                    Game = game1,
                    Episode = ep,
                    Name = "TradingSession(" + ep.Name + ")"
                });
                i++;
            }
            await context.SaveChangesAsync();

            context.GameGroups.Add(new GameGroup { Game = game1, Group = group1 });
            context.GameGroups.Add(new GameGroup { Game = game1, Group = group2 });
            await context.SaveChangesAsync();
        }
    }
}
