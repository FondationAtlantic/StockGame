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

namespace StockGame.Pages.Groups
{
    [Authorize(Roles = "Teacher")]
    public class CreateModel : StockGame.Pages.StockPageModel
    {
        public CreateModel(UserManager<ApplicationUser> userManager, StockGameContext context) : base(userManager, context)
        {
        }

        public async Task<IActionResult> OnGet()
        {
            await FindActiveGameAndTeam();

            ViewData["SchoolId"] = new SelectList(Context.Schools, "Id", "Name");
            ViewData["TeacherUserId"] = new SelectList(Context.Users, "Id", "UserName");
            return Page();
        }

        [BindProperty]
        public Group Group { get; set; }

        public async Task<IActionResult> OnPostAsync()
        {
            if (!ModelState.IsValid)
            {
                return Page();
            }

            Context.Groups.Add(Group);
            await Context.SaveChangesAsync();

            return RedirectToPage("./Index");
        }
    }
}