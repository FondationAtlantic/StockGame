using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace StockGame.Models.ViewModels
{
    public class PerShareChartItem
    {
        public string EpisodeName { get; set; }
        public float Price { get; set; }
        public float? Earnings { get; set; }
        public float? Dividend { get; set; }
    }
}
