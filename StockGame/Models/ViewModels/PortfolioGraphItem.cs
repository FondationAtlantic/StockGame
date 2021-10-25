using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace StockGame.Models.ViewModels
{
    public class PortfolioGraphItem
    {
        public string EpisodeName { get; set; }
        [DataType(DataType.Currency)]
        public float TotalValue { get; set; }
    }
}
