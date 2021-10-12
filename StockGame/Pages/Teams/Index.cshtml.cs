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
    public class IndexModel : StockGame.Pages.StockPageModel
    {
        public IndexModel(UserManager<ApplicationUser> userManager, StockGameContext context) : base(userManager, context)
        {
        }

        public IList<Team> Team { get;set; }

        public async Task OnGetAsync()
        {
            await FindActiveGameAndTeam();

            Team = await Context.Teams
                .Include(t => t.Group)
                .Include(t => t.OwnerUser)
                .ToListAsync();
        }
    }
}
