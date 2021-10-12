using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using StockGame.Data;
using StockGame.Models;
using StockGame.Models.ViewModels;

namespace StockGame.Pages.Scenarios
{
    [Authorize(Roles = "Admin")]
    public class EquitiesModel : StockGame.Pages.StockPageModel
    {
        public EquitiesModel(UserManager<ApplicationUser> userManager, StockGameContext context) : base(userManager, context)
        {
        }

        [BindProperty]
        public Scenario Scenario { get; set; }

        [BindProperty]
        public List<SelectableEquity> Equities { get;set; }

        public async Task<IActionResult> OnGetAsync(int? id)
        {
            await FindActiveGameAndTeam();

            if (id == null)
                return NotFound();

            Scenario = await Context.Scenarios.SingleOrDefaultAsync(m => m.Id == id);

            var queryEquities =
                from equity in Context.Equities.Include(e => e.Industry)
                join scenarioEquity in (from scenarioEquity in Context.ScenarioEquities where scenarioEquity.ScenarioId == id select scenarioEquity)
                    on equity.Id equals scenarioEquity.EquityId into selectableEquities
                from selectableEquity in selectableEquities.DefaultIfEmpty()
                select new SelectableEquity
                {
                    Equity = equity,
                    Selected = (selectableEquity != null)
                };

            Equities = await queryEquities.ToListAsync();

            return Page();
        }


        public async Task<IActionResult> OnPostAsync()
        {
            await FindActiveGameAndTeam();

            //if (!ModelState.IsValid)
            //    return Page();

            List<ScenarioEquity> scenarioEquities = await Context.ScenarioEquities.Where(se => se.ScenarioId == Scenario.Id).OrderBy(se => se.EquityId).ToListAsync();

            var iterExistingScenarioEquities = scenarioEquities.GetEnumerator();
            iterExistingScenarioEquities.MoveNext();
            List<ScenarioEquity> addedScenarioEquities = new List<ScenarioEquity>();
            List<ScenarioEquity> deletedScenarioEquities = new List<ScenarioEquity>();
            foreach (SelectableEquity selEquity in Equities.OrderBy(se => se.Equity.Id))
            {
                Context.Attach(selEquity.Equity).State = EntityState.Unchanged;

                bool shouldAdd = selEquity.Selected && (iterExistingScenarioEquities.Current == null || iterExistingScenarioEquities.Current.EquityId > selEquity.Equity.Id);
                bool isCurrent = iterExistingScenarioEquities.Current?.EquityId == selEquity.Equity.Id;
                bool shouldDelete = !selEquity.Selected && isCurrent;

                if (shouldDelete)
                    deletedScenarioEquities.Add(iterExistingScenarioEquities.Current);
                else if (shouldAdd)
                    addedScenarioEquities.Add(new ScenarioEquity
                    {
                        Scenario = Scenario,
                        ScenarioId = Scenario.Id,
                        Equity = selEquity.Equity,
                        EquityId = selEquity.Equity.Id
                    });

                if (isCurrent)
                    iterExistingScenarioEquities.MoveNext();
            }

            List<Episode> episodes = await Context.Episodes
                .Where(e => e.ScenarioId == Scenario.Id)
                .ToListAsync();

            foreach (ScenarioEquity deleted in deletedScenarioEquities)
            {
                Context.Attach(deleted).State = EntityState.Deleted;
                Context.EpisodeEquityInfos.RemoveRange(Context.EpisodeEquityInfos.Where(eei => eei.EquityId == deleted.EquityId && eei.Episode.ScenarioId == deleted.ScenarioId));
            }

            foreach (ScenarioEquity added in addedScenarioEquities)
            {
                Context.ScenarioEquities.Add(added);
                await Context.EpisodeEquityInfos.AddRangeAsync(episodes.Select(ep => new EpisodeEquityInfo
                {
                    Equity = added.Equity,
                    Episode = ep,
                    CategoryId = 1,
                    Price = 100.0f,
                    AllowTransactions = ep.EpisodeIndex >= 0,
                }));
            }

            Context.Attach(Scenario).State = EntityState.Unchanged;

            await Context.SaveChangesAsync();

            return RedirectToPage("./Index");
        }
    }
}
