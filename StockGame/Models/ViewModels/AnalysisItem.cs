using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace StockGame.Models.ViewModels
{
    public class AnalysisItem
    {
        public EpisodeEquityInfo EpisodeEquityInfo { get; set; }
        public EpisodeEquityInfo PrevDividendEpisode { get; set; }
        public EpisodeEquityInfo NextDividendEpisode { get; set; }
        public EpisodeEquityInfo PrevResultsEpisode { get; set; }

        public EpisodeEquityInfo LastKnownResults
        {
            get
            {
                return EpisodeEquityInfo.AnnounceFinancialResults ? EpisodeEquityInfo : PrevResultsEpisode;
            }
        }

        [Display(Name = "Bénéfice par action"), DataType(DataType.Currency)]
        public float? LastKnownEarningsPerShare
        {
            get
            {
                return LastKnownResults?.EarningPerShare;
            }
        }

        public float? LastKnownDividend
        {
            get
            {
                return EpisodeEquityInfo.Dividend.HasValue ? EpisodeEquityInfo.Dividend : PrevDividendEpisode?.Dividend;
            }
        }

        public bool HasNextKnownDividend
        {
            get
            {
                return EpisodeEquityInfo.Dividend.HasValue 
                            ? EpisodeEquityInfo.Dividend.Value != 0.0f 
                            : NextDividendEpisode != null && NextDividendEpisode.Dividend.Value != 0.0f;
            }
        }

        [Display(Name = "Rendement Dividende")]
        [DisplayFormat(DataFormatString = "{0:0.00} %")]
        public float? DividendYield
        {
            get
            {
                float? dividend = LastKnownDividend;
                if (!dividend.HasValue || dividend == 0.0f)
                    return null;

                float multiplier = 0.0f;
                switch(EpisodeEquityInfo.Equity.DividendFrequency)
                {
                    case Equity.DividendFrequencies.Monthly:
                        multiplier = 12.0f;
                        break;
                    case Equity.DividendFrequencies.Trimestrial:
                        multiplier = 4.0f;
                        break;
                    case Equity.DividendFrequencies.Semestrial:
                        multiplier = 2.0f;
                        break;
                    case Equity.DividendFrequencies.Annual:
                    default:
                        multiplier = 1.0f;
                        break;
                }
                return (dividend.GetValueOrDefault(0.0f) * multiplier/ EpisodeEquityInfo.Price) * 100.0f;
            }
        }

        [Display(Name = "C/B")]
        [DisplayFormat(DataFormatString = "{0:0.0}")]
        public float? PriceEarningsRatio
        {
            get
            {
                return EpisodeEquityInfo.Price / LastKnownEarningsPerShare;
            }
        }

        [Display(Name = "Levier")]
        [DisplayFormat(DataFormatString = "{0:###} %")]
        public float? LeverageRatio
        {
            get
            {
                float? debt = LastKnownResults?.LongTermDebt;
                if (debt == null || debt == 0.0f)
                    return null;

                return debt / LastKnownResults?.TotalAssets * 100.0f;
            }
        }
    }
}
