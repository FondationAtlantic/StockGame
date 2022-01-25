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
using StockGame.Models.ViewModels;

namespace StockGame.Pages.Teams
{
    [Authorize(Roles = "Student")]
    public class JoinModel : StockGame.Pages.StockPageModel
    {
        public JoinModel(UserManager<ApplicationUser> userManager, StockGameContext context) : base(userManager, context)
        {
        }

        public IList<Team> Team { get;set; }

        [BindProperty]
        public TeamSelector TeamSelector { get; set; }

        internal async Task FindMembershipList()
        {
            List<TeamMember> teamMembers = await Context.TeamMembers
                .Include(tm => tm.Team)
                .Include(tm => tm.Team.Group)
                .Include(tm => tm.Team.OwnerUser)
                .Include(tm => tm.Team.Group.School)
                .Include(tm => tm.Team.Group.TeacherUser)
                .Where(tm => tm.UserId == CurrentUser.Id)
                .AsNoTracking()
                .ToListAsync();

            //hashset removes duplicates
            Team = teamMembers.Select(tm => tm.Team).ToHashSet().ToList();
        }

        internal async Task PopulateSelectLists()
        {
            List<School> schoolList = Context.Schools.ToList();
            schoolList.Insert(0, new School { Id = -1, Name = "-- Choisir une école --" });
            ViewData["SchoolId"] = new SelectList(schoolList, "Id", "Name");
            ViewData["GroupId"] = new SelectList(TeamSelector.SchoolId > 0 ? await FindGroupList(TeamSelector.SchoolId) : new List<Group>(), "Id", "Name");
            ViewData["TeamId"] = new SelectList(TeamSelector.GroupId > 0 ? await FindTeamList(TeamSelector.GroupId) : new List<Team>(), "Id", "Name");
        }

        public async Task<IActionResult> OnGetAsync(int? AddedTeamId)
        {
            await FindActiveGameAndTeam();

            await FindMembershipList();

            TeamSelector = new TeamSelector();

            await PopulateSelectLists();

            if(AddedTeamId.HasValue)
                ViewData["AddedTeamId"] = AddedTeamId.Value;

            return Page();
        }

        internal async Task< List<Group> > FindGroupList(int SchoolId)
        {
            // All Groups for this School
            List<Group> groupList = await Context.Groups
                .Where(g => g.SchoolId == SchoolId && g.AllowJoin)
                .ToListAsync();

            //Exclude groups which user is already a member of
            List<TeamMember> teamMembers = await Context.TeamMembers
                .Include(tm => tm.Team)
                .Include(tm => tm.Team.Group)
                .Where(tm => tm.UserId == CurrentUser.Id)
                .ToListAsync();
            groupList = groupList.Except(teamMembers.Select(tm => tm.Team.Group)).ToList();

            groupList.Insert(0, new Group { Id = -1, Name = groupList.Count > 0 ? "-- Choisir un groupe --" : "-- Aucun groupe disponible --"});
            return groupList;
        }

        internal async Task< List<Team> > FindTeamList(int GroupId)
        {
            Group group = await Context.Groups.AsNoTracking().SingleOrDefaultAsync(g => g.Id == GroupId);
            List<Team> teamList = await Context.Teams.Where(t => t.GroupId == GroupId && t.AllowJoin).AsNoTracking().ToListAsync();

            if (group.AllowAutoCreateTeam)
                teamList.Insert(0, new Team { Id = -2, Name = "[Créer une nouvelle équipe]" });

            teamList.Insert(0, new Team { Id = -1, Name = "-- Choisir une équipe --" });
            return teamList;
        }

        //AJAX query
        public async Task<JsonResult> OnGetGroupsAsync(int SchoolId)
        {
            JsonResult result;
            try
            {
                await GetCurrentUser();
                result = new JsonResult(await FindGroupList(SchoolId));
            }
            catch(Exception ex)
            {
                result = new JsonResult(ex);
            }

            return result;
        }

        //AJAX query
        public async Task<JsonResult> OnGetTeamsAsync(int GroupId)
        {
            JsonResult result;

            try
            {
                await GetCurrentUser();
                result = new JsonResult(await FindTeamList(GroupId));
            }
            catch(Exception ex)
            {
                result = new JsonResult(ex);
            }
            return result;
        }

        public async Task<IActionResult> OnPostAsync()
        {
            await FindActiveGameAndTeam(true);

            if (TeamSelector.SchoolId == -1)
                ModelState.AddModelError("TeamSelector.SchoolId", "Choisissez une école!");

            if (TeamSelector.TeamId == -1)
                ModelState.AddModelError("TeamSelector.TeamId", "Choisissez une équipe!");

            if(TeamSelector.GroupId == -1)
                ModelState.AddModelError("TeamSelector.GroupId", "Choisissez un groupe!");

            Group group = await Context.Groups.SingleOrDefaultAsync(g => g.Id == TeamSelector.GroupId);
            if(ModelState.IsValid && group != null)
            {
                // Auto-create Team?
                if (TeamSelector.TeamId == -2)
                {
                    if (!group.AllowJoin)
                        ModelState.AddModelError("TeamSelector.TeamId", "Ce groupe n'accepte pas de nouveaux membres!");
                    else if (group.AutoCreateTeamPassword != TeamSelector.JoinPassword)
                        ModelState.AddModelError("TeamSelector.JoinPassword", "Le mot de passe est incorrect!");
                    else if (String.IsNullOrWhiteSpace(TeamSelector.AutoCreateTeamName))
                        ModelState.AddModelError("TeamSelector.AutoCreateTeamName", "Le nom de l'équipe a créer est manquant!");
                    if (ModelState.IsValid)
                    {
                        TeamSelector.Team = new Team
                        {
                            GroupId = TeamSelector.GroupId,
                            OwnerUserId = CurrentUser.Id,
                            Name = TeamSelector.AutoCreateTeamName,
                            AllowJoin = false,
                            JoinPassword = ""
                        };
                        Context.Teams.Add(TeamSelector.Team);
                    }
                }
                else
                {
                    TeamSelector.Team = await Context.Teams.SingleOrDefaultAsync(t => t.Id == TeamSelector.TeamId);

                    if (!TeamSelector.Team.AllowJoin)
                        ModelState.AddModelError("TeamSelector.TeamId", "Cette équipe n'accepte pas de nouveaux membres!");
                    else if (TeamSelector.Team.JoinPassword != TeamSelector.JoinPassword)
                        ModelState.AddModelError("TeamSelector.JoinPassword", "Le mot de passe est incorrect!");
                }
            }

            if (!ModelState.IsValid)
            {
                await FindMembershipList();
                await PopulateSelectLists();
                return Page();
            }

            TeamMember newMember = new TeamMember { User = CurrentUser, Team = TeamSelector.Team };
            Context.TeamMembers.Add(newMember);
            //When joining a Team, attempt to activate a Game it participates in
            List<Game> availableGames = await Context.GameGroups
                .Include(gg => gg.Game)
                .Include(gg => gg.Group)
                .Where(gg => gg.Group.Id == TeamSelector.Team.GroupId)
                .Select(gg => gg.Game)
                .AsNoTracking()
                .ToListAsync();
            //no ambiguity? activate it!
            if(availableGames.Count == 1)
            {
                //update
                CurrentUser.ActiveGameId = availableGames.First().Id;
                CurrentUser.ActiveTeamMember = newMember;
                Context.Attach(CurrentUser).State = EntityState.Modified;
            }

            await Context.SaveChangesAsync();

            return RedirectToPage("./Join", new { AddedTeamId = TeamSelector.Team.Id });
        }
    }
}
