using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using StockGame.Data;
using StockGame.Models;
using StockGame.Models.ViewModels;

namespace StockGame.Pages
{
    public class IndexModel : StockGame.Pages.StockPageModel
    {
        public IndexModel(UserManager<ApplicationUser> userManager, StockGameContext context) : base(userManager, context)
        {
        }

        public bool HasJoinedTeam { get; set; }
        public IList<AnalysisIndexItem> IndexItems { get; set; }
        public PortfolioHistoryItem Portfolio { get; set; }

        public async Task OnGetAsync()
        {
            await FindActiveGameAndTeam();
            //HasJoinedTeam = Context.TeamMembers.Where(tm => tm.UserId == CurrentUser.Id).FirstOrDefault() != null;

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
                                Trend = (iterPastEquityInfos.Current == null || iterPastEquityInfos.Current.EquityId != eei.EquityId || iterPastEquityInfos.Current.Price == eei.Price)
                                        ? AnalysisIndexItem.PriceTrend.Unchanged
                                        : (iterPastEquityInfos.Current.Price < eei.Price ? AnalysisIndexItem.PriceTrend.Up : AnalysisIndexItem.PriceTrend.Down)
                            });
                        }

                        iterPastEquityInfos.MoveNext();
                        iterPastEquityInfos.MoveNext();
                    }
                    IndexItems = items.OrderBy(item => item.EpisodeEquityInfo.Equity.Industry.Name).ThenBy(item => item.EpisodeEquityInfo.Equity.Name).ToList();
                }
                
            }
        }

        public async Task FetchPortfolio()
        {
            await FindActiveGameAndTeam();

            if (User.Identity.IsAuthenticated && User.IsInRole("Student"))
            {
                PortfolioGameHistory pgh = await PortfolioHistories(ActiveGame, Enumerable.Repeat(ActiveTeam, 1), ActiveEpisodeIndex);

                PortfolioTeamHistory pth = pgh.TeamHistories[0];

                Portfolio = pth.Items.LastOrDefault();
            }   
        }
    }
}
