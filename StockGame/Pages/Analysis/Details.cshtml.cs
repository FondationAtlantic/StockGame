using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
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

namespace StockGame.Pages.Analysis
{
    [Authorize(Roles = "Student,Admin")]
    public class DetailsModel : StockGame.Pages.StockPageModel
    {
        public DetailsModel(UserManager<ApplicationUser> userManager, StockGameContext context) : base(userManager, context)
        {
        }

        public AnalysisDetailsItem DetailsItem { get;set; }
        public IList<PerShareChartItem> PerShareChartItems { get; set; }
        public StatementInfo ResultsInfo { get; set; }

        public async Task<IActionResult> OnGetAsync(int? id)
        {
            if (id == null)
                return NotFound();

            await FindActiveGameAndTeam();

            await FindActiveEpisodeEquityInfos();

            EpisodeEquityInfo eei = ActiveEpisodeEquityInfos.SingleOrDefault(m => m.Id == id);

            if (eei == null)
                return NotFound();

            DetailsItem = new AnalysisDetailsItem { EpisodeEquityInfo = eei };
            PerShareChartItems = new List<PerShareChartItem>();
            foreach(EpisodeEquityInfo item in ActiveAndPastEpisodeEquityInfos.Where(e => e.EquityId == eei.EquityId))
            {
                if (   item.Dividend.HasValue
                    && item.Dividend.Value != 0.0f
                    && item.Episode.EpisodeIndex < ActiveEpisodeIndex
                    && (DetailsItem.PrevDividendEpisode == null || item.Episode.EpisodeIndex > DetailsItem.PrevDividendEpisode.Episode.EpisodeIndex))
                {
                    DetailsItem.PrevDividendEpisode = item;
                }

                if (   item.AnnounceFinancialResults
                    && item.Episode.EpisodeIndex < ActiveEpisodeIndex
                    && (DetailsItem.PrevResultsEpisode == null || item.Episode.EpisodeIndex > DetailsItem.PrevResultsEpisode.Episode.EpisodeIndex))
                {
                    DetailsItem.PrevResultsEpisode = item;
                }

                PerShareChartItems.Add(new PerShareChartItem
                {
                    EpisodeName = item.Episode.Name,
                    Earnings = item.EarningPerShare,
                    Dividend = item.Dividend,
                    Price = item.Price
                });
            }

            foreach (EpisodeEquityInfo item in FutureEpisodeEquityInfos.Where(e => e.EquityId == eei.EquityId))
            {
                if (   item.Dividend.HasValue
                    && (DetailsItem.NextDividendEpisode == null || item.Episode.EpisodeIndex < DetailsItem.NextDividendEpisode.Episode.EpisodeIndex))
                {
                    DetailsItem.NextDividendEpisode = item;
                }

                if (   item.AnnounceFinancialResults
                    && (DetailsItem.NextResultsEpisode == null || item.Episode.EpisodeIndex < DetailsItem.NextResultsEpisode.Episode.EpisodeIndex))
                {
                    DetailsItem.NextResultsEpisode = item;
                }
            }

            if (eei.AnnounceFinancialResults)
                ResultsInfo = new StatementInfo(eei);
            else
                ResultsInfo = new StatementInfo(DetailsItem.PrevResultsEpisode);

            return Page();
        }
    }
}
