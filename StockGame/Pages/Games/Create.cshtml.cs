using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.AspNetCore.Mvc.Rendering;
using StockGame.Data;
using StockGame.Models;

namespace StockGame.Pages.Games
{
    [Authorize(Roles = "Admin")]
    public class CreateModel : StockGame.Pages.StockPageModel
    {
        public CreateModel(UserManager<ApplicationUser> userManager, StockGameContext context) : base(userManager, context)
        {
        }

        public async Task<IActionResult> OnGetAsync()
        {
            await FindActiveGameAndTeam();

            ViewData["ScenarioId"] = new SelectList(Context.Scenarios, "Id", "Name");
            return Page();
        }

        [BindProperty]
        public Game Game { get; set; }

        public async Task<IActionResult> OnPostAsync()
        {
            if (!ModelState.IsValid)
                return Page();

            Context.Games.Add(Game);

            List<Episode> episodes = Context.Episodes.Where(e => e.ScenarioId == Game.ScenarioId).ToList();
            foreach (Episode ep in episodes)
                Context.TradingSessions.Add(new TradingSession
                    {
                        Game = Game,
                        Episode = ep,
                        Name = ep.Name
                    });

            await Context.SaveChangesAsync();

            return RedirectToPage("./Index");
        }
    }
}