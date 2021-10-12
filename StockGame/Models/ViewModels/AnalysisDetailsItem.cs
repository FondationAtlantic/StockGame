using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace StockGame.Models.ViewModels
{
    public class AnalysisDetailsItem : AnalysisItem
    {
        public EpisodeEquityInfo NextResultsEpisode { get; set; }
    }
}
