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

namespace StockGame.Pages.ActiveGame
{
    [Authorize(Roles = "Student")]
    public class IndexModel : StockPageModel
    {
        public IndexModel(UserManager<ApplicationUser> userManager, StockGameContext context) : base(userManager, context)
        {
        }

        public IList<ActiveGameTeamItem> ActiveGameTeams { get;set; }

        public async Task OnGetAsync(int? SelectActiveGameId, int? SelectActiveTeamMemberId)
        {
            await GetCurrentUser();

            //Force Select!
            if (SelectActiveGameId.HasValue && SelectActiveTeamMemberId.HasValue)
            {
                if (CurrentUser.ActiveGameId != SelectActiveGameId || CurrentUser.ActiveTeamMemberId != SelectActiveTeamMemberId)
                {
                    CurrentUser.ActiveGameId = SelectActiveGameId;
                    CurrentUser.ActiveTeamMemberId = SelectActiveTeamMemberId;
                    Context.Attach(CurrentUser).State = EntityState.Modified;
                    await Context.SaveChangesAsync();
                }
            }

            await FindActiveGameAndTeam();

            //Find Member Teams
            List<TeamMember> teamMembers =
               await Context.TeamMembers.Include(tm => tm.Team)
                                         .Include(tm => tm.Team.Group)
                                         .Include(tm => tm.Team.Group.GameGroups)
                                            .ThenInclude(gg => gg.Game)
                                         .Where(tm => tm.UserId == CurrentUser.Id)
                                         .AsNoTracking()
                                         .ToListAsync();

            ActiveGameTeams = new List<ActiveGameTeamItem>();
            foreach (TeamMember tm in teamMembers)
                foreach (Game game in tm.Team.Group.GameGroups.Select(gg => gg.Game))
                    ActiveGameTeams.Add(new ActiveGameTeamItem {
                        Game = game,
                        TeamMember = tm,
                        Selected = game.Id == ActiveGame?.Id && tm.Id == ActiveTeamMember?.Id });

            ActiveGameTeams = ActiveGameTeams.OrderBy(agt => agt.Game.Name).ThenBy(agt => agt.TeamMember.Team.Name).ToList();
        }
    }
}
