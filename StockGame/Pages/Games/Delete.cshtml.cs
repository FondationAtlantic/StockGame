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

namespace StockGame.Pages.Games
{
    [Authorize(Roles = "Admin")]
    public class DeleteModel : StockGame.Pages.StockPageModel
    {
        public DeleteModel(UserManager<ApplicationUser> userManager, StockGameContext context) : base(userManager, context)
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
            return Page();
        }

        public async Task<IActionResult> OnPostAsync(int? id)
        {
            if (id == null)
                return NotFound();

            Game = await Context.Games
                .Include(g => g.ActiveGameUsers) // to cascade ClientSetNull ActiveGame fields
                .Where(g => g.Id == id)
                .SingleOrDefaultAsync();

            if (Game != null)
            {
                Context.Games.Remove(Game);
                await Context.SaveChangesAsync();
            }

            return RedirectToPage("./Index");
        }
    }
}
