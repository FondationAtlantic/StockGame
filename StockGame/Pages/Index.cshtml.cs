using Microsoft.AspNetCore.Identity;
using StockGame.Data;
using StockGame.Models;
using StockGame.Models.ViewModels;
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
        public AnalysisIndexItem HighestYield => SortedYield.FirstOrDefault();
        public AnalysisIndexItem LowestYield => SortedYield.LastOrDefault();
        public IList<AnalysisIndexItem> IndexItems { get; set; }
        public PortfolioHistoryItem Portfolio { get; set; }
        public PortfolioTeamHistory PortfolioTeamHistory { get; set; }
        [DataType(DataType.Currency)]
        public float ProfitLosses => Portfolio.TotalValue - ActiveGame.InitialCash;
        [DisplayFormat(DataFormatString = "{0:0.00} %")]
        public float? ProfitLossesPct => (ProfitLosses / ActiveGame.InitialCash) * 100;
        IList<AnalysisIndexItem> SortedYield { get; set; }


        public async Task FetchMarketAnalysis()
        {
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
            foreach (AnalysisIndexItem analysisItem in items)
            {
                iterPastEquityInfos = ActiveAndPastEpisodeEquityInfos.GetEnumerator();
                iterPastEquityInfos.MoveNext();
                while (iterPastEquityInfos.Current != null)
                {
                    while (iterPastEquityInfos.Current != null
                          && iterPastEquityInfos.Current.EquityId != analysisItem.EpisodeEquityInfo.EquityId)
                        iterPastEquityInfos.MoveNext();

                    EpisodeEquityInfo eei = iterPastEquityInfos.Current;
                    if (eei == null)
                        break;

                    if (eei.Dividend.HasValue
                        && eei.Dividend.Value != 0.0f
                        && eei.Episode.EpisodeIndex < ActiveEpisodeIndex
                        && (analysisItem.PrevDividendEpisode == null || eei.Episode.EpisodeIndex > analysisItem.PrevDividendEpisode.Episode.EpisodeIndex))
                    {
                        analysisItem.PrevDividendEpisode = eei;
                    }

                    if (eei.AnnounceFinancialResults
                        && eei.Episode.EpisodeIndex < ActiveEpisodeIndex
                        && (analysisItem.PrevResultsEpisode == null || eei.Episode.EpisodeIndex > analysisItem.PrevResultsEpisode.Episode.EpisodeIndex))
                    {
                        analysisItem.PrevResultsEpisode = eei;
                    }

                    iterPastEquityInfos.MoveNext();
                }

                var iterFutureEquityInfos = FutureEpisodeEquityInfos.GetEnumerator();
                iterFutureEquityInfos.MoveNext();
                while (iterFutureEquityInfos.Current != null)
                {
                    while (iterFutureEquityInfos.Current != null
                           && iterFutureEquityInfos.Current.EquityId != analysisItem.EpisodeEquityInfo.EquityId)
                        iterFutureEquityInfos.MoveNext();

                    EpisodeEquityInfo eei = iterFutureEquityInfos.Current;
                    if (eei == null)
                        break;

                    if (eei.Dividend.HasValue
                        && (analysisItem.NextDividendEpisode == null || eei.Episode.EpisodeIndex < analysisItem.NextDividendEpisode.Episode.EpisodeIndex))
                    {
                        analysisItem.NextDividendEpisode = eei;
                    }

                    iterFutureEquityInfos.MoveNext();
                }
            }
            IndexItems = items.OrderBy(item => item.EpisodeEquityInfo.Equity.Industry.Name)
                               .ThenBy(item => item.EpisodeEquityInfo.Equity.Name)
                               .ToList();

            SortedYield = items.Where(items => items.DividendYield != null)
                               .OrderByDescending(item => item.DividendYield.HasValue)
                               .ThenByDescending(items => items.DividendYield)
                               .ToList();
        }

        public async Task FetchPortfolio()
        {
            PortfolioGameHistory PortfolioGameHistory = await PortfolioHistories(ActiveGame, null, ActiveEpisodeIndex);
            PortfolioTeamHistory = PortfolioGameHistory.TeamHistories.Find(id => id.Team.Id == ActiveTeam.Id);
            Portfolio = PortfolioTeamHistory.Items.LastOrDefault();

            PortfolioGameHistory.TeamHistories.Sort((th1, th2) => (th1.Team == ActiveTeam) != (th2.Team == ActiveTeam)
                                                                    ? (th1.Team == ActiveTeam ? -1 : 1)
                                                                    : th2.Items.Last().TotalValue.CompareTo(th1.Items.Last().TotalValue));
            CurrentRank = PortfolioGameHistory.TeamHistories.FindIndex(t => t.Team.Id == ActiveTeam.Id) + 1;
        }

        public async Task OnGetAsync()
        {
            await FindActiveGameAndTeam();

            if (User.Identity.IsAuthenticated && User.IsInRole("Student"))
            {
                HasJoinedTeam = Context.TeamMembers.Where(tm => tm.UserId == CurrentUser.Id).FirstOrDefault() != null;

                if (HasJoinedTeam && ActiveGame != null)
                {
                    await FetchPortfolio();
                    await FetchMarketAnalysis();
                }
            }
        }
    }
}
