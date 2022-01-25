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

namespace StockGame.Pages.Equities
{
    [Authorize(Roles = "Admin")]
    public class DeleteModel : StockPageModel
    {
        public DeleteModel(UserManager<ApplicationUser> userManager, StockGameContext context) : base(userManager, context)
        {
        }

        [BindProperty]
        public Equity Equity { get; set; }

        public async Task<IActionResult> OnGetAsync(int? id)
        {
            await FindActiveGameAndTeam();

            if (id == null)
                return NotFound();

            Equity = await Context.Equities
                .Include(e => e.Industry).SingleOrDefaultAsync(m => m.Id == id);

            if (Equity == null)
            {
                return NotFound();
            }
            return Page();
        }

        public async Task<IActionResult> OnPostAsync(int? id)
        {
            if (id == null)
                return NotFound();

            Equity = await Context.Equities.FindAsync(id);

            if (Equity != null)
            {
                Context.Equities.Remove(Equity);
                await Context.SaveChangesAsync();
            }

            return RedirectToPage("./Index");
        }
    }
}
