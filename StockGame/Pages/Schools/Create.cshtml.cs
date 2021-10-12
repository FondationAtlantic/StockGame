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

namespace StockGame.Pages.Schools
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

            return Page();
        }

        [BindProperty]
        public School School { get; set; }

        public async Task<IActionResult> OnPostAsync()
        {
            if (!ModelState.IsValid)
            {
                return Page();
            }

            Context.Schools.Add(School);
            await Context.SaveChangesAsync();

            return RedirectToPage("./Index");
        }
    }
}