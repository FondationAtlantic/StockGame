using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using StockGame.Data;
using StockGame.Models;

namespace StockGame.Pages
{
    public class IndexModel : StockGame.Pages.StockPageModel
    {
        public IndexModel(UserManager<ApplicationUser> userManager, StockGameContext context) : base(userManager, context)
        {
        }

        public bool HasJoinedTeam { get; set; }

        public async Task OnGetAsync()
        {
            await FindActiveGameAndTeam();
            if (User.Identity.IsAuthenticated && User.IsInRole("Student"))
                HasJoinedTeam = Context.TeamMembers.Where(tm => tm.UserId == CurrentUser.Id).FirstOrDefault() != null;
        }
    }
}
