using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using StockGame.Data;
using StockGame.Models;

namespace StockGame.Pages.Teams
{
    [Authorize(Roles = "Teacher,Student")]
    public class EditModel : StockGame.Pages.StockPageModel
    {
        public EditModel(UserManager<ApplicationUser> userManager, StockGameContext context) : base(userManager, context)
        {
        }

        [BindProperty]
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

            //Teacher may edit any Team from Group which he is owner
            //Student may only edit Team which he is owner
            if (Team.Group.TeacherUserId != CurrentUser.Id && Team.OwnerUserId != CurrentUser.Id)
                return Forbid();

            ViewData["GroupId"] = new SelectList(Context.Groups, "Id", "Name");
            ViewData["OwnerUserId"] = new SelectList(Context.Users, "Id", "UserName");
            ViewData["ReturnLink"] = await UserManager.IsInRoleAsync(CurrentUser, "Student") ? "./Join" : "./Index";
            return Page();
        }

        public async Task<IActionResult> OnPostAsync()
        {
            if (User.IsInRole("Student"))
            {
                await FindActiveGameAndTeam();
                ViewData["ReturnLink"] = "./Join";
            }
            else
            {
                await GetCurrentUser();
                ViewData["ReturnLink"] = "./Index";
            }


            if (!ModelState.IsValid)
            {
                return Page();
            }

            Context.Attach(Team).State = EntityState.Modified;

            try
            {
                await Context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!TeamExists(Team.Id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return RedirectToPage(ViewData["ReturnLink"].ToString());
        }

        private bool TeamExists(int id)
        {
            return Context.Teams.Any(e => e.Id == id);
        }
    }
}
