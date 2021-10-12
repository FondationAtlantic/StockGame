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

namespace StockGame.Pages.Teams
{
    [Authorize(Roles = "Teacher")]
    public class DetailsModel : StockGame.Pages.StockPageModel
    {
        public DetailsModel(UserManager<ApplicationUser> userManager, StockGameContext context) : base(userManager, context)
        {
        }

        public Team Team { get; set; }

        public async Task<IActionResult> OnGetAsync(int? id)
        {
            await FindActiveGameAndTeam();

            if (id == null)
                return NotFound();

            Team = await Context.Teams
                .Include(t => t.Group)
                .Include(t => t.OwnerUser)
                .SingleOrDefaultAsync(m => m.Id == id);

            if (Team == null)
                return NotFound();

            return Page();
        }
    }
}
