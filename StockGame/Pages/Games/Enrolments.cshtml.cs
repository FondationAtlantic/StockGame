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
using StockGame.Models.ViewModels;

namespace StockGame.Pages.Games
{
    [Authorize(Roles = "Admin")]
    public class EnrolmentsModel : StockGame.Pages.StockPageModel
    {
        public EnrolmentsModel(UserManager<ApplicationUser> userManager, StockGameContext context) : base(userManager, context)
        {
        }

        [BindProperty]
        public Game Game { get; set; }

        [BindProperty]
        public List<GroupEnrollment> Enrolments { get;set; }

        public async Task<IActionResult> OnGetAsync(int? id)
        {
            await FindActiveGameAndTeam();

            if (id == null)
                return NotFound();

            Game = await Context.Games.Include(g => g.GameGroups).SingleOrDefaultAsync(m => m.Id == id);
            if (Game == null)
                return NotFound();

            var queryEnrolments =
                from grp in Context.Groups.Include(g => g.TeacherUser).Include(g => g.School)
                join gameGroup in (from gameGroup in Context.GameGroups where gameGroup.GameId == id select gameGroup)
                    on grp.Id equals gameGroup.GroupId into enrolments
                from enrollment in enrolments.DefaultIfEmpty()
                select new GroupEnrollment
                {
                    Group = grp,
                    Selected = (enrollment != null)
                };

            Enrolments = await queryEnrolments.ToListAsync();

            return Page();
        }


        public async Task<IActionResult> OnPostAsync()
        {
            //if (!ModelState.IsValid)
            //    return Page();

            List<GameGroup> gameGroups = await Context.GameGroups.Where(gg => gg.GameId == Game.Id).OrderBy(gg => gg.GroupId).ToListAsync();

            var iterExistingGameGroups = gameGroups.GetEnumerator();
            iterExistingGameGroups.MoveNext();
            List<GameGroup> addedGameGroups = new List<GameGroup>();
            foreach (GroupEnrollment enrol in Enrolments.OrderBy(e => e.Group.Id))
            {
                bool shouldAdd = enrol.Selected && (iterExistingGameGroups.Current == null || iterExistingGameGroups.Current.GroupId > enrol.Group.Id);
                bool isCurrent = iterExistingGameGroups.Current?.GroupId == enrol.Group.Id;
                bool shouldDelete = !enrol.Selected && isCurrent;

                if (shouldDelete)
                    Context.Attach(iterExistingGameGroups.Current).State = EntityState.Deleted;
                else if (shouldAdd)
                    addedGameGroups.Add(new GameGroup { GameId = Game.Id, GroupId = enrol.Group.Id });

                if (isCurrent)
                    iterExistingGameGroups.MoveNext();
            }

            foreach (GameGroup added in addedGameGroups)
                Context.GameGroups.Add(added);

            await Context.SaveChangesAsync();

            return RedirectToPage("./Index");
        }
    }
}
