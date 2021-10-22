using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
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

        [Display(Name = "Valeur"), DataType(DataType.Currency)]
        public float GainsLosses { get; set; }
        [DisplayFormat(DataFormatString = "{0:0.00} %")]
        public float GainsLossesPercentage { get; set; }
        public bool HasJoinedTeam { get; set; }
        public AnalysisIndexItem HighestYield { get; set; }
        public AnalysisIndexItem LowestYield { get; set; }
        public IList<AnalysisIndexItem> IndexItems { get; set; }
        public PortfolioHistoryItem Portfolio { get; set; }

        public async Task FetchPortfolio()
        {
            await FindActiveGameAndTeam();

            PortfolioGameHistory pgh = await PortfolioHistories(ActiveGame, Enumerable.Repeat(ActiveTeam, 1), ActiveEpisodeIndex);

            PortfolioTeamHistory pth = pgh.TeamHistories[0];

            Portfolio = pth.Items.LastOrDefault();
        }

        public async Task OnGetAsync()
        {
            await FindActiveGameAndTeam();

            if (User.Identity.IsAuthenticated && User.IsInRole("Student"))
            {
                HasJoinedTeam = Context.TeamMembers.Where(tm => tm.UserId == CurrentUser.Id).FirstOrDefault() != null;

                if (HasJoinedTeam)
                {
                    await FetchPortfolio();
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
                    HighestYield = items.OrderByDescending(item => item.DividendYield.HasValue).ThenByDescending(items => items.DividendYield).First();
                    LowestYield = items.OrderByDescending(item => item.DividendYield.HasValue).ThenBy(item => item.DividendYield).First();

                    GainsLosses = Portfolio.TotalValue - ActiveGame.InitialCash;
                    GainsLossesPercentage = ((GainsLosses / ActiveGame.InitialCash) * 100);
                }
            }
        }
    }
}
