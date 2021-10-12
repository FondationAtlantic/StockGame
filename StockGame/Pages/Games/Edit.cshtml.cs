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

namespace StockGame.Pages.Games
{
    [Authorize(Roles = "Admin")]
    public class EditModel : StockGame.Pages.StockPageModel
    {
        public EditModel(UserManager<ApplicationUser> userManager, StockGameContext context) : base(userManager, context)
        {
        }

        [BindProperty]
        public Game Game { get; set; }

        public async Task<IActionResult> OnGetAsync(int? id)
        {
            await FindActiveGameAndTeam();

            if (id == null)
                return NotFound();

            Game = await Context.Games
                .Include(g => g.Scenario).SingleOrDefaultAsync(m => m.Id == id);

            if (Game == null)
                return NotFound();

            ViewData["ScenarioId"] = new SelectList(Context.Scenarios, "Id", "Name");
            return Page();
        }

        public async Task<IActionResult> OnPostAsync()
        {
            if (!ModelState.IsValid)
                return Page();

            Context.Attach(Game).State = EntityState.Modified;
            Context.Attach(Game.AllowJoinEpisodeRange).State = EntityState.Modified;
            Context.Attach(Game.ShowLeverageEpisodeRange).State = EntityState.Modified;
            Context.Attach(Game.ShowPriceEarningsEpisodeRange).State = EntityState.Modified;

            try
            {
                await Context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!GameExists(Game.Id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return RedirectToPage("./Index");
        }

        private bool GameExists(int id)
        {
            return Context.Games.Any(e => e.Id == id);
        }
    }
}
