using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace StockGame.Models.ViewModels
{
    public class SelectableEquity
    {
        public Equity Equity { get; set; }
        public bool Selected { get; set; } = true;
    }
}
