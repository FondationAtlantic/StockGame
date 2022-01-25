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

namespace StockGame.Pages.Groups
{
    [Authorize(Roles = "Teacher")]
    public class EditModel : StockGame.Pages.StockPageModel
    {
        public EditModel(UserManager<ApplicationUser> userManager, StockGameContext context) : base(userManager, context)
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
            {
                return NotFound();
            }
            ViewData["SchoolId"] = new SelectList(Context.Schools, "Id", "Name");
            ViewData["TeacherUserId"] = new SelectList(Context.Users, "Id", "UserName");
            return Page();
        }

        public async Task<IActionResult> OnPostAsync()
        {
            await FindActiveGameAndTeam();

            if (!ModelState.IsValid)
                return Page();

            Context.Attach(Group).State = EntityState.Modified;

            try
            {
                await Context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!GroupExists(Group.Id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return RedirectToPage("./Index");
        }

        private bool GroupExists(int id)
        {
            return Context.Groups.Any(e => e.Id == id);
        }
    }
}
