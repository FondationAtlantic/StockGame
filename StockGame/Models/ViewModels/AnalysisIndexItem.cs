using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace StockGame.Models.ViewModels
{
    public class AnalysisIndexItem : AnalysisItem
    {
        public enum PriceTrend
        {
            Up,
            Down,
            Unchanged
        };

        public PriceTrend Trend { get; set; }
    }
}
