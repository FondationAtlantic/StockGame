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

namespace StockGame.Pages.Groups
{
    [Authorize(Roles = "Teacher")]
    public class DeleteModel : StockGame.Pages.StockPageModel
    {
        public DeleteModel(UserManager<ApplicationUser> userManager, StockGameContext context) : base(userManager, context)
        {
        }

        [BindProperty]
        public Group Group { get; set; }

        public async Task<IActionResult> OnGetAsync(int? id)
        {
            await FindActiveGameAndTeam();

            if (id == null)
                return NotFound();

            Group = await Context.Groups
                .Include(g => g.School)
                .Include(g => g.TeacherUser).SingleOrDefaultAsync(m => m.Id == id);

            if (Group == null)
                return NotFound();

            return Page();
        }

        public async Task<IActionResult> OnPostAsync(int? id)
        {
            if (id == null)
                return NotFound();

            Group = await Context.Groups
                .Include(g => g.Teams)
                    .ThenInclude(t => t.TeamMembers)
                        .ThenInclude(tm => tm.User) // to cascade ClientSetNull ActiveTeamMember fields
                .Where(g => g.Id == id)
                .SingleOrDefaultAsync();

            if (Group != null)
            {
                Context.Groups.Remove(Group);
                await Context.SaveChangesAsync();
            }

            return RedirectToPage("./Index");
        }
    }
}
