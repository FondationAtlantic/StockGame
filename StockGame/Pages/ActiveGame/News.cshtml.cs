using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using StockGame.Data;
using StockGame.Models;

namespace StockGame.Pages.ActiveGame
{
    [Authorize(Roles = "Student,Admin,Teacher")]
    public class NewsModel : StockGame.Pages.StockPageModel
    {
        public NewsModel(UserManager<ApplicationUser> userManager, StockGameContext context) : base(userManager, context)
        {
        }

        public async Task OnGetAsync()
        {
            await FindActiveGameAndTeam();
        }
    }
}