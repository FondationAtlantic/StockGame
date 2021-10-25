using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Internal;
using StockGame.Data;
using StockGame.Models;
using StockGame.Models.ViewModels;
using StockGame.Pages.Games;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace StockGame.Pages
{
    public class IndexModel : StockGame.Pages.StockPageModel
    {
        public IndexModel(UserManager<ApplicationUser> userManager, StockGameContext context) : base(userManager, context)
        {
        }

        public int CurrentRank { get; set; }
        public bool HasJoinedTeam { get; set; }
        public AnalysisIndexItem HighestYield { get { return SortedYield.FirstOrDefault(); } }
        public AnalysisIndexItem LowestYield { get { return SortedYield.LastOrDefault(); } }
        public IList<AnalysisIndexItem> IndexItems { get; set; }
        public PortfolioHistoryItem Portfolio { get; set; }
        public PortfolioGameHistory PortfolioGameHistory { get; set; }
        public IList<PortfolioGraphItem> PortfolioGraphItems { get; set; }
        public PortfolioTeamHistory PortfolioTeamHistory { get; set; }
        [DataType(DataType.Currency)]
        public float ProfitLosses { get { return Portfolio.TotalValue - ActiveGame.InitialCash; } }
        [DisplayFormat(DataFormatString = "{0:0.00} %")]
        public float? ProfitLossesPct { get { return (ProfitLosses / ActiveGame.InitialCash) * 100; } }
        IList<AnalysisIndexItem> SortedYield { get; set; }


        public async Task FetchPortfolios()
        {
            await FindActiveGameAndTeam();

            PortfolioGameHistory = await PortfolioHistories(ActiveGame, null, ActiveEpisodeIndex);
            PortfolioTeamHistory = PortfolioGameHistory.TeamHistories.Find(id => id.Team.Id == ActiveTeam.Id);

            Portfolio = PortfolioTeamHistory.Items.LastOrDefault();

            PortfolioGameHistory.TeamHistories.Sort((th1, th2) => (th1.Team == ActiveTeam) != (th2.Team == ActiveTeam)
                                                                    ? (th1.Team == ActiveTeam ? -1 : 1)
                                                                    : th2.Items.Last().TotalValue.CompareTo(th1.Items.Last().TotalValue));
            CurrentRank = PortfolioGameHistory.TeamHistories.FindIndex(t => t.Team.Id == ActiveTeam.Id) + 1;

            PortfolioGraphItems = new List<PortfolioGraphItem>();
            foreach (var item in PortfolioTeamHistory.Items)
            {
                PortfolioGraphItems.Add(new PortfolioGraphItem
                {
                    EpisodeName = item.Episode.Name,
                    TotalValue = item.TotalValue
                });
            }
        }


        public async Task OnGetAsync()
        {
            await FindActiveGameAndTeam();

            if (User.Identity.IsAuthenticated && User.IsInRole("Student"))
            {
                HasJoinedTeam = Context.TeamMembers.Where(tm => tm.UserId == CurrentUser.Id).FirstOrDefault() != null;

                if (HasJoinedTeam)
                {
                    await FetchPortfolios();
                    await FindActiveEpisodeEquityInfos();

                    var items = new List<AnalysisIndexItem>();

                    var iterPastEquityInfos = ActiveAndPastEpisodeEquityInfos.GetEnumerator();
                    iterPastEquityInfos.MoveNext();
                    foreach (EpisodeEquityInfo eei in ActiveEpisodeEquityInfos)
                    {
                        while (iterPastEquityInfos.Current != null
                                && iterPastEquityInfos.Current.EquityId == eei.EquityId
                                && iterPastEquityInfos.Current.Episode.EpisodeIndex != ActiveEpisodeIndex - 1)
                        {
                            iterPastEquityInfos.MoveNext();
                        }

                        if (eei.Visible)
                        {
                            items.Add(new AnalysisIndexItem
                            {
                                EpisodeEquityInfo = eei,
                                Trend = (iterPastEquityInfos.Current == null
                                        || iterPastEquityInfos.Current.EquityId != eei.EquityId
                                        || iterPastEquityInfos.Current.Price == eei.Price)
                                        ? AnalysisIndexItem.PriceTrend.Unchanged
                                        : (iterPastEquityInfos.Current.Price < eei.Price
                                        ? AnalysisIndexItem.PriceTrend.Up
                                        : AnalysisIndexItem.PriceTrend.Down)
                            });
                        }
                        iterPastEquityInfos.MoveNext();
                        iterPastEquityInfos.MoveNext();
                    }

                    IndexItems = items.OrderBy(item => item.EpisodeEquityInfo.Equity.Industry.Name).ThenBy(item => item.EpisodeEquityInfo.Equity.Name).ToList();

                    SortedYield = items.Where(items => items.DividendYield != null)
                                       .OrderByDescending(item => item.DividendYield.HasValue)
                                       .ThenByDescending(items => items.DividendYield)
                                       .ToList();
                }
            }
        }
    }
}
