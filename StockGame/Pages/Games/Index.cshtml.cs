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
    public class IndexModel : StockGame.Pages.StockPageModel
    {
        public IndexModel(UserManager<ApplicationUser> userManager, StockGameContext context) : base(userManager, context)
        {
        }

        public IList<Game> Game { get;set; }

        public async Task OnGetAsync(int? SelectActiveGameId)
        {
            await GetCurrentUser();

            //Force Select!
            if (SelectActiveGameId.HasValue)
            {
                if (CurrentUser.ActiveGameId != SelectActiveGameId)
                {
                    if (SelectActiveGameId == -1)
                    {
                        CurrentUser.ActiveGameId = 0;
                        CurrentUser.ActiveGame = null;
                    }
                    else
                        CurrentUser.ActiveGameId = SelectActiveGameId;
                    CurrentUser.OverrideActiveEpisodeIndex = null;
                    Context.Attach(CurrentUser).State = EntityState.Modified;
                    await Context.SaveChangesAsync();
                }
            }

            await FindActiveGameAndTeam(true);

            Game = await Context.Games
                .Include(g => g.Scenario).ToListAsync();
        }
    }
}
