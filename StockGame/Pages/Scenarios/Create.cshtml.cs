using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using StockGame.Data;
using StockGame.Models;
using StockGame.Models.ViewModels;

namespace StockGame.Pages.Scenarios
{
    [Authorize(Roles = "Admin")]
    public class CreateModel : StockGame.Pages.StockPageModel
    {
        public CreateModel(UserManager<ApplicationUser> userManager, StockGameContext context) : base(userManager, context)
        {
        }

        public async Task PopulateEquityList()
        {
            var allEquities = await Context.Equities.OrderBy(e => e.Name).ToListAsync();
            EquityList = allEquities.Select(e => new SelectableEquity { Equity = e }).ToList();
        }

        public async Task<IActionResult> OnGetAsync()
        {
            await FindActiveGameAndTeam();

            await PopulateEquityList();

            return Page();
        }

        [BindProperty]
        public Scenario Scenario { get; set; }

        [BindProperty]
        public List<SelectableEquity> EquityList { get; set; }

        public async Task<IActionResult> OnPostAsync()
        {
            await FindActiveGameAndTeam();

            if (!ModelState.IsValid)
            {
                await PopulateEquityList();
                return Page();
            }

            Context.Scenarios.Add(Scenario);

            List<Equity> equities = EquityList.Where(se => se.Selected).Select(se => se.Equity).ToList();

            //Generate ScenarioEquity
            foreach (Equity e in equities)
                Context.ScenarioEquities.Add(new ScenarioEquity { Scenario = Scenario, Equity = e });

            //Generate Episodes
            List<Episode> episodes = new List<Episode>();
            for (int episodeIndex = -Scenario.HistoricalEpisodeCount; episodeIndex < Scenario.PlayableEpisodeCount; episodeIndex++)
            {
                bool isHistorical = episodeIndex < 0;
                Episode episode = new Episode
                {
                    Scenario = Scenario,
                    EpisodeIndex = episodeIndex,
                    AllowTransactions = !isHistorical,
                    Name = String.Format("Episode_{0}", episodeIndex)
                };

                episodes.Add(episode);
                Context.Episodes.Add(episode);
            }

            //Generate EpisodeEquityInfo
            foreach (Equity eq in equities)
            {
                foreach (Episode ep in episodes)
                {
                    bool isHistorical = ep.EpisodeIndex < 0;

                    EpisodeEquityInfo eei = new EpisodeEquityInfo
                    {
                        Equity = eq,
                        Episode = ep,
                        CategoryId = 1,
                        Price = 100.0f,
                        AllowTransactions = !isHistorical,
                    };

                    Context.EpisodeEquityInfos.Add(eei);
                }
            }

            foreach(Equity eq in equities)
                Context.Attach(eq).State = EntityState.Unchanged;

            await Context.SaveChangesAsync();

            return RedirectToPage("./Index");
        }
    }
}