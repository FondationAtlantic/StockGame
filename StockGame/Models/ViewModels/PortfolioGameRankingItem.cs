using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace StockGame.Models.ViewModels
{
    public class PortfolioGameRankingItem
    {
        public enum ValueTrend
        {
            Up,
            Down,
            Unchanged
        };

        public int Rank { get; set; }
        public Team Team { get; set; }
        [DataType(DataType.Currency)]
        public float InitialValue { get; set; }
        [DataType(DataType.Currency)]
        public float TotalValue { get; set; }
        [DisplayFormat(DataFormatString = "{0:0.0} %")]
        public float? TotalPctGain { get { return 100.0f * (TotalValue / InitialValue - 1.0f); } }
        [DataType(DataType.Currency)]
        public float? Gain { get; set; }
        [DisplayFormat(DataFormatString = "{0:0.0} %")]
        public float? PctGain { get { return 100.0f * Gain / (TotalValue-Gain); } }
        public ValueTrend Trend { get { return Gain < 0.0f ? ValueTrend.Down : (Gain > 0.0f ? ValueTrend.Up : ValueTrend.Unchanged); } }
    }
}
