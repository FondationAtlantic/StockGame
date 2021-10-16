using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Security.Claims;
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

namespace StockGame.Pages
{
    public class StockPageModel : PageModel
    {
        private readonly StockGame.Data.StockGameContext _context;
        private readonly UserManager<ApplicationUser> _userManager;

        public ApplicationUser CurrentUser { get; private set; }
        public Game ActiveGame { get; private set; }
        public Team ActiveTeam { get; private set; }
        public int ActiveEpisodeIndex { get; private set; }
        public TeamMember ActiveTeamMember { get; private set; }
        public TradingSession ActiveTradingSession { get; private set; }
        public List<SelectListItem> OverrideEpisodeList { get; private set; }
        internal IList<EpisodeEquityInfo> ActiveEpisodeEquityInfos { get; private set; }
        internal IList<EpisodeEquityInfo> ActiveAndPastEpisodeEquityInfos { get; private set; }
        internal IList<EpisodeEquityInfo> FutureEpisodeEquityInfos { get; private set; }
        public UserManager<ApplicationUser> UserManager => _userManager;
        public StockGameContext Context => _context;

        //TODO remove?
        public StockPageModel()
        {
        }

        public StockPageModel(UserManager<ApplicationUser> userManager, StockGame.Data.StockGameContext context)
        {
            _userManager = userManager;
            _context = context;
        }

        //[Authorize]
        public async Task<ApplicationUser> GetCurrentUser()
        {
            ClaimsPrincipal principal = HttpContext.User as ClaimsPrincipal;
            CurrentUser = await _userManager.GetUserAsync(principal);
            return CurrentUser;
        }

        //[Authorize]
        public async Task FindActiveGameAndTeam(bool trackUser = false)
        {
            if (CurrentUser == null)
                if (await GetCurrentUser() == null)
                    return;

            var request = _context.ApplicationUsers
                .Include(u => u.ActiveTeamMember)
                .Include(u => u.ActiveTeamMember.Team)
                .Include(u => u.ActiveGame)
                .Include(u => u.ActiveGame.AllowJoinEpisodeRange)
                .Include(u => u.ActiveGame.ShowLeverageEpisodeRange)
                .Include(u => u.ActiveGame.ShowPriceEarningsEpisodeRange)
                .Include(u => u.ActiveGame.GameGroups)
                    .ThenInclude(gg => gg.Group)
                .Where(u => u.Id == CurrentUser.Id);

            if (!trackUser)
                request = request.AsNoTracking();

            CurrentUser = await request.SingleAsync();

            //invalid game, abort
            if (CurrentUser.ActiveGame == null)
                return;

            if (CurrentUser.ActiveTeamMember != null)
            {
                GameGroup gameGroup = await _context.GameGroups
                    .Include(gg => gg.Game)
                    .Include(gg => gg.Group)
                    .Where(gg => gg.GameId == CurrentUser.ActiveGameId
                                 && gg.GroupId == CurrentUser.ActiveTeamMember.Team.GroupId)
                    .SingleOrDefaultAsync();

                //invalid Game & Team combination, nullify the team
                if (gameGroup == null)
                {
                    CurrentUser.ActiveTeamMemberId = 0;
                    CurrentUser.ActiveTeamMember = null;
                    Context.Attach(CurrentUser).State = EntityState.Modified;
                    await Context.SaveChangesAsync();
                }
                else
                {
                    ActiveTeamMember = CurrentUser.ActiveTeamMember;
                    ActiveTeam = CurrentUser.ActiveTeamMember.Team;
                }
            }

            ActiveGame = CurrentUser.ActiveGame;

            //TODO
            var result1 = await
                          Context.Transactions.Include(t => t.TeamMember)
                                 .Include(t => t.TeamMember.Team)
                                 .Include(t => t.TradingSession)
                                 .Include(t => t.TradingSession.Episode)
                                 .Where(t => t.TradingSession.GameId == ActiveGame.Id)
                                 .GroupBy(t => new { TeamId = t.TeamMember.TeamId, TeamName = t.TeamMember.Team.Name, EpisodeIndex = t.TradingSession.Episode.EpisodeIndex })
                                 .Select(n => new
                                 {
                                     TeamId = n.Key.TeamId,
                                     TeamName = n.Key.TeamName,
                                     EpisodeIndex = n.Key.EpisodeIndex,
                                     TransactionCount = n.Count()
                                 })
                                .OrderBy(n => n.TeamId)
                                .ThenBy(n => n.TeamName)
                                .ThenBy(n => n.EpisodeIndex)
                                .ToListAsync();

            var result2 = result1
                .GroupBy(t => new { TeamId = t.TeamId, TeamName = t.TeamName} )
                .Select(n => new
                {
                    TeamId = n.Key.TeamId,
                    TeamName = n.Key.TeamName,
                    EpisodeCount = n.Count()
                })
                .OrderBy(n => n.TeamId)
                .ThenBy(n => n.TeamName)
                .ToList();

            foreach (var val in result2)
            {
                val.ToString();
            }

            ActiveEpisodeIndex = ActiveGame.CurrentEpisodeIndex;
            bool isAdmin = await UserManager.IsInRoleAsync(CurrentUser, "Admin");
            if (isAdmin && CurrentUser.OverrideActiveEpisodeIndex != null)
                ActiveEpisodeIndex = CurrentUser.OverrideActiveEpisodeIndex.Value;

            ActiveTradingSession = 
                await _context.TradingSessions.Include(ts => ts.Episode)
                                                .Where(ts => ts.GameId == ActiveGame.Id && ts.Episode.EpisodeIndex == ActiveEpisodeIndex)
                                                .AsNoTracking()
                                                .SingleAsync();

            if(isAdmin)
            {
                OverrideEpisodeList = await _context.Episodes
                    .Where(ep => ep.EpisodeIndex >= 0)
                    .OrderBy(ep => ep.EpisodeIndex)
                    .Select(ep => new SelectListItem
                        {
                            Text = ep.EpisodeIndex.ToString() + ") " + ep.Name + (ep.EpisodeIndex == ActiveGame.CurrentEpisodeIndex ? " (current)" : ""),
                            Value = ep.EpisodeIndex.ToString(),
                            Selected = ep.EpisodeIndex == ActiveEpisodeIndex
                        })
                    .ToListAsync();
            }
        }

        public async Task<IActionResult> OnGetOverrideEpisodeIndex(int index)
        {
            await GetCurrentUser();
            CurrentUser.OverrideActiveEpisodeIndex = index;
            Context.Attach(CurrentUser).State = EntityState.Modified;
            await Context.SaveChangesAsync();

            return RedirectToPage();
        }
        
        //[Authorize]
        public async Task FindActiveEpisodeEquityInfos()
        {
            if (ActiveGame == null)
                await FindActiveGameAndTeam();

            if (ActiveGame == null)
                return;

            List<EpisodeEquityInfo> AllEpisodeEquityInfos = 
                await _context.EpisodeEquityInfos.Include(eei => eei.Category)
                                                 .Include(eei => eei.Equity)
                                                 .Include(eei => eei.Equity.Industry)
                                                 .Include(eei => eei.Episode)
                                                 .Where(eei => eei.Episode.ScenarioId == ActiveGame.ScenarioId)
                                                 .OrderBy(eei => eei.Equity.Id).ThenBy(eei => eei.Episode.EpisodeIndex)
                                                 .AsNoTracking()
                                                 .ToListAsync();

            ActiveAndPastEpisodeEquityInfos = AllEpisodeEquityInfos.Where(eei => eei.Episode.EpisodeIndex <= ActiveEpisodeIndex).ToList();

            FutureEpisodeEquityInfos = AllEpisodeEquityInfos.Where(eei => eei.Episode.EpisodeIndex > ActiveEpisodeIndex).ToList();

            ActiveEpisodeEquityInfos = ActiveAndPastEpisodeEquityInfos.Where(eei => eei.Episode.EpisodeIndex == ActiveEpisodeIndex).ToList();
        }

        //[Authorize]
        public async Task<PortfolioGameHistory> PortfolioHistories(Game game, IEnumerable<Team> teams = null, int upToEpisodeIndex = int.MaxValue)
        {
            if (teams == null)
            {
                //default all Teams of the Game
                teams = await Context.GameGroups
                    .Include(gg => gg.Game)
                    .Include(gg => gg.Group)
                    .Include(gg => gg.Group.Teams)
                    .Where(gg => gg.GameId == game.Id)
                    .SelectMany(gg => gg.Group.Teams)
                    //.AsNoTracking()
                    .ToListAsync();
            }

            //sort teams
            teams = teams.OrderBy(t => t.Id).ToList();
            int[] teamIds = teams.Select(t => t.Id).ToArray();

            if (upToEpisodeIndex == int.MaxValue)
                upToEpisodeIndex = game.CurrentEpisodeIndex;

            var queryHoldings =
                from transaction in Context.Transactions
                join teamMember in Context.TeamMembers on transaction.TeamMemberId equals teamMember.Id
                join tradingSession in Context.TradingSessions on transaction.TradingSessionId equals tradingSession.Id
                join episode in Context.Episodes on tradingSession.EpisodeId equals episode.Id
                join episodeEquityInfo in Context.EpisodeEquityInfos on tradingSession.EpisodeId equals episodeEquityInfo.EpisodeId
                where episodeEquityInfo.EquityId == transaction.EquityId
                      && episode.EpisodeIndex >= 0
                      && episode.EpisodeIndex <= upToEpisodeIndex
                      && tradingSession.GameId == game.Id
                      && teamIds.Contains(teamMember.TeamId)
                group transaction by new { teamMember.TeamId, episode.EpisodeIndex, tradingSession.EpisodeId, episodeEquityInfo.EquityId, episodeEquityInfo.Price } into g
                orderby g.Key.TeamId, g.Key.EquityId, g.Key.EpisodeIndex
                select new
                {
                    TeamId = g.Key.TeamId,
                    EquityId = g.Key.EquityId,
                    EpisodeIndex = g.Key.EpisodeIndex,
                    EpisodeId = g.Key.EpisodeId,
                    Amount = g.Sum(t3 => t3.Amount),
                    Price = g.Key.Price
                };
            var pastHoldings = queryHoldings.ToList();

            List<EpisodeEquityInfo> episodeEquityInfos = await Context.EpisodeEquityInfos
                .Include(eei => eei.Equity)
                .Include(eei => eei.Episode)
                .Where(eei =>    eei.Episode.ScenarioId == game.ScenarioId
                              && eei.Episode.EpisodeIndex >= 0
                              && eei.Episode.EpisodeIndex <= upToEpisodeIndex)
                .OrderBy(eei => eei.EquityId).ThenBy(eei => eei.Episode.EpisodeIndex)
                .ToListAsync();

            PortfolioGameHistory result = new PortfolioGameHistory { Game = game };

            var iterHoldings = pastHoldings.GetEnumerator();
            iterHoldings.MoveNext();

            foreach (Team team in teams)
            {
                PortfolioTeamHistory teamHistory = new PortfolioTeamHistory { Team = team };
                result.TeamHistories.Add(teamHistory);

                teamHistory.Items.AddRange(Enumerable.Range(0, upToEpisodeIndex+1).Select(e => new PortfolioHistoryItem()));

                var iterPastEquityInfos = episodeEquityInfos.GetEnumerator();
                iterPastEquityInfos.MoveNext();

                while(iterPastEquityInfos.Current != null)
                {
                    Equity equity = iterPastEquityInfos.Current?.Equity;
                    int investedAmount = 0;

                    while (iterPastEquityInfos.Current?.Equity == equity)
                    {
                        EpisodeEquityInfo eei = iterPastEquityInfos.Current;
                        Episode episode = eei.Episode;
                        PortfolioHistoryItem historyItem = teamHistory.Items[episode.EpisodeIndex];
                        historyItem.Episode = episode;

                        var current = iterHoldings.Current;
                        if (  current != null
                           && current.TeamId == team.Id
                           && current.EquityId == equity.Id
                           && current.EpisodeIndex == episode.EpisodeIndex)
                        {
                            investedAmount += current.Amount;
                            historyItem.Cash -= current.Amount * current.Price;
                            iterHoldings.MoveNext();
                        }

                        PortfolioItem item = new PortfolioItem
                        {
                            Equity = equity,
                            EquityId = equity.Id,
                            AllowTransactions = episode.AllowTransactions && eei.AllowTransactions,
                            Amount = investedAmount,
                            Price = eei.Price
                        };
                        historyItem.Items.Add(item);

                        historyItem.InvestmentsValue += investedAmount * eei.Price;
                        historyItem.DividendsReceived += investedAmount * eei.Dividend.GetValueOrDefault(0.0f);
                        iterPastEquityInfos.MoveNext();
                    }
                }

                teamHistory.Items[0].Cash += game.InitialCash;

                //accrue dividends
                for(int episodeIndex = 1; episodeIndex <= upToEpisodeIndex; episodeIndex++)
                {
                    PortfolioHistoryItem itemPrevEpisode = teamHistory.Items[episodeIndex - 1];
                    teamHistory.Items[episodeIndex].Cash += itemPrevEpisode.DividendsReceived + itemPrevEpisode.Cash;
                }

                foreach(PortfolioHistoryItem item in teamHistory.Items)
                {
                    item.Items.Sort((item1, item2) => item1.Equity.Name.CompareTo(item2.Equity.Name));
                }
            }

            return result;
        }
    }
}
