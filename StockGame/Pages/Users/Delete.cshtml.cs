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

namespace StockGame.Pages.Users
{
    [Authorize(Roles = "Admin")]
    public class DeleteModel : StockPageModel
    {
        public DeleteModel(UserManager<ApplicationUser> userManager, StockGameContext context) : base(userManager, context)
        {
        }

        [BindProperty]
        public ApplicationUser ApplicationUser { get; set; }

        public async Task<IActionResult> OnGetAsync(string id)
        {
            await FindActiveGameAndTeam();

            if (id == null)
                return NotFound();

            ApplicationUser = await Context.ApplicationUsers.SingleOrDefaultAsync(m => m.Id == id);

            if (ApplicationUser == null)
                return NotFound();

            return Page();
        }

        public async Task<IActionResult> OnPostAsync(string id)
        {
            if (id == null)
                return NotFound();

            ApplicationUser = await Context.ApplicationUsers.FindAsync(id);

            if (ApplicationUser != null)
            {
                Context.ApplicationUsers.Remove(ApplicationUser);
                await Context.SaveChangesAsync();
            }

            return RedirectToPage("./Index");
        }
    }
}
