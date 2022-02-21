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

namespace StockGame.Pages.Analysis
{
    [Authorize(Roles = "Student,Admin")]
    public class IndexModel : StockGame.Pages.StockPageModel
    {
        public IndexModel(UserManager<ApplicationUser> userManager, StockGameContext context) : base(userManager, context)
        {
            _context = context;
            _userManager = userManager;
        }

        public IList<AnalysisIndexItem> IndexItems { get;set; }

        public async Task OnGetAsync()
        {
            await FindActiveGameAndTeam();

            await FindActiveEpisodeEquityInfos();

            var items = new List<AnalysisIndexItem>();

            var iterPastEquityInfos = ActiveAndPastEpisodeEquityInfos.GetEnumerator();
            iterPastEquityInfos.MoveNext();
            foreach (EpisodeEquityInfo eei in ActiveEpisodeEquityInfos)
            {
                while (    iterPastEquityInfos.Current != null
                        && iterPastEquityInfos.Current.EquityId == eei.EquityId
                        && iterPastEquityInfos.Current.Episode.EpisodeIndex != ActiveEpisodeIndex - 1)
                {
                    iterPastEquityInfos.MoveNext();
                }

                if(eei.Visible)
                {
                    var query = (
                        from transactions in _context.Transactions
                        join tradingSessions in _context.TradingSessions
                            on transactions.TradingSessionId equals tradingSessions.Id
                        join episodes in _context.Episodes
                            on tradingSessions.EpisodeId equals episodes.Id
                        join episodeEquityInfo in _context.EpisodeEquityInfos
                            on new { transactions.EquityId, tradingSessions.EpisodeId }
                                equals new { episodeEquityInfo.EquityId, episodeEquityInfo.EpisodeId }
                        where transactions.TeamMemberId == CurrentUser.ActiveTeamMemberId
                        where transactions.EquityId == eei.EquityId
                        select new {
                            transactionValue = transactions.Amount * episodeEquityInfo.Price
                        }
                    ).Sum(t => t.transactionValue);
                    
                    items.Add(new AnalysisIndexItem
                    {
                        EpisodeEquityInfo = eei,
                        Trend = (iterPastEquityInfos.Current == null || iterPastEquityInfos.Current.EquityId != eei.EquityId || iterPastEquityInfos.Current.Price == eei.Price)
                                   ? AnalysisIndexItem.PriceTrend.Unchanged
                                   : (iterPastEquityInfos.Current.Price < eei.Price ? AnalysisIndexItem.PriceTrend.Up : AnalysisIndexItem.PriceTrend.Down),
                        PriceVariationRatio = ((decimal)(eei.Price - iterPastEquityInfos.Current.Price) / (decimal)(eei.Price)) * 100,
                        
                        
                        
                        // UserProfitLoss = (decimal) _context.Transactions
                        //     .Join(_context.EpisodeEquityInfos,
                        //         t => t.EquityId,
                        //         eei => eei.EquityId,
                        //         (t, eei) =>  new{})
                        //     .Where(t => t.TeamMemberId == CurrentUser.ActiveTeamMemberId)
                        //     .Where(t => t.EquityId == eei.EquityId)
                        //     .Select(t => t.Amount * t.TradingSession.Episode.EpisodeEquityInfos
                        //                                                     .Where(epsei => epsei.EquityId == eei.EquityId)
                        //                                                     .Select(eei => new { eei.Price })
                        //                                                     .SingleOrDefault()
                        //                                                     .Price)
                        //     .Sum()
                    });
                }

                iterPastEquityInfos.MoveNext();
                iterPastEquityInfos.MoveNext();
            }

            //dividend
            //TODO YLA duplicate code
            foreach(AnalysisIndexItem analysisItem in items)
            {
                iterPastEquityInfos = ActiveAndPastEpisodeEquityInfos.GetEnumerator();
                iterPastEquityInfos.MoveNext();
                while(iterPastEquityInfos.Current != null)
                {
                    while(   iterPastEquityInfos.Current != null 
                          && iterPastEquityInfos.Current.EquityId != analysisItem.EpisodeEquityInfo.EquityId)
                        iterPastEquityInfos.MoveNext();

                    EpisodeEquityInfo eei = iterPastEquityInfos.Current;
                    if (eei == null)
                        break;

                    if (   eei.Dividend.HasValue
                        && eei.Dividend.Value != 0.0f
                        && eei.Episode.EpisodeIndex < ActiveEpisodeIndex
                        && (analysisItem.PrevDividendEpisode == null || eei.Episode.EpisodeIndex > analysisItem.PrevDividendEpisode.Episode.EpisodeIndex))
                    {
                        analysisItem.PrevDividendEpisode = eei;
                    }

                    if (   eei.AnnounceFinancialResults
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
                    while (   iterFutureEquityInfos.Current != null
                           && iterFutureEquityInfos.Current.EquityId != analysisItem.EpisodeEquityInfo.EquityId)
                        iterFutureEquityInfos.MoveNext();

                    EpisodeEquityInfo eei = iterFutureEquityInfos.Current;
                    if (eei == null)
                        break;

                    if (   eei.Dividend.HasValue
                        && (analysisItem.NextDividendEpisode == null || eei.Episode.EpisodeIndex < analysisItem.NextDividendEpisode.Episode.EpisodeIndex))
                    {
                        analysisItem.NextDividendEpisode = eei;
                    }

                    iterFutureEquityInfos.MoveNext();
                }
            }

            IndexItems = items.OrderBy(item => item.EpisodeEquityInfo.Equity.Industry.Name).ThenBy(item => item.EpisodeEquityInfo.Equity.Name).ToList();
        }
    }
}
