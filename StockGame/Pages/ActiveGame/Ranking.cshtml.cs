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
using System.ComponentModel.DataAnnotations;

namespace StockGame.Pages.Games
{
    [Authorize(Roles = "Admin,Teacher,Student")]
    public class RankingModel : StockGame.Pages.StockPageModel
    {
        public RankingModel(UserManager<ApplicationUser> userManager, StockGameContext context) : base(userManager, context)
        {
            CurrentSortCategory = SortCategoryEnum.GainPct;
        }

        public Game Game { get; set; }

        public PortfolioGameHistory PortfolioGameHistory { get; set; }

        public List<PortfolioGameRankingItem> PortfolioGameRankingItems { get; set; }

        public enum SortCategoryEnum { 
            [Display(Name = "Équipe")]    
            Team,
            
            [Display(Name = "Rendement Session")]
            GainPct,
            
            [Display(Name = "Gain Session")]
            Gain,
        
            [Display(Name = "Rendement Total")]
            TotalPct,
            
            [Display(Name = "Valeur Totale")]
            TotalValue }
        public SortCategoryEnum CurrentSortCategory { get; set; } 
        
        public async Task<IActionResult> OnGetAsync(int? id, string sortOrder, int? SelectActiveGameId, int? SelectActiveTeamId)
        {
            await GetCurrentUser();
            bool isAdmin = await UserManager.IsInRoleAsync(CurrentUser, "Admin");

            if (id != null && !isAdmin)
                return Forbid();

            bool selectActive = SelectActiveGameId.HasValue && SelectActiveTeamId.HasValue;
            bool forgetTeam = SelectActiveTeamId == -1;
            if ((forgetTeam || selectActive) && !isAdmin)
                return Forbid();

            if (forgetTeam)
            {
                //TODO crash?
                CurrentUser.ActiveTeamMemberId = 0;
                CurrentUser.ActiveTeamMember = null;
                Context.Attach(CurrentUser).State = EntityState.Modified;
                await Context.SaveChangesAsync();
            }
            else if (selectActive)
            {
                // arbitrarily activate first team member
                TeamMember teamMember = await Context.TeamMembers.Where(tm => tm.TeamId == SelectActiveTeamId).FirstOrDefaultAsync();
                if (CurrentUser.ActiveGameId != SelectActiveGameId || CurrentUser.ActiveTeamMemberId != teamMember.Id)
                {
                    CurrentUser.ActiveGameId = SelectActiveGameId;
                    CurrentUser.ActiveTeamMemberId = teamMember.Id;
                    Context.Attach(CurrentUser).State = EntityState.Modified;
                    await Context.SaveChangesAsync();
                }
            }

            await FindActiveGameAndTeam(true);

            int activeEpisodeIndex;
            if (id != null)
            {
                Game = await Context.Games.SingleOrDefaultAsync(m => m.Id == id);
                activeEpisodeIndex = Game.CurrentEpisodeIndex;
            }
            else
            {
                Game = ActiveGame;
                activeEpisodeIndex = ActiveEpisodeIndex;
            }

            if(Game == null)
                return NotFound();

            PortfolioGameHistory = await PortfolioHistories(Game, null, activeEpisodeIndex);
            bool activeTeamOnTop = !isAdmin;
            //active team on top, then sort by value
            PortfolioGameHistory.TeamHistories.Sort((th1, th2) => (th1.Team == ActiveTeam) != (th2.Team == ActiveTeam) && activeTeamOnTop
                                                                    ? (th1.Team == ActiveTeam ? -1 : 1)
                                                                    : th2.Items.Last().TotalValue.CompareTo(th1.Items.Last().TotalValue));

            int rank = 1;
            float? prevValue = null;
            IEnumerable<PortfolioGameRankingItem> rankItems = PortfolioGameHistory.TeamHistories
                .OrderByDescending(pti => pti.Items.Last().TotalValue)
                .Select((pti, index) => {
                    var items = pti.Items;
                    var value = items.Last().TotalValue;
                    if (prevValue != value)
                        rank = index + 1;
                    prevValue = value;
                    return new PortfolioGameRankingItem
                    {
                        Rank = rank,
                        Team = pti.Team,
                        TotalValue = value,
                        Gain = items.Count > 1 ? value - items[items.Count - 2].TotalValue : (float?)null,
                        InitialValue = Game.InitialCash
                    };
                });

            switch (sortOrder)
            {
                case "Team_desc":
                    PortfolioGameRankingItems = rankItems.OrderByDescending(ri => ri.Team.Name).ToList();
                    break;
                case "Team_asc":
                    PortfolioGameRankingItems = rankItems.OrderBy(ri => ri.Team.Name).ToList();
                    break;
                case "GainPct_asc":
                    PortfolioGameRankingItems = rankItems.OrderBy(ri => ri.PctGain).ToList();
                    break;
                case "GainPct_desc":
                    PortfolioGameRankingItems = rankItems.OrderByDescending(ri => ri.PctGain).ToList();
                    break;
                case "Gain_asc":
                    PortfolioGameRankingItems = rankItems.OrderBy(ri => ri.Gain).ToList();
                    break;
                case "Gain_desc":
                    PortfolioGameRankingItems = rankItems.OrderByDescending(ri => ri.Gain).ToList();
                    break;
                case "TotalPct_asc":
                    PortfolioGameRankingItems = rankItems.OrderBy(ri => ri.TotalPctGain).ToList();
                    break;
                case "TotalPct_desc":
                    PortfolioGameRankingItems = rankItems.OrderByDescending(ri => ri.TotalPctGain).ToList();
                    break;
                case "TotalValue_asc":
                    PortfolioGameRankingItems = rankItems.OrderBy(ri => ri.TotalValue).ToList();
                    break;
                default: //total value descending
                    PortfolioGameRankingItems = rankItems.OrderByDescending(ri => ri.TotalValue).ToList();
                    break;
            }

            return Page();
        }

        public string IsCategoryActive(SortCategoryEnum SortCategory) {
            if(CurrentSortCategory == SortCategory)
            {
                return "active";
            }
            
            return "";
        }
    }
}
