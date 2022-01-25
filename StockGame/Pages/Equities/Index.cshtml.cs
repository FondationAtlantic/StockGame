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
    public class IndexModel : StockPageModel
    {
        public IndexModel(UserManager<ApplicationUser> userManager, StockGameContext context) : base(userManager, context)
        {
        }

        public IList<Equity> Equity { get;set; }

        public async Task OnGetAsync()
        {
            await FindActiveGameAndTeam();

            Equity = await Context.Equities
                .Include(e => e.Industry)
                .OrderBy(e => e.Name)
                .ToListAsync();
        }
    }
}
