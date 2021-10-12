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

namespace StockGame.Pages.Schools
{
    [Authorize(Roles = "Admin")]
    public class DetailsModel : StockGame.Pages.StockPageModel
    {
        public DetailsModel(UserManager<ApplicationUser> userManager, StockGameContext context) : base(userManager, context)
        {
        }

        public School School { get; set; }

        public async Task<IActionResult> OnGetAsync(int? id)
        {
            await FindActiveGameAndTeam();

            if (id == null)
            {
                return NotFound();
            }

            School = await Context.Schools.SingleOrDefaultAsync(m => m.Id == id);

            if (School == null)
            {
                return NotFound();
            }
            return Page();
        }
    }
}
